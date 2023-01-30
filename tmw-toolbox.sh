read -p "Enter the path to the folder you want to delete old files from: " path
read -p "Got it, now how many days back should i not delete the files (e.g. 30 days will keep the files modifies in the last 30 days, the older ones will get deleted): " days

find "$path" -mtime +"$days"d -delete
