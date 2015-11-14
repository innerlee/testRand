# question (a)
say("== (a)")
tic()
test_a()
toc()

# question (b)
say("== (b)")
m = 100000

tic()
D = [test_a(verbose=false) for i=1:m]
toc()
say("$(sum(D.>XI100)/m) percent outside $XI100.")

figure()
(range, counts) = hist(D, 0:200)
p = bar(0:199, counts)
q = plot(50:150, chi_square(50:150, 100)*m);

# question (c)
say("== (c)")
tic()
test_c()
toc()

# question (d)
say("== (d)")
m = 100000

tic()
D = [test_c(verbose=false) for i=1:m]
toc()
say("$(sum(D.>XI80)/m) percent outside $XI80.")

figure()
(range, counts) = hist(D, 0:200)
p = bar(0:199, counts)
q = plot(50:150, chi_square(50:150, 80)*m);
