# Description:
#   Let's roll some dice
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot roll # d# (d4,d6,d8,d10,d12,d20)
#
# Author:
#   tnehil

dice = 
  "d4" : ["http://i1313.photobucket.com/albums/t552/cecinestpastom/d4-1.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d4-2.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d4-3.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d4-4.png"]
  "d6" : ["http://i1313.photobucket.com/albums/t552/cecinestpastom/d6-1.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d6-2.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d6-3.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d6-4.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d6-5.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d6-6.png"]
  "d8" : ["http://i1313.photobucket.com/albums/t552/cecinestpastom/d8-1.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d8-2.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d8-3.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d8-4.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d8-5.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d8-6.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d8-7.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d8-8.png"]
  "d10" : ["http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-1.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-2.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-3.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-4.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-5.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-6.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-7.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-8.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-9.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d10-10.png"]
  "d12" : ["http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-1.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-2.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-3.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-4.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-5.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-6.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-7.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-8.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-9.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-10.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-11.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d12-12.png"]
  "d20" : ["http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-1.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-2.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-3.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-4.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-5.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-6.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-7.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-8.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-9.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-10.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-1.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-11.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-12.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-13.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-14.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-15.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-16.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-17.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-18.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-19.png","http://i1313.photobucket.com/albums/t552/cecinestpastom/d20-20.png"]
    
module.exports = (robot) ->
  robot.respond /roll (\d+|a) d(\d+)/i, (msg) ->
    rolls = msg.match[1]
    if rolls == "a"
      rolls = 1 
    if rolls < 1
      msg.send ":unamused:"
      return
    if rolls > 20
      msg.send "Roll them yourself."
      return
    die = "d" + msg.match[2]
    if dice[die]
      msg.send msg.random dice[die] for num in [rolls..1]
    else
      msg.send "Sorry, I left all my #{die}s in my mom's basement."
  