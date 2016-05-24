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
#   reply to things with SNARKY THINGS
#
# Author:
#   jonathanstegall

module.exports = (robot) ->
  robot.hear /(drupal)\b/i, (msg) ->
      msg.send "MORE LIKE STUPAL"
  robot.hear /(salesforce)\b/i, (msg) ->
      msg.send "MORE LIKE SALES FARCE"
