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
#   iceburn - iceburns
#
# Author:
#   tom

module.exports = (robot) ->
  robot.hear /ice( |-)?burn\b/i, (msg) ->
    msg.send "http://th32.photobucket.com/albums/d4/catlegs/th_iceburn.gif"