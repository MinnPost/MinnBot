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
  robot.hear /(delete your account|delete ur account|delete ur account|delete your acct|delete ur acct)\b/i, (msg) ->
      msg.send "https://web.archive.org/web/20170302172316/https://cdn.meme.am/instances/500x/64422613.jpg"