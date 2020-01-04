--MAIN VARS
CF = "cloudflare.cc"
local UNIT = {}

local function getModem()-- get one connected modem
    modem = nil
    peripherals = peripheral.getNames()
    for p = 1, #peripherals do
        if peripheral.getType(peripherals[p]) == "modem" then
            modem = peripherals[p]
            break
        end
    end
    return modem
end

local function sendRequest(from, request)-- sends a request and wait response
    rednet.broadcast({{UNIT["name"], request}}, from)
    id, message, protocol = rednet.receive(UNIT["name"])
    return message
end

function setupUnit(name, cType)-- sets unit name and type
    UNIT["name"] = name
    UNIT["type"] = cType
	UNIT["id"] = nil
	UNIT["state"] = false
end

function connectToCloudflare()-- send a connect request to the cc cloudflare
    if getModem() ~= nil and UNIT["state"] == false then
        rednet.open(getModem())
        rednet.host(UNIT["name"], UNIT["name"])
        response = sendRequest(CF, {"join", UNIT["type"]})-- sends the connection request
        if response[1][1] == true then
			UNIT["id"] = response[1][2]
			UNIT["state"] = true
            print("Successful connected to the cloudflare with id: "..UNIT["id"]..", name: "..UNIT["name"])
        else
            error(response[1][1])
        end
    else
        error("No connected modem or the unit is already connected to the cloudflare")
    end
end

function disconnectFromCloudflare()-- send a disconnect request to the cloudflare
	if UNIT["state"] == true then
		response = sendRequest(CF, {"out", UNIT["type"]})-- sends the disconnect request
		if response[1][1] == true then
			UNIT["id"] = nil
			UNIT["state"] = false
		else
			error(response[1][1])
		end
	end
end
