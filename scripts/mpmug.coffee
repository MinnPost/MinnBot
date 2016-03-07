# Description:
#   Hubot hookup to MinnPost mug generating API
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot mug me 'Hilarious and irreverent slogan'
#
# Author:
#   tnehil

module.exports = (robot) ->
    robot.respond /mug me (.*)/i, (msg) ->
        q = msg.match[1]
        base_url = 'https://mpmugs.herokuapp.com/?q='
        mug = base_url + encodeURIComponent(q)
          .replace(/\./g, '%2E')
        msg.send mug
