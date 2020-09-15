# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.delete_all

Pet.create(name: "Fido", species: "Dog", year_of_birth: 2018, good_with_kids?: true)
Pet.create(name: "Spunky", species: "Cat", year_of_birth: 2017, good_with_kids?: false)
Pet.create(name: "Farthead", species: "Bird", year_of_birth: 2016, good_with_kids?: true)
Pet.create(name: "Meowzers", species: "Dog", year_of_birth: 2015, good_with_kids?: false)
Pet.create(name: "Dr. Mama", species: "Cat", year_of_birth: 2014, good_with_kids?: true)
Pet.create(name: "Tenteen", species: "Bird", year_of_birth: 2013, good_with_kids?: false)
Pet.create(name: "Nooni", species: "Dog", year_of_birth: 2012, good_with_kids?: true)
Pet.create(name: "Derpbag", species: "Cat", year_of_birth: 2011, good_with_kids?: false)
