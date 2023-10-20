#*
#* plotRandom_Hist.R
#* 
#* Author: Carter Pratt
#* 
#* Purpose:
#*      A function that will generate 
#*      a sample of normal observations 
#*      and plot the histogram of that data
#*      
#* Inputs:
#*      num_pts = # of observations to randomly generate
#*           mu = theoretical mean of the normal distribution
#*        sigma = theoretical standard deviation
#*         seed = on optional RNG seed value, defaults to NULL
#*    meanColor = the color of line corresponding to the sample mean line of the data
#*         
#* Output:
#*      A histogram of the generated data is drawn.
#*      A list with the following elements is also returned.
#*                Random_obs = A vector with 
#*                             randomly generated data
#*           Mean_Random_obs = Sample mean corresponding to the 
#*                             randomly generated data
#*             SD_Random_obs = Sample SD corresponding to the 
#*                             randomly generated data
#*      


plotRandomHist <- function(num_pts = 30, mu = 0, sigma = 1, meanColor = "royalblue", seed = NULL) {
  set.seed(seed)
  x <- rnorm(num_pts, mean = mu, sd = sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v = mean_x, lwd = 5, col = meanColor)
  
  #* In R, in a function, the output from the last line is automatically returned
  list(Random_obs = x, Mean_Random_obs = mean_x, SD_Random_obs = sd(x))
}

plotRandomHist(seed = 19)
plotRandomHist(seed = 19, num_pts = 1000000, meanColor = "forestgreen")

my_output <- plotRandomHist(seed = 5, num_pts = 200, mu = 70,
                            sigma = 2.5, meanColor = "goldenrod")

my_output$Mean_Random_obs
