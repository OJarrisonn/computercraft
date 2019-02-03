function setSpeaker(side)
    speaker = peripheral.wrap(side)
    end

function setVolume(v)
    volume = v
    end

function playNote(inst, pinch)
    speaker.playNote(inst, volume, pinch)
    end

function playSound(sound)
	speaker.playSound(sound, volume)
	end
    
function soundMailNotify()
    playNote('flute', 9)
	playNote('chime', 10)
	sleep(0.15)
	playNote('flute', 14)
	playNote('chime', 15)
	sleep(0.2)
	playNote('flute', 7)
	playNote('chime', 8)
	sleep(0.1)
	playNote('flute', 19)
	playNote('chime', 20)
	end

function soundClick()
	playNote('bass', 8)
	playNote('xylophone', 3)
	end
