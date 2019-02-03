--{ Maded by: GamerJhPlays               }--
--{ Graphic api for computercraft 1.80   }--
--{ Free to use                          }--

function setScreen(side)                             --Sets default screen
    screen = peripheral.wrap(side)
    end

function setPixelSize(size)                          --Sets size of screen pixels and clear screen
	screen.setTextScale(size)
	clearScreen()
	end

function defaultBackground(c)                        --Sets default background color for use in clearScreen()
    dfbg = c
    end

function setBackgroundColor(c)                       --Changes background color
	screen.setBackgroundColor(c)
	end

function clearScreen()                               --Clears screen and set to default background color
    screen.setBackgroundColor(dfbg)
    screen.clear()
    end
	
function getSize()                                   --Returns size of screen
	   size = screen.getSize()
	   return size
    end
    
function testScreen()                                --Tests screen with every colors
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

function drawRect(x1,y1,x2,y2,c)                     --Draw a rectangle in screen (x2 needs be greater then x1 and y2 needs be greater then y1
    for x = x1, x2 do
        for y = y1, y2 do
            screen.setCursorPos(x,y)
            screen.setBackgroundColor(c)
            screen.write(' ')
            screen.setBackgroundColor(dfbg)
            end
        end
    end

function drawPixel(x,y,c)                            --Draw a single pixel in the specified coodinates
    screen.setCursorPos(x,y)
    screen.setBackgroundColor(c)
    screen.write(' ')
    screen.setBackgroundColor(dfbg)
    end
	
function write(x,y,c,msg)                            --Write a message on screen
	   screen.setTextColor(c)
  	 screen.setCursorPos(x,y)
	   screen.write(msg)
    end
    
function getTouch()                                  --Gets touched point in screen
    e, s, xPos, yPos = os.pullEvent('monitor_touch')
    return xPos, yPos
    end
	
function turnoff()                                   --Clear the screen and end the program
	clearScreen()
	screen.setCursorPos(1,1)
	screen.setTextColor(colors.green)
	screen.write('Good bye...')
	sleep(0.5)
	clearScreen()
	exit()
	end

