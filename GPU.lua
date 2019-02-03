function setScreen(side)
    screen = peripheral.wrap(side)
    end

function defaultBackground(c)
    dfbg = c
    end

function clearScreen()
    screen.setBackgroundColor(dfbg)
    screen.clear()
    end
	
function getSize()
	   size = screen.getSize()
	   return size
    end
    
function testScreen()
    screen.setBackgroundColor(colors.white)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.orange)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.magenta)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.lightBlue)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.yellow)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.lime)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.pink)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.gray)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.lightGray)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.cyan)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.purple)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.blue)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.brown)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.green)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.red)
    screen.clear()
	   sleep(1)
	   screen.setBackgroundColor(colors.black)
    screen.clear()
	   sleep(1)
    end

function drawRect(x1,y1,x2,y2,c)
    for x = x1, x2 do
        for y = y1, y2 do
            screen.setCursorPos(x,y)
            screen.setBackgroundColor(c)
            screen.write(' ')
            screen.setBackgroundColor(dfbg)
            end
        end
    end

function drawPixel(x,y,c)
    screen.setCursorPos(x,y)
    screen.setBackgroundColor(c)
    screen.write(' ')
    screen.setBackgroundColor(dfbg)
    end
	
function write(x,y,c,msg)
	   screen.setTextColor(c)
  	 screen.setCursorPos(x,y)
	   screen.write(msg)
    end
