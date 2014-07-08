# Description:
#   ASCII art - Modified to work with Slack
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot ascii me <text> - Show text in ascii art
#
# Author:
#   atmos

module.exports = (robot) ->
  robot.respond /ascii( me)? (.+)/i, (msg) ->
    msg
      .http("http://asciime.heroku.com/generate_ascii")
      .query(s: msg.match[2].split(' ').join('  '))
      .get() (err, res, body) ->
        msg.send "```\n" + body + "\n```"
