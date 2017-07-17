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
    msg.send "https://i.imgur.com/5DsOPcl.gif"