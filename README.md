
# Angelswing Test

> This is a Ruby on Rails Application that allows users to create their own projects and content.
> Created by Adam Bankson, this project is a proof of concept on his ability to learn at an accelerated rate and apply new knowledge quickly and dynamically. He started learning two weeks ago(May 14, 2018) through various online resources, including a lesson plan through devcamp.
> Resources and project notes can be found at the end of this README.

### Ruby Version

- Ruby 2.5.1

### Features

- User creation and management
- Project CRUD Operations
- Content CRUD Operations

### Gems Utilized

-Devise for Authentication and User Model creation/management which uses Bcrypt for password encryption.
-Petergate for Authorization and creating user permission profiles

### Seed File

I created a seed file that will create sample data for the Project and Content tables as well as an admin user with all access.

Just run db:setup
```ruby
rails db:setup
```

### Project Notes
Things to note
- An Admin profile is created in the seeds file with the account information 
```ruby
email: "admin@development.com"
password: "password"
```
- For the Content Model, the 'map' and 'length' Enum names given in the project directions are in conflict with ActiveRecords, therefore their names have been changed to 'maps' and 'lengths'
- Furthermore, the 'type' column in the Content Model from the project directions had to be changed to 'content_type' to resolve more ActiveRecord conflicts.
- I used the Devise gem for User Model creation
- I used the Petergate gem for user authorization
- I used the resource generator for the Project and Content model creation
- I am still in the process of learning authorization and its best practices in Rails. Therefore, implementation to the project specifications is not perfect. For instance, signed in Users are only meant to be able to edit and delete their own projects and content. For now, I was not able to full implement this. Instead, Users can edit any project or content, but they do not have deletion permission. ONLY the configured Admin can delete projects and content for now. I plan on implementing further as I learn more.

### Future Implementation
- Fix the authorization for users
- Learn to use partials for shared form files
- Work with Views and Controllers more in the Rails architecture
- Learn to style the entire project

### Lesson Plan
- https://devcamp.com/