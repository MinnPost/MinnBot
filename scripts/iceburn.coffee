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
    msg.send "https://web.archive.org/web/20170324000457/https://i.imgur.com/5DsOPcl.gif"