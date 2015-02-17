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

module.exports = (robot) ->
  robot.hear /(tweeted|tweet|twitter)\b/i, (msg) ->
    if msg.message.text.indexOf(".com") > -1
      return
    else
      msg.send "http://i.imgur.com/ZqJKBJO.jpg"
