--          "Screenplay"                   
-- experimenting with animation 
--            by fr0nk                 
-- --------------------------------
-- K2: clear screen
-- K3: random pick a character
-- E2: control speed
-- E3: control brightness

function init() 
  myChar = 47
  charLight = 1
  framerate = 15
  clock.run(function()  -- redraw the screen 
    while true do
      clock.sleep(1/framerate)
      redraw()
    end
  end)
end

function key(n,z)
  if n==2 and z==1 then
    screen.clear()  
    screen.update()
  end
  if n==3 and z==1 then
    myChar = math.random(33, 126)
  end
  
end

function enc(n,d)
  if n==3 then
    charLight = charLight + d
    if charLight < 0 then 
      charLight = 0 
      end
    if charLight > 15 then 
      charLight = 15 
      end
  end
  if n==2 then
    framerate = framerate + d
    if framerate < 1 then framerate = 1 end
    if framerate > 130 then framerate = 130 end
  end
end


function redraw()
    screen.level(charLight)
    screen.move(math.random(0, 128), math.random(0, 64))
    screen.text(string.char(myChar))
    screen.update()
end


