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
```

