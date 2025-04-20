;; NetLogo simulation for Jus Soli Resilience
globals [trust cycle]

to setup
  clear-all
  set trust 0.7
  set cycle 0
  create-turtles 20000 [
    setxy random-xcor random-ycor
    set color green
  ]
  reset-ticks
end

to go
  set cycle cycle + 1
  ask turtles [
    if color != red [
      if trust < 0.1 [ set color red ]
      if trust < 0.3 and color != yellow [ set color yellow ]
    ]
  ]
  if cycle mod 10 = 0 [ shock ]
  set trust trust - 0.01
  tick
end

to shock
  ask turtles with [color = green] [
    if random-float 1 < 0.2 [
      set trust trust - 0.05
    ]
  ]
end
