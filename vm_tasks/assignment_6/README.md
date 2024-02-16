# Assignment 6

Write a bash script ` script.sh ` to scrape a weather forecast website.

The script takes 3 command line arguments

* argument 1 
    -  ` city-name `.
  
* argument 2 
    - One of ` min ` and ` max ` refers to minimum temperature and maximum temperature respectively.

* argument 3 
    - One of ` mode ` and ` average `.
    - If you get more than one mode, your script should return the smallest mode value.

The output
* A number
   - Round of your answer to two decimal places.
   - i.e if the actual answer is `15.666666` , your answer should be `15.67`

Url of weather forecast website : [http://weather.local](http://weather.local)

Interpretation :

```
./script.sh chennai min average
26
```

This returns the ` average ` of the ` min `imum temperature of city ` chennai ` on all days given in forecast.
