# README

Motor Meets is an application for organizing track days and high performance driving/riding events. Users can also review different circuits and see which are right for them and their skill level. 

# TODO:
- Create DB table for events. An event needs to have a title, a description, a location (the track that the event is at), an organizer (the user who created the event), date created, date of the event, and a list of users who are attending the event.
- Create a DB entry for an event at a track that already exists. The event should reference a track that is already in the tracks table, an organizer who is in the users table, and an attendee from the users table
- Create home page with links for sign up and sign in, and a link to browse events
- Create an events page that shows a list of events.
- If you are signed in and you click on an event, you can see all sorts of info about the event including a list of all of the users who are attending. There should also be a link to register for the event. If you are NOT signed in, you can see the event, but you can't see the users and you can't register.
- Create a car table. A car needs to have a make, model, year, color, drivetrain, owner, and description. A car can only have one owner (which is a user from the users table)
- Update the users model. A user needs to have a first name, last name, e-mail address, age, location (zip code), and a list of cars that they own. A single user can have one or more cars (a car from the cars table). A user can also be registered to one or more events (from the events table).
Focus on State and Component compatibility to display events. Then a form can be made for setting up an event.