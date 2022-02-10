Terminal commands implemented

```
// check ruby and rails versions
rails new appointments-api --database postgresql --api 
Update config database.yml and puma to match postgres
rails db:setup
rails db:reset
rails db:migrate
rails s
rails g resource Provider patient:string 
rails g resource Appointment date patient provider:references
// then update models, provider has_many :appointments
rails db:migrate
//enter rails console to add some records and test its set up correctly
rails c
Provider.create(name: "Mike Tyson")
Appointments.create
Provider.first.appointments.create(date: "2022-03-01", patient: "Arthur Clarke")
// create seeds file 
rails db:seed
// go to localhost:4000/rails/info/routes
// update controllers to return json
// update routes.rb scope to be /api/v1
// uncomment bcrypt
bundle install
bundle add jwt
rails g resource User email password_digest //password_digest is one way encryption via bcrypt.
rails db:migrate
//update user model to "has_secure_password"
//go to rails console and add a user

//User.first.authenticate("password")
bundle add rolify
rails g rolify Role User //assuming user table is called user 
//add resourcify to models
//then go to rails console and you can check this with
// User.first.add_role :owner, Appointment.create(date:"2024-03-02", patient: "Arnie", provider_id: 2)


```

