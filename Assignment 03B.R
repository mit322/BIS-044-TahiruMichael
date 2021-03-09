results <- read.csv("PRESIDENT_precinct_primary.csv")
Biden <- 0
Trump <- 0
n <- length(results$precinct)
for (i in 1:n)
{
  if (results$candidate[i] == "JOSEPH R BIDEN")
    Biden = Biden + results$votes[i]
  else if (results$candidate[i] == "DONALD J TRUMP")
    Trump = Trump + results$votes[i]
}
cat("votesfortrump",Trump)
cat("votesforbiden",Biden)