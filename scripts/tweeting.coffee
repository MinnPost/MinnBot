# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Solid advice w/r/t twitter
#
# Author:
#   tnehil

advice = ["http://i.imgur.com/ZqJKBJO.jpg",
          "http://cdn.theawl.com/wp-content/uploads/2014/09/1app.gif"]

module.exports = (robot) ->
  robot.hear /(tweeted|tweet|twitter|tweeting)\b/i, (msg) ->
    if msg.message.text.indexOf(".com") > -1
      return
    else
      msg.send msg.random advice
