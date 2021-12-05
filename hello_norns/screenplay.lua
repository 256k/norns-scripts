-- --------------------------------
-- "Screenplay"                   
-- : experimenting with animation 
-- - by fr0nk                     
-- --------------------------------
-- K2: clear screen
-- K3: random pick a character


function init() 
  myChar = 47
  charLight = 1
  clock.run(function()  -- redraw the screen and grid at 15fps
    while true do
      clock.sleep(1/15)
      redraw()
      -- gridredraw() -- for the grid
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
    -- charLight = math.random(1, 15)
    -- print(charLight)
  end
  
end

function enc(n,d)
  if n==3 then
    if charLight > 0 and charLight < 16 then
    charLight = charLight + d
    end
end
end

function redraw()
    screen.level(charLight)
    screen.move(math.random(0, 128), math.random(0, 64))
    screen.text(string.char(myChar))
    screen.update()

end


