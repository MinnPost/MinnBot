# Description:
#   A way to search images on giphy.com
#
# Commands:
#   hubot (random) cocktail me - Returns a random, untested cocktail recipe.

module.exports = (robot) ->
  robot.respond /(cocktail me|I need a drink|random cocktail me)/i, (msg) ->
    msg.http('http://cecinestpastom.appspot.com/cocktail')
      .get() (err, res, body) ->
        response = JSON.parse(body)
        message = ""
        message += response.title + ":\n"
        message += "(" + response.url + ")\n"
        for i in response.ingredients
          message += "-" + i + "\n"
        message += "\n" + response.origin
        msg.send message