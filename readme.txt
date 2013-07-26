===============================================
====== https://github.com/indie/intergroup.git

Open-Source Intergroup Meetings
License: Apache V2 (see bottom of the page)

LIVE DEMO:  http://demo.aasjonline.com

======
=============================================== 

Free and open-source site template and meetings database structure with search, sort, export and import for Intergroup fellowships of AA or NA!  Need to get your dev environment set up? Follow this tutorial for Linux:  http://www.hackeress.com/tutorial-sublime

This code allows you to turn an Excel spreadsheet formatted as a .csv of local meetings into a searchable database online
======

1.  Getting started -- on your local machine

	$ mkdir yournewwebsite.org
	$ git clone https://github.com/indie/intergroup.git
	$ cd intergroup/
	$ rake db:create
	$ rake db:migrate
	$ rails s

	Navigate to your localhost (usually http://localhost:3000) in your web browser, and go to
	http://localhost:3000/signup -- administrative account creation is disabled by default.

2.  Open your favorite editor and uncomment the code in 
	
	$ app/views/users/new.html.erb  

	save and refresh the page.  

3.  Now you may create new admin user; in your browser go to:  http://localhost:3000/signup

	Where you may admin user and log-in.  Once in, you'll see a different view of the navigation menu. . . fabulous!  This is available for admins only, and the view differs when you're logged in as admin.  			

4.  Customize the search parameters as your own.  Find and enter your city library:  

    $ cd /app/controllers/meetings-controller.rb

	EDIT lines 47 - 67 with your cities.  Also, feel free to edit the "Codes" section for custom codes if yours differ.  

	Now you may upload a CSV of data; in the navigation menu, go to:  
		>> Add New Meetings (Scroll to the bottom of the page)
		>> Click on "Browse"
		>> Upload the CSV of data 

	Use the "san-mateo-aa.csv" in intergroup/db/san-mateo-aa.csv if you'd like to confirm it actually works -- it does! -- just be patient, as it can take 20 or 30 seconds for the full upload ;) You'll see an orange dialogue box that says: "Meetings imported successfully"

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

	The rest of the columns are optional.  The "Maps" column can be the most cantankerous; just plod through and get your Google Maps or Yahoo Maps or Bing Maps links.   

	If you run into trouble, look at the test file for hints on how to get it working; it's not recommended to start a file from scratch; copy (cp) the existing one, and paste in your data.  Leave the column headers alone; if the upload doesn't work, it's usually because the column headers are broken, or the columns are not completely "empty" when you copy over.  Copy one column at a time, just the info you need.  When it works, you'll see the success message:  "meetings imported successfully!"

5.  Be sure to disable the signup page 

	$ app/views/users/new.html.erb 

	after you create the admin on the server.  Or, if you can create via command-line, don't worry about this file; just delete it all together.  You may also want to hide the "sign in" page for extra security

6.  Edit the deploy.rb file to work on your server config.  This is beyond the scope of this tutorial.  

7.  Leave a "thanks!" donation; big or small, any amount is greatly appreciated:  

	--> http://www.hackeress.com/thanks


=============================================== 
===== Begin legal promulgation for Apache v2

 Copyright  2013   hackeress creative studio

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

====== End legal promulgation for Apache v2
===============================================