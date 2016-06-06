swt(t) = round(sin(2pi*1000*t) + 0.5*(sin(2pi*2000*t+(3pi/4))),6)

function wave(fs,num,equ)
  step = 1/fs
  return [equ(t) for t=0:step:step*(num-1)]
end

x = wave(8000,8, swt)


function dft(x)
  X = []
  num = length(x)
  s = num-1
  for m in 0:s
    sumr = 0
    sumi = 0
    for n in 0:s
      sumr += x[n+1] * cos(2pi * n * m / num)
      sumi += x[n+1] * sin(2pi * n * m / num) * -1
    end
    push!(X, [round(sumr,3), round(sumi,3)])
  end
  return X
end

X = dft(x)

for p in X
  println(p)
end
