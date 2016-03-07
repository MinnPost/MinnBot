# Description:
#   Party time!
#
# Dependencies:
#   bukkit.coffee
#
# Configuration:
#   None
#
# Commands:
#   say something that includes the phrase party time
#
# Author:
#   jonathanstegall

module.exports = (robot) ->
  robot.hear /(party time)\b/i, (msg) ->
      msg.send "http://floops.io/party-time.gif"