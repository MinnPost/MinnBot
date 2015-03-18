# Description:
#   Knock knock jokes!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot tell me a joke or hubot joke me
#
#
# Author:
#   tnehil

jokes = [
  {setup: 'Dozen', punchline: 'Dozen anybody want to let me in?'},
  {setup: 'Avenue', punchline: 'Avenue knocked on this door before?'},
  {setup: 'Ice Cream', punchline: 'Ice Cream if you don\'t let me in!'},
  {setup: 'Adore', punchline: 'Adore is between us. Open up!'},
  {setup: 'Lettuce', punchline: 'Lettuce in. It\'s cold out here!'},
  {setup: 'Bed', punchline: 'Bed you can not guess who I am.'},
  {setup: 'Al', punchline: 'Al give you a kiss if you open the door.'},
  {setup: 'Olive', punchline: 'Olive you!'},
  {setup: 'Abby', punchline: 'Abby birthday to you!'},
  {setup: 'Rufus', punchline: 'Rufus the most important part of your house.'},
  {setup: 'Cheese', punchline: 'Cheese a cute girl.'},
  {setup: 'Canoe', punchline: 'Canoe help me with my homework?'},
  {setup: 'Merry', punchline: 'Merry Christmas!'},
  {setup: 'Orange', punchline: 'Orange you going to let me in?'},
  {setup: 'Anee', punchline: 'Anee one you like!'},
  {setup: 'Iva', punchline: 'I’ve a sore hand from knocking!'},
  {setup: 'Dozen', punchline: 'Dozen anybody want to let me in?'},
  {setup: 'Needle', punchline: 'Needle little money for the movies.'},
  {setup: 'Henrietta', punchline: 'Henrietta worm that was in his apple.'},
  {setup: 'Avenue', punchline: 'Avenue knocked on this door before?'},
  {setup: 'Harry', punchline: 'Harry up, it’s cold out here!'},
  {setup: 'A herd', punchline: 'A herd you were home, so I came over!'},
  {setup: 'Adore', punchline: 'Adore is between us. Open up!'},
  {setup: 'Otto', punchline: 'Otto know. I’ve got amnesia.'},
  {setup: 'King Tut', punchline: 'King Tut-key fried chicken!'},
  {setup: 'Lettuce', punchline: 'Lettuce in it’s cold out here.'},
  {setup: 'Noah', punchline: 'Noah good place we can get something to eat?'},
  {setup: 'Robin', punchline: 'Robin the piggy bank again.'},
  {setup: 'Dwayne', punchline: 'Dwayne the bathtub, It’s overflowing!'},
  {setup: 'Imma', punchline: 'Imma gettin’ old open the door!'},
  {setup: 'Boo', punchline: 'Gosh, don’t cry it’s just a knock knock joke.'},
  {setup: 'A little old lady', punchline: 'I didn’t know you could yodel.'},
  {setup: 'Sadie', punchline: 'Sadie magic word and watch me disappear!'},
  {setup: 'Justin', punchline: 'Justin time for dinner.'},
  {setup: 'Kirtch', punchline: 'God bless you!'},
  {setup: 'Luke', punchline: 'Luke through the the peep hole and find out.'},
  {setup: 'Ivor', punchline: 'Ivor you let me in or I`ll climb through the window.'},
  {setup: 'Claire', punchline: 'Claire the way, I’m coming through!'},
  {setup: 'Arfur', punchline: 'Arfur got!'},
  {setup: 'Abby', punchline: 'Abby birthday to you!'},
  {setup: 'Nana', punchline: 'Nana your business.'},
  {setup: 'Ya', punchline: 'Wow. You sure are excited to see me!'},
  {setup: 'Etch', punchline: 'Bless you!'},
  {setup: 'Roach', punchline: 'Roach you a letter, did you get it?'},
  {setup: 'Aida', punchline: 'Aida sandwich for lunch today.'},
  {setup: 'Iona', punchline: 'Iona new car!'},
  {setup: 'Scold', punchline: 'Scold enough out here to go ice skating.'},
  {setup: 'Police', punchline: 'Police hurry up, it’s chilly outside!'},
  {setup: 'Justin', punchline: 'Just in the neighborhood, thought I would drop by.'},
  {setup: 'Ben', punchline: 'Ben knocking For 10 minutes.'},
  {setup: 'Two knee', punchline: 'Two-knee fish!'},
  {setup: 'Hoo', punchline: 'Are you a owl?'},
  {setup: 'I am', punchline: 'You mean you don’t know who you are?'},
  {setup: 'Isabell', punchline: 'Is a bell working?'},
  {setup: 'Tank', punchline: 'Your welcome!'},
  {setup: 'Alex', punchline: 'Alex-plain later!'},
  {setup: 'Ketchup', punchline: 'Ketchup with me and I’ll tell you!'},
  {setup: 'Annie', punchline: 'Annie body home?'},
  {setup: 'Watson', punchline: 'What’s on tv tonight?'},
  {setup: 'Cook', punchline: 'Hey! Who are you calling cuckoo?'},
  {setup: 'Spell', punchline: 'W-H-O'},
  {setup: 'Dishes', punchline: 'Dish is a nice place!'},
  {setup: 'Althea', punchline: 'Althea later alligator!'},
  {setup: 'Norma Lee', punchline: 'Norma Lee I don’t go around knocking on doors, but I just had to meet you!'},
  {setup: 'CD', punchline: 'CD guy on your doorstep?'},
  {setup: 'Somebody too short to ring the doorbell!'},
  {setup: 'Iowa', punchline: 'Iowa big apology to the owner of that red car!'},
  {setup: 'Abbot', punchline: 'Abbot you don’t know who this is!'},
  {setup: 'Viper', punchline: 'Viper nose, it’s running!'}
]


module.exports = (robot) ->

  robot.respond /tell me a joke/i, (msg) ->
    robot.joking = 1
    msg.send "Knock, knock"

  robot.respond /joke me/i, (msg) ->
    robot.joking = 1
    msg.send "Knock, knock"


  robot.hear /who[\'\’]s there/, (msg) ->
    if robot.joking is 1
      joke = msg.random jokes
      robot.jokesetup = joke.setup
      robot.punchline = joke.punchline
      msg.send joke.setup

  robot.hear /([\w\s]+) who/, (msg) ->
    if robot.joking is 1
      if msg.match[0].toLowerCase() is robot.jokesetup.toLowerCase() + " who"
        msg.send robot.punchline
        robot.joking = 0
        robot.jokesetup = ""
        robot.punchline = ""
