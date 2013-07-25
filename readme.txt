======
Open-Source Intergroup Meetings
by:  indie 
LIVE DEMO:  http://demo.aasjonline.com

https://github.com/indie/intergroup.git
======

Free and open-source website and meetings database structure with search, sort, export and import for Intergroup fellowships of AA or NA!  Need to get your dev environment set up? Follow this tutorial for LINUX:  http://www.hackeress.com/tutorial-sublime

This code allows you to turn an Excel spreadsheet formatted as a .csv of local meetings into a searchable database online
======

Start locally: 

$ mkdir yournewwebsite.org
$ git clone https://github.com/indie/intergroup.git
$ cd intergroup/
$ rake db:create
$ rake db:migrate
$ rails s

Navigate to your localhost (usually http://localhost:3000) in your web browser

Create new admin user; in the navigation menu at the top of the site, go to:  
	>> Central Office
    >> Create Admin
	>> Create Account

This should create your admin and login.  Logged in?  You'll see a different view of the navigation menu. . . fabulous!  This is available for admins only, and the view differs when you're logged in as admin.  Be sure to disable the signup 
page 
				/app/views/users/new.html.erb 

after you create the admin on the server.  Or, if you can create via command-line, don't worry about this file; just delete it all together.  You may also want to hide the "sign in" page for extra security
			
Customize as your own.  Find and enter your city library:  

    $ cd /app/controllers/meetings-controller.rb

EDIT lines 47 - 67 with your cities.  Also, feel free to edit the "Codes" section for custom codes if yours differ.  

Now you may upload a CSV of data; in the navigation menu, go to:  
	>> Add New Meetings
		(Scroll to the bottom of the page)
	>> Click on "Browse"
	>> Upload the CSV of data 

Use the "san-mateo-aa.csv" in intergroup/db/san-mateo-aa.csv if you'd like to confirm it actually works -- it does! -- just be patient ;) You'll see an orange dialogue box that says: "Meetings imported successfully"

		>> If you upload this and need to reset the DB to test your own csv on our local machine, use:  

	    $ rake db:reset
	    $ rake db:migrate
			  
		to clear out any messed up imports.  
	
	>> Else, just upload the .CSV file with your local area meetings  
				
You need to have an entry in every column for 
	> Day & Time 	
	> Meeting Name 	
	> Location 	
	> City 

Look at the test file for hints on how to get it working; it's not recommended to start a file from scratch; copy (cp) the existing one, and paste in your data.  Leave the column headers alone; if the upload doesn't work, it's usually because the column headers are broken, or the columns are not completely "empty" when you copy over.  Copy one column at a time, just the info you need

	>> Look for the success message:  "meetings imported successfully!"

Edit the deploy.rb file to work on your server config.  This is beyond the scope of this tutorial.  

Leave a "thanks!" donation for the author of this code and tutorial; big or small, any amount is greatly appreciated:  

--> http://www.hackeress.com/thanks