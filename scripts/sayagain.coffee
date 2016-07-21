# Description:
#   Hubot repeats last thing said in channel
#
# Commands:
#   'say that again' - hubot repeats last message in channel
#

module.exports = (robot) ->

  robot.hear /.*/i, (msg)->
    room = robot.messageRoom
    txt = msg.match[0]
    if txt.indexOf('say that again') != -1
      msg.send robot.brain.lastmsg.room
    else
      if robot.brain.lastmsg
        robot.brain.lastmsg.room = txt
      else
        robot.brain.lastmsg = {}
        robot.brain.lastmsg.room = txt;
