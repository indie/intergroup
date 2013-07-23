Open-source meetings databse structure with search, sort, export and import for Intergroup fellowships of AA or NA

Need to get your dev environment set up? Follow this tutorial for LINUX:

http://www.hackeress.com/tutorial-sublime

$ mkdir yournewwebsite.org
$ git clone https://github.com/indie/intergroup.git
$ cd intergroup/
$ rake db:create
$ rake db:migrate
$ rails s

Navigate to your localhost (usually :3000)

Create new admin user; go to:  
	>> Central Office
		>> Create Admin
			>> Create Account

This should create your admin and login.  Logged in?  You'll see a different view of the navigation 
menu. . . great!  This is available for admins only.  You'll want to make sure you disable the signup 
page 
				/app/views/users/new.html.erb 

after you create the admin on the server.  Or, if you can create via command-line, don't worry about 
this file; just delete it all together.  You may also want to hide the "sign in" page for extra security
			
Enter your city library:  
	>> cd /app/controllers
		$ sublime meetings-controller.rb

  EDIT lines 47 - 67 with your cities

  Also, feel free to edit the "Codes" section for custom codes if yours differ.  

Now upload a CSV of data; go to:  
	>> Add New Meetings
		(Scroll to the bottom of the page)
		>> Click on "Browse"
		>> Upload the CSV of data (use the "san-mateo-aa.csv" test if you wish to confirm it actually works -- it does! -- just be patient ;) 
			>> If you upload this and need to reset the DB to test your own csv on our local machine, use:  
			  $ rake db:reset
		     $ rake db:migrate
		  to clear out any messed up imports.  
		   >> Else, just upload your .CSV file.  
				You need to have an entry in every column for Day & Time 	Meeting Name 	Location 	City
				Look at the test file for hints on how to get it working; it's not recommended to start a file from scratch; copy (cp) the 
				existing one, and paste in your data.  Leave the column headers alone; if the upload doesn't work, it's usually because the
 				column headers are broken.  
		>> Look for the success message:  "meetings imported successfully!"

Edit the deploy.rb file to work on your server config.  This is beyond the scope of this tutorial.  

Leave a donation for the author of this code and tutorial:  http://info.aasjonline.com/donate/
