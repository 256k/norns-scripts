-- study 2
-- code exercise
-- procedural: nested tables

function init()
  
  -- to construct a 2 dimensional table:
  for row=1,4 do
    gridtab[row] = {}
    for column=1,4 do
      gridtab[row][column] = {}
    end
  end
  
  tab.print(gridtab)
  
  steps = { {1,0,0,0},
            {0,1,0,0},
            {0,0,1,0},
            {0,0,0,1} }
          
  for y=1,#steps do
    for x=1,#steps[y] do
      print(steps[y][x])
    end
  end
  
end



