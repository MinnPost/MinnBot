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
#   ASCII flip tables
#
# Author:
#   jonathanstegall

module.exports = (robot) ->
  robot.hear /(flip tables|fight the power|#comment)\b/i, (msg) ->
      msg.send "(╯°□°）╯︵ ┻━┻"