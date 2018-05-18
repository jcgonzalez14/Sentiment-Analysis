library(twitteR)
setwd("~/Documents/website/Sentiment-Analysis")

# Generate an access token to obtain your Twitter Access Token and Access Token Secret.
consumer_key    <- "BkiIHNzE2BvQhbRYVpkbZgGTA"
consumer_secret <-"zHAcSayUgKlfkksuf57oB0CMqFwDtgGI4TkDurXkEgNjHsqpnx"
access_token  <- "991503034650976257-W3MQKW99A0ec2pcm3kBw6ddXBIwkji5"
access_secret <- "bjhEqauHjM2gLPn7qUJvzThTWUW0vN3XVR8AkxsbphbD7"
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)     # Setup Twitter open authorization. Select 2.

avloc <- availableTrendLocations()

SA_ID <- avloc[avloc$name == "San Antonio",3]     # San Antonio's woeid is 2487796. 
SA_trends <- getTrends(woeid=SA_ID)     # Get trending topics in San Antonio.
save(SA_trends, file="SA_trends_05122018.RData")

HoustonID <- avloc[avloc$name == "Houston",3]
H_trends <- getTrends(woeid=HoustonID)     # Get trending topics in Houston.
save(H_trends, file="H_trends_05122018.RData")

AustinID <- avloc[avloc$name == "Austin",3]
A_trends <- getTrends(woeid=AustinID)     # Get trending topics in Austin.
save(A_trends, file="A_trends_05122018.RData")

DallasID <- avloc[avloc$name == "Dallas-Ft. Worth",3] 
DFW_trends <- getTrends(woeid=DallasID)     # Get trending topics in Dallas-Ft.Worth.
save(DFW_trends, file="DFW_trends_05122018.RData")
