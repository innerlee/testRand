# question (a)
say("== (a)")
test_a()

# question (b)
say("== (b)")
m = 10000

tic()
D = [test_a(verbose=false) for i=1:m]
toc()

p = PyPlot.plt[:hist](D, 100);
q = plot(50:150, chi_square(50:150, 100)*m);

say("$(sum(D.>XI)/m) percent outside $XI.")
