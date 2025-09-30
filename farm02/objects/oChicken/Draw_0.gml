draw_self()
if hspeed>=0
  image_xscale=-1
else
  image_xscale=1

draw_set_color(c_white)

draw_text(x,y,"Id: " + string(id) )

draw_text(x,y+20,"State: " + string(state) )

draw_text(x,y+35,"Gender: " + string(gender) )

draw_text(x,y+50,"Age: " + string(age) )