# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Provider.destroy_all

jane = Provider.create(name: "Dr. Jane Doe")
karl = Provider.create(name: "Dr. Karl Marx")

jane.appointments.create(date: "2021-02-03", patient: "David Smith")
jane.appointments.create(date: "2021-02-04", patient: "Mary Smith")
karl.appointments.create(date: "2021-02-05", patient: "Jane Smith")
