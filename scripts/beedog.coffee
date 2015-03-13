# Description:
#   Beedogs!
#   http://beedogs.com/
#
# Commands:
#   hubot beedog me -> Displays a beedog

responder = (msg) ->
  rand = Math.floor(Math.random() * (326 - 9 + 1)) + 9

  if rand < 10
    string = rand.toString()
    out = "00#{string}"
  else if 9 < rand < 100
    string = rand.toString()
    out = "0#{string}"
  else
    out = rand.toString()

  msg.send "http://beedogs.com/index_files/image#{out}.jpg"

module.exports = (robot) ->

  robot.respond /beedog me/i, responder
  
  robot.hear /beedog/i, responder

  robot.hear /bee dog/i, responder
