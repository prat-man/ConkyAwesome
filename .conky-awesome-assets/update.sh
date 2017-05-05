[[ $(find ~/.cache/weather-t.xml -type f -size +4k 2>/dev/null) ]] && cp ~/.cache/weather-t.xml ~/.cache/weather.xml
curl -s "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20%3D%20$1%20and%20u=%27c%27&format=xml&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys" -o ~/.cache/weather-t.xml
