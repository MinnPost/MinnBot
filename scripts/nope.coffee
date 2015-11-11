# Description:
#   Fetches a matching image from Ethan Marcotte's legendary bukk.it
#
# Dependencies:
#   bukkit
#
# Configuration:
#   None
#
# Commands:
#   say something that includes the word nope
#
# Author:
#   jonathanstegall

bukkit = require("bukkit")

module.exports = (robot) ->
  robot.hear /(nope)\b/i, (msg) ->
      robot.emit "autobukkit", msg