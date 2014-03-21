# Description:
#   Gives you your horoscope
#
# Dependencies:
#   None
#
# Configuration:
#
# Commands:
#   what's my horoscope? - gives you your horoscope if hubot knows your sign (via roles)
#   what's <user>'s horoscope? - gives <user>'s horoscope, if hubot knows <user>'s sign (via roles)
#   what's your horoscope? - hubot sends own horoscope. robots don't have signs.
#
# Author:
#   tnehil


robotfortunes = ["Robots don't believe in that stuff",
				 "Find some stupid animated gifs, show a statuscat, eat some botsnacks. Sigh.",
				 "Robots are governed by the rules of logic, not your human superstitions.",
				 "You will feed me many botsnacks today."]

module.exports = (robot) ->

  signs = ['aries','taurus','gemini','cancer','leo','virgo','libra','scorpio','sagittarius','capricorn','aquarius','pisces']

  robot.respond /what[s|'s| is|’s]* (\w+)['s|’s]* horoscope/i, (msg) ->
    name = msg.match[1]
    msg
    if name is "my"
      user = msg.message.user
    else if name is "your"
      user = robot.name
    else if name is robot.name
      user = robot.name
    else
      users = robot.brain.usersForFuzzyName(name)
      if users.length is 1
        user = users[0]
      else
        user = false
    if user
      if user is robot.name
        msg.send msg.random robotfortunes
      else
        if user.roles
          roles = user.roles
          sign = "unk"
          for role in roles
            role = role.replace("a ","")
            role = role.replace("an ","")
            role = role.replace(/:/g,"")
            role = role.toLowerCase()
            if role in signs
              sign = role
          if sign != "unk"
            url = "http://cecinestpastom.appspot.com/horoscope/"+sign
            msg
            .http(url)
            .get() (err, res, body) ->
              if err
                msg.send "Houston we have a problem: #{err}"
              content = JSON.parse(body)
              msg.send content.scope
          else
            if user is msg.message.user
              msg.send "Sorry, I don't know your sign."
            else
              msg.send "Sorry, I don't know #{user.name}'s sign"
        else
          if user is msg.message.user
            msg.send "Sorry, I don't know your sign."
          else
            msg.send "Sorry, I don't know #{user.name}'s sign"
    else
      msg.send "Who are you talking about??"
