likelihood = function(n,y,theta) {
  return (theta^y*(1-theta)^(n-y))
}
theta = seq(from=0.01, to=0.99, by=0.01)
plot(theta,likelihood(400,72,theta), type='l')
abline (v=.18)

loglike = function(n,y,theta){
  return(y*log(theta)+(n-y)*log(1-theta))
}
plot(theta,loglike(400,72,theta), type='l')
abline (v=.18)
