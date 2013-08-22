# Description:
#   A way to search images on giphy.com
#
# Commands:
#   hubot gif me <query> - Returns an animated gif matching the requested search term.

module.exports = (robot) ->
  robot.respond /(gif|giphy)( me)? (.*)/i, (msg) ->
    q = msg.match[3]
    api_key = 'dc6zaTOxFJmzC'
    msg.http('http://api.giphy.com/v1/gifs/search?q=' + q + '&api_key=' + api_key)
      .get() (err, res, body) ->
        response = JSON.parse(body)
        images = response.data
        if images.length > 0
          image = msg.random images
          msg.send image.images.fixed_height.url