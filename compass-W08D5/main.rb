# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here
puts qualified_candidates(@candidates)
puts ordered_by_qualifications(@candidates)


pp @candidates
# -- compare --
# puts @candidates

# name = gets.chomp
# puts "Welcome to \"Ruby land\", #{name}. Hope you enjoy your stay (and never leave!)"