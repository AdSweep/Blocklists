#!/bin/bash

# Update the repository
git pull

# Copy the list to the blocklist
cp /etc/adsweep/blocklists/adlists.list /etc/pihole/adlists.list

# Clear the regex list
pihole --regex --nuke

# For every line in the regexes file, add it to the regexes list
while read LINE
do
	pihole --regex $LINE
done < FILE
