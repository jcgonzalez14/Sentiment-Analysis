# Generate an access token to obtain your Twitter Access Token and Access Token Secret.
consumer_key    <- "BkiIHNzE2BvQhbRYVpkbZgGTA"
consumer_secret <-"zHAcSayUgKlfkksuf57oB0CMqFwDtgGI4TkDurXkEgNjHsqpnx"
access_token  <- "991503034650976257-W3MQKW99A0ec2pcm3kBw6ddXBIwkji5"
access_secret <- "bjhEqauHjM2gLPn7qUJvzThTWUW0vN3XVR8AkxsbphbD7"
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)     # Setup Twitter open authorization. Select 2.







San Antonio
```{r, eval=FALSE}
avloc <- availableTrendLocations()
head(avloc)

# avloc contains information on the name of the location, the country, and its respective woeid (where on earth ID). 
# woeid is needed to get the trending topics of a chosen location at a given hour. 

avloc[avloc$name == "San Antonio",]

SA_ID <- avloc[avloc$name == "San Antonio",3]     # San Antonio's woeid is 2487796. 
SA_trends <- getTrends(woeid=SA_ID)     # Get trending topics in San Antonio.
head(SA_trends)
``` 

Houston
```{r, eval=FALSE}
HoustonID <- avloc[avloc$name == "Houston",3]
H_trends <- getTrends(woeid=HoustonID)     # Get trending topics in Houston.
head(H_trends)
``` 

Austin
```{r, eval=FALSE}
AustinID <- avloc[avloc$name == "Austin",3]
A_trends <- getTrends(woeid=AustinID)     # Get trending topics in Austin.
head(A_trends)
``` 

Dallas
```{r, eval=FALSE}
DallasID <- avloc[avloc$name == "Dallas-Ft. Worth",3] 
DFW_trends <- getTrends(woeid=DallasID)     # Get trending topics in Dallas-Ft.Worth.
head(DFW_trends)
``` 


#Arsenal
```{r, eval=FALSE}
## Twitter Sentiment Analysis
Emery1 <- searchTwitter("Emery", n=17000, lang="en", since = "2018-05-20", until = "2018-05-21")     # Pull Twitter feed for before Emery appointment
Emery1 <- twListToDF(Emery1)     # Convert into a data frame for analysis.
``` 

```{r, eval=FALSE}
## Twitter Sentiment Analysis
Emery2 <- searchTwitter("Emery", n=17000, lang="en", since = "2018-05-22", until = "2018-05-23")     # Pull Twitter feed for after Emery appointment.
Emery2 <- twListToDF(Emery2)     # Convert into a data frame for analysis.
``` 
