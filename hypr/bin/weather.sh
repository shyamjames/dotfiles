#!/bin/bash
location="Mananthavady"
weather_data=$(curl -s "https://wttr.in/$location?format=3")
echo "$weather_data"
