# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
        Used Corneal gem to build my sinatra app.
- [x] Use ActiveRecord for storing information in a database
        used ActiveRecord::Base so my models have more functionality with less code.
- [x] Include more than one model class (e.g. User, Post, Category)
        MassageSpa and Clients.
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
        Massage Spa has many clients.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
        Clients belong to Massage Spa.
- [x] Include user accounts with unique login attribute (username or email)
        email login attribute.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        Have routes of create, reading, updating and deleting clients. I can also create, reading and update a massage spa. 
- [x] Ensure that users can't modify content created by other users
        doesn't show the edit link or allows you to edit something you did not create, by using helper methods.
- [x] Include user input validations
        cant create blank inputs for massage_spa or client. 
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
        60+ and counting
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
