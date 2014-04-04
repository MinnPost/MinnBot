# Description:
#   Chartbeat integration for robot
#
# Dependencies:
#   None
#
# Configuration:
#   CHARTBEAT_API_KEY
#   HUBOT_CHARTBEAT_SITE
#
# Commands:
#   how's traffic? - returns current number of people on the site
#   top pages - list of 5 top pages in order with their current visitor counts
#
# Author:
#   tnehil

apikey = process.env.CHARTBEAT_API_KEY
mysite = process.env.HUBOT_CHARTBEAT_SITE

holds = [["Crappy.",0],["Meh.",300],["So-so.",400],["Not bad.",500],["Great!",600],["Booming!",700],["The servers are melting.",1000]]

module.exports = (robot) ->

  #get current traffic
  robot.respond /how('s| is|’s|s) traffic/i, (msg) ->
      msg
      .http("http://api.chartbeat.com/live/quickstats/v3/")
      .query(apikey: apikey, host:mysite)
      .get() (err, res, body) ->
        if err
          msg.send "Chartbeat says #{err}"
        content = JSON.parse(body)
        traffic = content.people
        for i in holds
          if traffic > i[1]
            threshold = i[0]
        msg.send "#{threshold} #{traffic} peeps on #{mysite}"

  #get top pages
  robot.respond /top pages/i, (msg) ->
    msg
    .http("http://api.chartbeat.com/live/quickstats/v3/")
    .query(apikey: apikey, host:mysite)
    .get() (err, res, body) ->
      if err
        msg.send "Chartbeat says #{err}"
      content = JSON.parse(body)
      toppages = content.toppages
      message = ""
      for page in toppages
        message += page.path + " (" + page.visitors + ")\n"
      msg.send message
