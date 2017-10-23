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
players = Player.create(first_name:'Evan', last_name:'Allen', program:'A - Typically Grade 1', age:7, grade:2, notes:'see dad about batting practice', catch:3, throw:3, pitch:3, bat:2, athleticism:2)
