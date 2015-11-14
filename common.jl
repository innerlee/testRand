using PyPlot

# debug
function say(sth)
  println(sth)
end

XI = 124.342

function test_a(;verbose=true)
  n = 10000
  bins = 101

  U = rand(n)

  (range, counts) = hist(U, bins)

  D = sum((counts - n/bins).^2/(n/bins))

  verbose ? say("n=$n, bins=$bins, D=$(round(D*1000)/1000) $(D>XI?"> $XI, Reject H0, bad random":"< $XI, Accept H0, good random")") : nothing

  D
end

# dist
function chi_square(x, nu)
  x.^(nu/2-1).*exp(-x/2)./(2^(nu/2)*gamma(nu/2))
end
