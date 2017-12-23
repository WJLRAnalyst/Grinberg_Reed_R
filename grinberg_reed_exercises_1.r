#1
a <- c(1:20)

b <- c(20:1)

c <- c(1:20, 19:1)

tmp = c(4,6,3)

e <- rep(tmp,10)

f <- c(e,4)

g <- c(rep(4,10),rep(6,20),rep(3,30))

#2
base_seq <- seq(from=3.1,to=6,by=0.1)
exp_cos <- exp(base_seq)*cos(base_seq)

#3
a3_1 <- seq(from=3,to=36,by=3)
a3_2 <- seq(from=1,to=34,by=3)
a3_3 <- (0.1^a3_1)*(0.2^a3_2)

b3_1 <- 1:25
b3_2 <- (2^b3_1)/b3_1

#4
a4 <- sum((10:100)^3+4*((10:100)^2))

#5
paste("label",1:30,sep=" ")
paste("fn",1:30,sep="")

#6
set.seed(50)
xVec <- sample(0:999, 250, replace=TRUE)
yVec <- sample(0:999, 250, replace=TRUE)

x_slice <- xVec[1:249]
y_slice2 <- yVec[2:250]
a6 <- x_slice - y_slice2

x_slice2 <- xVec[2:250]
y_slice <- yVec[1:249]
b6 <- sin(y_slice)/cos(x_slice2)

c6_1 <- xVec[1:248]
c6_2 <- xVec[2:249]
c6_3 <- xVec[3:250]
c6_4 <- c6_1+2*c6_2-c6_3

d6_1 <- xVec[1:249]
d6_2 <- sum(exp(-d6_1 + 1)/(d6_1 + 10))

#7
bigs <- yVec[yVec>600]
is_big <- yVec>600 #a logical vector
big_indices <- which(is_big) #returns indices for which 'is_big' has value TRUE
yVec[big_indices] #returns elements of yVec that have the values in big_indices as indices
mean_x <- mean(xVec)
d_7 <- sqrt(abs(xVec-mean_x))
e_7 <- length(yVec[abs(yVec-max(yVec))<200])
f_7 <- length(xVec[xVec%%2==0])

###
# sort() returns vector with its elements in order
# rank() returns indices of the sort() vector, but in the order corresponding to original vector
# order() is defined so that vec[order(vec)] is in ascending order, ie returns indices of sort() vector IN ORDER
# "sort(yVec,decreasing = FALSE) == yVec[order(yVec)]" returns a TRUE vector
###

g_7 <- xVec[order(yVec)] 
h_7 <- yVec[c(T,F,F)]

#8
a_8 <- seq(2,38,2)
b_8 <- 1+sum(cumprod(a_8/(a_8+1)))

