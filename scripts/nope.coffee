# Description:
#   Fetches a matching image from Ethan Marcotte's legendary bukk.it
#
# Dependencies:
#   bukkit.coffee
#
# Configuration:
#   None
#
# Commands:
#   say something that includes the word nope
#
# Author:
#   jonathanstegall

module.exports = (robot) ->
  robot.hear /(nope)\b/i, (msg) ->
      robot.emit "autobukkit", msg