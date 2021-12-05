-- study 1
-- code exercise
-- hello

engine.name = 'PolyPerc'

function init()
  -- initialization
  -- variables:
  engHz = 55
  engCutoff = 500
  engRelease = 0.5
  engPw = 50
  
  -- setup
  engine.hz(engHz)
  engine.release(engRelease)
  engine.cutoff(engCutoff)
  print("the end and the beginning they are the same.")
end

function key(n,z)
   -- key actions: n = number, z = state
  print("key " .. n .. " == " .. z)
  if n==2 and z==1 then
    engine.hz(engHz * math.random(1, 10))
  end
  if n==3 and z==1 then
    engine.pw(math.random())
  end
end

function enc(n,d)
  -- encoder actions: n = number, d = delta
  print("encoder " .. n .. " == " .. d)
  if n== 2 then
    engRelease = engRelease + d/10
    engine.release(engRelease)
    end
  if n==3 then
    engCutoff = engCutoff + d*10
    engine.cutoff(engCutoff)
end
end

function redraw()
  -- screen redraw
  screen.clear()
  screen.move(0,10)
  screen.text("hello norns")
  screen.update()
  screen.move(0, 20)
  screen.text("it's lovely to be here")
  screen.update()
  screen.move(0, 30)
  screen.text("k2: generate random note")
  screen.update()
  screen.move(0, 40)
  screen.text("k3: randomize PulseWidth")
  screen.update()
  screen.move(0, 50)
  screen.text("e2: adjust release")
  screen.update()
  screen.move(0, 60)
  screen.text("e3: adjust cutoff")
  screen.update()

  
--   for i = 0, 1000,  5 do
--         screen.move(i,30 + i)
--   screen.text("it's lovely to be here")
--   screen.update()
  
-- end
  
end

function cleanup()
  -- deinitialization
end