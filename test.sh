echo "Enter an hour of the day (in 24-hour format, e.g., 00:00 to 23:59): "
read hour

# Validate input format (24-hour)
regex='^([01][0-9]|2[0-3]):([0-5][0-9])$'
if ! [[ $hour =~ $regex ]]; then
    echo "Invalid input. Please enter an hour in 24-hour format (e.g., 00:00 to 23:59)."
    exit 1
fi

# Categorize the time of day based on the hour entered
if [[ "$hour" > "00:00" && "$hour" < "06:01" ]]; then
    echo "Time of day for $hour is: Early Morning"
elif [[ "$hour" > "06:00" && "$hour" < "12:01" ]]; then
    echo "Time of day for $hour is: Morning"
elif [[ "$hour" > "12:00" && "$hour" < "18:01" ]]; then
    echo "Time of day for $hour is: Afternoon"
elif [[ "$hour" > "18:00" && "$hour" < "24:00" ]]; then
    echo "Time of day for $hour is: Late Night"
else
    echo "Invalid hour input"
fi
