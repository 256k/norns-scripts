--          "Screenplay"                   
-- experimenting with animation 
--            by fr0nk                 
-- --------------------------------
-- K2: clear screen
-- K3: random pick a character
-- E2: control speed
-- E3: control brightness

function init() 
  params:add_number("screenToggle","screenToggle",0,1,1)
  g = grid.connect()
  myChar = 47
  charLight = 5
  framerate = 15
  clock.run(function()  -- redraw the screen and grid at 15fps
    while true do
      clock.sleep(1/framerate)
      print(params:get("screenToggle"))
      if params:get("screenToggle") > 0 then redraw() end
      gridredraw() -- for the grid
    end
  end)
end

function key(n,z)
  if n==1 and z==1 then
    local index = math.random(1, 10000);
    _norns.screen_export_png("/home/we/dust/screenshots/" .. index .. ".png")
    print("screenshot taken")
  end
  
  if n==2 and z==1 then
    screen.clear()  
    screen.update()
    g:all(0)

  end
  if n==3 and z==1 then
    myChar = math.random(33, 126)
  end
  
end

function enc(n,d)
  if n==3 then charLight = util.clamp(charLight + d, 0, 15) end
  if n==2 then framerate = util.clamp(framerate + d, 1, 130) end
end


function redraw()
    screen.level(charLight)
    screen.move(math.random(0, 128), math.random(0, 64))
    screen.text(string.char(myChar))
    screen.update()
end


function gridredraw()
  g:led(math.random(1,16), math.random(1,8), math.random(0,charLight))
  g:refresh()
end
