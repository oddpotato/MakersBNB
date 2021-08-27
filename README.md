Welcome to MakersBNB!

Description: This application allows hosts and guests to come together and make bookings.

~ User stories ~

As a user
I want to sign up
So I can use MakersBNB.

As a host
I want to add listings
So I can make money.

As a guest
I want to view available listings
So that I can plan my stay.

As a guest
I do not want to view unavailable listings
So that I can plan my stay.

As a guest
I want to filter my listing
So that I can narrow my search.

As a guest
I want to make bookings
So I can stay somewhere.

As a host
I want to have a name and description of the space
So that guests will want to stay there.

As a host
I want to set the price per night
So that guests know how much my space costs.

As a host
I want to be able to specify the dates available
So that guests can know the availability of my space.

As a host
I want to be able to approve or reject requests
So that I can control who books my space.

As a host
I want my listings to be available until booking is confirmed
So that I can maximise my potential earnings.


***RESETTING THE DBS***

Step 1. Open postgres with /psql in the command line
Step 2. Type '\c makersbnb_test' or '\c makersbnb' to connect to the correct db
Step 3. Type 'TRUNCATE USERS RESTART IDENTITY CASCADE;' to clear your tables
Step 4. Exit psql
Step 5. In terminal, type 'rake db:migrate:redo' - this will update your table schema
Step 6. In terminal, type 'rake de:seed' - this should not produce anything in your terminal but should repopulate your db

Repeat steps for second db (be that _test or just makersbnb) - remember to change environments with the following:

export RAKE_ENV=production (or development as the case may be)