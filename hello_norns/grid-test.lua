function init() 
g = grid.connect()

-- g:led(x, y, level)
g:led(1,8,15)
g:led(8, 1, 5)
g:refresh()
end
