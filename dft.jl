
swt(t) = sin(2pi*1000*t) + 0.5*(sin(2pi*2000*t+(3pi/4)))

for t in 0:8
  print(swt(t))
  print(", ")
end
