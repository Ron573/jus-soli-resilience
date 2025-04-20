; Sample NetLogo model
breed [citizens citizen]
to setup
  clear-all
  create-citizens 20000 [setxy random-xcor random-ycor]
end