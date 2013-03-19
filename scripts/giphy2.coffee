# Description:
#   A way to search images on giphy.com
#
# Commands:
#   hubot gif me <query> - Returns an animated gif matching the requested search term.

module.exports = (robot) ->
  robot.respond /(gif|giphy)( me)? (.*)/i, (msg) ->
    q = tag: msg.match[3]
    msg.http('http://giphy.com/api/gifs/search')
      .query(q)
      .get() (err, res, body) ->
        response = JSON.parse(body)
        images = response.data
        if images.length > 0
          image = msg.random images
          msg.send image.thumbnail_url