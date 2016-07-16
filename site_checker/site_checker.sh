#!/bin/bash

# curl this url and see if the status code is 200. If yes, continue else process will curl again in 15 minutes.
if [ `curl -sL -w "%{http_code}\\n" "http://alexislaporte.com/blog" -o /dev/null | grep 200` ]

then
    # open the browser with a tab to get this url
	open "http://alexislaporte.com/blog" && 
    # I have a file called temp for projects to dump into. You should change this to a dir like a /tmp/ for a user
	# I want to log successful results so I can get a timestamp in case I miss the browser opening.
    echo "Site working on:" `date` >> /Users/yourusername/temp/results && 
    # If we reach line 10, we are successful. Terminate the process.
	launchctl unload /Users/yourusername/Library/LaunchAgents/site_checker.plist
fi
