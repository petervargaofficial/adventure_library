# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

adv = Adventure.create!(:title => "Test Adventure",
	:author => "Test")
adv.pages.create!(:name => "start",
	:text => "This is a great text adventure which is beginning right now!  I can't wait to [[see the end|end]]")
adv.pages.create!(:name => "end",
	:text => "Wow that adventure was amazing!")


adv = Adventure.create!(:title => "Test Adventure 2",
	:author => "Test")
adv.pages.create!(:name => "start",
	:text => "Starting here, this is first page [[go to page 2|page2]] , or go to [[go to page 3|page3]] ")
adv.pages.create!(:name => "page2",
	:text => "this is page 2, what a ride! [[continue to page 3|page3]]")
adv.pages.create!(:name => "page3",
	:text => "Wow that adventure was amazing!")