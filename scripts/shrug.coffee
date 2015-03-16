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
#   ASCII shrug
#
# Author:
#   jonathanstegall

module.exports = (robot) ->
  robot.hear /(shrug)\b/i, (msg) ->
      msg.send "¯\_(ツ)_/¯"
