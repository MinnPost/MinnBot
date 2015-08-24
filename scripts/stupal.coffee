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
#   reply to Drupal with MORE LIKE STUPAL
#
# Author:
#   jonathanstegall

module.exports = (robot) ->
  robot.hear /(drupal)\b/i, (msg) ->
      msg.send "MORE LIKE STUPAL"
