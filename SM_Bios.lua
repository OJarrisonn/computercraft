local servers = {}
local routers = {}
function registerServer(name, protocol)
	servers[name] = protocol
	end

function registerRouter(name, protocol)
	routers[name] = protocol
	end
	
function getServerProtocol(name)
	return servers[name]
	end
	
function getRouterProtocol(name)
	return routers[name]
	end

function getServers()
	return textutils.serialize(servers)
	end
	
function getRouters()
	return textutils.serialize(routers)
	end
	

