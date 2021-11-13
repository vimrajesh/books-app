# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create(B_id: '1' ,B_title: 'And Then There Were None', Author: 'Agastha Christie', Publisher: 'St. Martin\'s Press', Year: '1939')
Book.create(B_id: '2' ,B_title: 'Introduction to Algorithms', Author: 'CLRS', Publisher: 'MIT Press', Year: '1989')