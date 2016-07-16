# site_checker
Creating a background process with Launchd to check HTTP status code of a website on Mac OS/X

A launch agent for Mac OS/X to check when a site is online with status 200 OK. Instead of refreshing constantly to see if a website is online, we have a background process for a sp. user run and if the site is running, pop open a tab in the browser automatically for us.

I wrote [a blog post about how I learned about daemons, agents, and Launchd here.](http://alexislaporte.com/blog//2016/05/31/launchd-for-fun-and-orchids.html)

*Note: 
- Replace any environment variables in script or usernames with your own.