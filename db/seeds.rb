# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
players = Player.create(first_name:'Evan', last_name:'Allen', program:'A - Typically Grade 1', age:7, grade:2, notes:'see dad about batting practice')
players = Player.create(first_name:'Wyatt', last_name:'Allen', program:'A - Typically Grade 1', age:9, grade:3, notes:'needs help throwing')
players = Player.create(first_name:'Drew', last_name:'Bartram', program:'Majors - Typically Grades 5 & 6', age:13, grade:7, notes:'good effort')
players = Player.create(first_name:'Camilla', last_name:'Bonafede', program:'A - Typically Grade 1', age:8, grade:2, notes:'fast base runner')
players = Player.create(first_name:'Danny', last_name:'Bradshaw', program:'A - Typically Grade 1', age:8, grade:2, notes:'none')
players = Player.create(first_name:'Emily', last_name:'Broughton', program:'A - Typically Grade 1', age:8, grade:2, notes:'good batting.')
