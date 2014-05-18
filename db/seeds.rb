# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# adv = Adventure.create!(:title => "Test Adventure",
# 	:author => "Test")
# adv.pages.create!(:name => "start",
# 	:text => "This is a great text adventure which is beginning right now!  I can't wait to [[see the end|end]]")
# adv.pages.create!(:name => "end",
# 	:text => "Wow that adventure was amazing!")


# adv = Adventure.create!(:title => "Test Adventure 2",
# 	:author => "Test")
# adv.pages.create!(:name => "start",
# 	:text => "Starting here, this is first page [[go to page 2|page2]] , or go to [[go to page 3|page3]] ")
# adv.pages.create!(:name => "page2",
# 	:text => "this is page 2, what a ride! [[continue to page 3|page3]]")
# adv.pages.create!(:name => "page3",
# 	:text => "Wow that adventure was amazing!")


# adv = Adventure.create!(:title => "Test Adventure 3",
# 	:author => "Test")
# adv.pages.create!(:name => "start",
# 	:text => "Starting here, this is first page [[go to page 2|page2]] , or go to [[go to page 3|page3]] ")
# adv.pages.create!(:name => "page2",
# 	:text => "this is page 2, what a ride - here is a wrong link! [[continue to page 3|page4]]")
# adv.pages.create!(:name => "page3",
# 	:text => "Wow that adventure was amazing!")

# adv = Adventure.create!(:title => "Test Adventure 4 = with html tags",
# 	:author => "Test")
# adv.pages.create!(:name => "start",
# 	:text => "Starting here, this is first page <br> [[go to page 2|page2]] , or go to [[go to page 3|page3]] ")
# adv.pages.create!(:name => "page2",
# 	:text => "this is page 2, what a ride! <br> [[continue to page 3|page4]]")
# adv.pages.create!(:name => "page3",
# 	:text => "Wow that adventure was amazing!")

# adv = Adventure.create!(:title => "Test Adventure 5 = with NO start",
# 	:author => "Test")
# adv.pages.create!(:name => "starting",
# 	:text => "Starting here, this is first page <br> [[go to page 2|page2]] , or go to [[go to page 3|page3]] ")
# adv.pages.create!(:name => "page2",
# 	:text => "this is page 2, what a ride! <br> [[continue to page 3|page4]]")
# adv.pages.create!(:name => "page3",
# 	:text => "Wow that adventure was amazing!")

adv = Adventure.create!(:title => "Hacker' dilema",
	:author => "Peter")
adv.pages.create!(:name => "start",
	:text => "It is a beautiful sunday in Santa Clara, California. Birds are singing, sun is shinning, you had a wonderful sleep-full night and feel fully rested after a long week. All the colours of the rainbow!<br>
<br>
What to do with do with such a gorgeous day? You can either go to spacey backyard on perfectly cut greenest grass, lie on sofa under the palm, tear fresh orange, open your favourite book and get immersed in exciting story. Or you can open laptop and start doing rspec test for your weekend lab. What do you do?<br>
<br>
[[go to the backyard|backyard]] <br>
[[open rspec|rspec]]")
adv.pages.create!(:name => "backyard",
	:text => "You're at the backyard, sipping good Napa Valley vine, completely indulging in the fine piece of literature in your hands. All of a sudden you hear a silent, but not that distant whispers:<br>
<br>
rSpeccccc, rsssspeeeeccccc, Myyy PRECIOUSSS. <br>
<br>
[[Continue reading|backyard_reading]]  <br>
[[Jump on your feet in sheer terror!|backyard_terror]]")
adv.pages.create!(:name => "backyard_reading",
	:text => "You continue reading, and forget about what you've heard thinking that it might have been just the light air going through neighbouring wooden fence.<br>
<br>
All of a sudden it's back. Stronger than ever before. Silent whisper , is changing to not so silent crying!!!<br>
<br>
Myyy PRECIOUSSS. rSpeccccc, rsssspeeeeccccc!!! Myyy PRECIOUSSS. Come!!! instal my rails Gemmmm, preciousss!!!<br>
<br>
You have no choice other than to [[Jump on your feet in sheer terror!|backyard_terror]]")
adv.pages.create!(:name => "backyard_terror",
	:text => "You jump on your feet, terrified and start violently jumping up-and-down , intensely looking around , awaiting some real bundle attack! <br>
<br>
After 5min of this heroic dance , you start cooling down. You haven't found anything and all that you've managed to do is confirm your neighbours' doubts about your mental sanity. <br>
<br>
All of a sudden you come to awakening. I wasn't anybody else out there, it was all inside of your head! All of the whispering and crying was your consciousness telling you there is going to be an enlightened instructor in the Monday morning asking you about your rSpec coverage!!<br>
<br>
What do you do? Totally relax knowing you're safe, open another bottle of 1947 Château Cheval Blanc and continue reading OR get back to the villa and open your MacBook ? <br>
<br>
[[Open 1947 Château Cheval Blanc|Open_wine]] <br>
[[Open MacBook|rspec]]")
adv.pages.create!(:name => "Open_wine",
	:text => "You woke-up Monday morning, $300k lighter from yesterday drinking, quickly deploy to Heroku, submit the lab and run to class.<br>
<br>
You casually walk into the classroom and your mind (still wandering about fabulous times yesterday) gets interrupted out of blue by a painful question you can't answer - "WHAT's your rSpec coverage???"<br>
<br>
END OF STORY")
adv.pages.create!(:name => "Open_wine",
	:text => "You woke-up Monday morning, $300k lighter from yesterday drinking, quickly deploy to Heroku, submit the lab and run to class.<br>
<br>
You casually walk into the classroom and your mind (still wandering about fabulous times yesterday) gets interrupted out of blue by a painful question you can't answer - "WHAT's your rSpec coverage???"<br>
<br>
END OF STORY")
adv.pages.create!(:name => "rspec",
	:text => "With great deal of pain you open your laptop, still mumbling to yourself "what the heck have I done to myself signing up for this misery?", "The code works, why can't the rails test itself, ha?", "TDD - Today Don't Do it!". <br>
<br>
You've got 2 choices, go to vine cellar and checkout some true Gems, or persevere and checkout the rSpec gem.<br>
<br>
[[Go to vine cellar|Open_wine]] or [[Check-out the rSpec|rSpec2]]")
adv.pages.create!(:name => "rSpec2",
	:text => "Your perseverance and hard work paid off. You managed to conquer the magic of rSpec and you're not intimidated by it anymore. You've earned yourself a ticket into real world of Tech and your code is forever happily humming alongside. <br>
<br>
rSpec coverage is always full and so is your bank account. Good job!!<br>
<br>
END OF STORY")