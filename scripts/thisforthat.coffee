# Description:
#   Get some great startup ideas via it's like this for that
#
# Commands:
#   hubot give me an idea/I need an idea/idea me - Returns a great idea!

module.exports = (robot) ->
  robot.respond /(give me an idea|I need an idea|idea me)/i, (msg) ->
    msg.http('http://itsthisforthat.com/api.php?json')
      .get() (err, res, body) ->
        response = JSON.parse(body)
        message = "So basically, it's like "
        message += response.this
        message += " for "
        message += response.that
        message += "."
        msg.send message