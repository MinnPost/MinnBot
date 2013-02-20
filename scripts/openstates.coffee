# Description:
#   Some interaction with openstates
#
# Dependencies:
#   None
#
# Configuration:
#   SUNLIGHT_API_KEY
#   HUBOT_MY_STATE
#
#Note: currently doesn't work!
# Commands:
#
# Author:
#   tom
apikey = '1e1c9b31bf15440aacafe4125f221bf2'
state = 'MN'

module.exports = (robot) ->
  robot.respond /who represents (.+)\?/i, (msg) ->
      #state = 'MN'
      #apikey = '1e1c9b31bf15440aacafe4125f221bf2'
      district = msg.match[1]
      msg
      .http("http://openstates.org/api/v1/legislators/")
      .query(state: state,apikey: apikey,district:district)
      .get() (err, res, body) ->
        if err
          msg.send "OpenStates says #{err}"
        content = JSON.parse(body)
        if content[0].chamber == 'lower'
          title = 'Rep.'
        if content[0].chamber == 'upper'
          title = 'Sen.'
        msg.send "#{title} #{content[0].full_name} (#{content[0].party})"
  	
