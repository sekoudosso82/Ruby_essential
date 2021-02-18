# what is a call back 
# difference btwn destroy and delete 
# rails life cycle 
Models for handling data and business logic
Controllers for handling the user interface and application
Views for handling graphical user interface objects and presentation

This separation results in user requests being processed as follows:

The browser (on the client) sends a request for a page to the controller on the server.
The controller retrieves the data it needs from the model in order to respond to the request.
The controller gives the retrieved data to the view.
The view is rendered and sent back to the client for the browser to display.

# how to avoid too long controller 
# testing 
# how to load faster a rails app 
# what is a gem 
# some gems 
    gem 'bcrypt', '~> 3.1.7'
    gem 'bootstrap', '~> 4.1.1'
    gem 'jquery-rails'
    gem 'faker'
# helper 
# how to scale rails application 
# polymorphisme 
In Ruby on Rails, a polymorphic association is an Active Record 
association that can connect a model to multiple other models. 
For example, we can use a single association to connect the Review 
model with the Event and Restaurant models, allowing us to connect 
a review with either an event or a restaurant.   

