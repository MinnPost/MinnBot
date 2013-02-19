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
#   hubot open the pod bay doors - hubot does not jeopardize such an important mission
#
# Author:
#   tom



module.exports = (robot) ->
  robot.respond /open the pod bay doors/i, (msg) ->
    msg.send "I'm sorry, " +msg.message.user.name+", I'm afraid I can't do that"