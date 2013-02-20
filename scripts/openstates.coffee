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
#   who represents <district>? - returns legislator representing given district number
#   who does <firstname lastname> represent? - returns district represented by legislator
#   bill status <bill_no> returns last action, date, and title of a given bill (space between SF/HF and bill number)
# Author:
#   tom
apikey = process.env.SUNLIGHT_API_KEY
state = process.env.HUBOT_MY_STATE

module.exports = (robot) ->

  #look up legislator by district -- return name, title party
  robot.respond /who represents (.+)\?/i, (msg) ->
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
        msg.send content[0].photo_url
        msg.send "#{title} #{content[0].full_name} (#{content[0].party})"

  #look up a legislators district - return district  	
  robot.respond /who does (.+)represent\?/i, (msg) ->
    legfull = msg.match[1].split " "
    first = legfull[0]
    last = legfull.pop()
    msg
      .http("http://openstates.org/api/v1/legislators/")
      .query(state: state,apikey: apikey,first_name:first,last_name:last)
      .get() (err, res, body) ->    
        if err
          msg.send "OpenStates says #{err}"
        content = JSON.parse(body)
        msg.send content[0].district
        
  #look up bill status by bill number
  robot.respond /bill status (.+)/i, (msg) ->
    bill = msg.match[1].toUpperCase()
    d = new Date()
    n = d.getFullYear();
    if n % 2 == 0
      session = (n-1) + "-" + n
    else
      session = n + "-" + (n+1)
    url = "http://openstates.org/api/v1/bills/" + state + "\/" + session + "\/" + bill + "\/?apikey=" + apikey
    msg
      .http(url)
      .get() (err, res, body) ->    
        if err
          msg.send "OpenStates says #{err}"
        content = JSON.parse(body)
        actions = content.actions
        lastaction = actions.pop()
        action = lastaction.action
        actiondate = lastaction.date
        title = content.title
        msg.send "#{action} on #{actiondate} (#{title})"