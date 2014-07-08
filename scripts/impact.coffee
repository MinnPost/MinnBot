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
#   Helps MinnBot celebrate our successes
#
# Author:
#   tnehil

module.exports = (robot) ->
  robot.hear /(i|I)mpact/i, (msg) ->
    msg.send "http://i1313.photobucket.com/albums/t552/cecinestpastom/impact.png"
