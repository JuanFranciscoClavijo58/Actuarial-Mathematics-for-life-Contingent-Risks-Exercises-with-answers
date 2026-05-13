library(flexsurv)
B <- 0.0003
c <- 1.07
shape <- log(c)
rate <- B
ages <- c(20, 50, 80)
t <- seq(0, 90, by = 0.1)


#########################
# S_x(t) = S(x+t) / S(x)#
#########################
par(mfrow = c(1, 2))
plot(t, pgompertz(20 + t, shape, rate, lower.tail = FALSE) / pgompertz(20, shape, rate, lower.tail = FALSE),
     type = "l", col = "blue", lwd = 2, ylim = c(0, 1), 
     xlab = "Time (t)", ylab = "S_x(t)", main = "Survival ")

lines(t, pgompertz(50 + t, shape, rate, lower.tail = FALSE) / pgompertz(50, shape, rate, lower.tail = FALSE), col = "green", lwd = 2)
lines(t, pgompertz(80 + t, shape, rate, lower.tail = FALSE) / pgompertz(80, shape, rate, lower.tail = FALSE), col = "red", lwd = 2)

########################
#f_x(t) = f(x+t) / S(x)# 
########################
plot(t, dgompertz(20 + t, shape, rate) / pgompertz(20, shape, rate, lower.tail = FALSE),
     type = "l", col = "blue", lwd = 2, ylim = c(0, 0.07), 
     xlab = "Time (t)", ylab = "f_x(t)", main = "Densidad PDF ")

lines(t, dgompertz(50 + t, shape, rate) / pgompertz(50, shape, rate, lower.tail = FALSE), col = "green", lwd = 2)
lines(t, dgompertz(80 + t, shape, rate) / pgompertz(80, shape, rate, lower.tail = FALSE), col = "red", lwd = 2)







