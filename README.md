# Project Description 
This console application returns back the names/addresses of food trucks using the [City of San Francisco's Food Truck API](https://dev.socrata.com/foundry/data.sfgov.org/bbb8-hzi6) that are open today/now. 

# How to install and run this program 
1. Clone this repo
1. Install these gems 
   1. ```gem install 'dotenv'```
   1. ```gem install 'httparty'```
1. Get a token here: https://dev.socrata.com/docs/app-tokens.html 
1. Make your own .env file with the line ```SF_TOKEN=YOURSECRETKEYGOESHERE``` 
1. Run the program in your console by typing ```ruby open_food_trucks.rb```

# Things I'd Do Differently Next Time 
1. For a full-scale web application, I'd expect that customers would want to be able to query not ALL of the food trucks open now, but ones specific to their current location. Rather than just capturing the address of the truck in the API wrapper, I'd also capture the lat/long coordinates so that I could use a mapping API and display a list (or map) of trucks near the user's location. 
1. I would also provide the optional text (a description of the kind of food) so that customers could tell what kind of food the truck provides.  
1. "It's 5 o'clock somewhere!" This application currently only returns back valid data for customers in the Pacific Time Zone. It makes sense that this app would be only be useful for people who are in the immediate vicinity of the food trucks, but currently, it does not take into consideration time zones and will return back the trucks that are open "today" (AKA day of week where the user is currently located), and "now" (AKA, current time in user's location). 
1. I also would have liked to figure out if there were a way to construct my API request to only grab the food trucks that were open now - I saw that there was a way to construct a where clause using SoQL with comparisons (non-equals), but I decided to not dwell on that and instead waited to filter for "open now" after getting back the list of trucks for "today" from the API. 
