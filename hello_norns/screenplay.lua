-- --------------------------------
-- "Screenplay"                   
-- : experimenting with animation 
-- - by fr0nk                     
-- --------------------------------
-- K2: clear screen
-- K3: random pick a character


function init() 
  myChar = 65
  clock.run(function()  -- redraw the screen and grid at 15fps
    while true do
      clock.sleep(1/5)
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
    myChar = math.random(1, 127)
    
  end
  
end

function redraw()
  
    screen.move(math.random(0, 128), math.random(0, 64))
    screen.text(string.char(myChar))
    screen.update()

end


