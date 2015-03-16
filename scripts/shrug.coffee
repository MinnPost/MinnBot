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
#   ASCII shrug
#
# Author:
#   jonathanstegall

shrugs = ["¯\\_(ツ)_/¯",
          "╮ (. ❛ ᴗ ❛.) ╭",
          "¯\\_(°_o)_/¯"]

module.exports = (robot) ->
  robot.hear /(shrug)\b/i, (msg) ->
      shrug = msg.random shrugs
      msg.send shrug
