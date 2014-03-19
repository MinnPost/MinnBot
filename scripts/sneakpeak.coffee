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
#   just some corrections
#
# Author:
#   tnehil

module.exports = (robot) ->
  robot.hear /sneak peak/i, (msg) ->
    msg.send "*peek"
