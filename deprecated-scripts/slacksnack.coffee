# Description:
#   Less Slack, more snack
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Just talk about how active you are on Slack. I dare you.
#
# Author:
#   tnehil

module.exports = (robot) ->
  robot.hear /slack\b/i, (msg) ->
      msg.send "Less Slack, more snack!"
