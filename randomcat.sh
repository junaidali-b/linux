clear
echo "Here's a fat kitty for you!"
curl -s https://api.thecatapi.com/v1/images/search | jq -r '.[0].url' | xargs ascii-image-converter -bC --dither
