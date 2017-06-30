# Description:
#   Delete your account spongebob
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
  robot.hear /(delete your|ur| account)\b/i, (msg) ->
      msg.send "https://cdn.meme.am/instances/500x/64422613.jpg"