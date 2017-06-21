# Description:
#   Get the latest tracks that have played in the office and some stats from
#   last.fm
#
# Commands:
# hubot what just played — 5 most recent songs (including currently playing song)
# hubot top artists — top ten artists played in last 7 days
# hubot top tracks/songs - top ten tracks played in last month
#
# Author:
# tnehil

api_key = process.env.HUBOT_LAST_FM_API_KEY
last_fm_url = "https://ws.audioscrobbler.com/2.0/"
user = "minnpost"
days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday","Saturday"]

module.exports = (robot) ->

  robot.respond /what just played/i, (msg) ->
    msg.http(last_fm_url)
      .query(api_key: api_key, method: 'user.getrecenttracks', user: user, limit: 4, format: 'json')
      .get() (err, res, body) ->
        if err
          msg.send "Error getting latest tracks: #{err}"
        else
          counter = 0
          message = "The last 5 tracks were: "
          content = JSON.parse(body)
          for track in content.recenttracks.track
            counter += 1
            if track.date
              played_on = new Date(track.date['#text'])
              day_of_week = days[played_on.getUTCDay()]
              hour = played_on.getHours()-5
              if hour < 0
                hour += 24
              minute = played_on.getMinutes()
              if minute < 10
                minute = "0" + minute
              playing_text = "(Played on #{day_of_week} @ #{hour}:#{minute})"
            else
              playing_text = "(Currently playing)"
            message += "\n#{counter}. '#{track.name}' by #{track.artist['#text']} #{playing_text}"
          msg.send message

  robot.respond /top artists/i, (msg) ->
    msg.http(last_fm_url)
      .query(api_key: api_key, method: 'user.gettopartists', user: user, limit: 10, period: '7day', format: 'json')
      .get() (err, res, body) ->
        if err
          msg.send "Error getting top artists: #{err}"
        else
          counter = 0
          message = "Top ten artists in the last 7 days:"
          content = JSON.parse(body)
          for artist in content.topartists.artist
            counter += 1
            message += "\n#{counter}. #{artist.name} (#{artist.playcount} plays)"
          msg.send message

  robot.respond /top (tracks|songs)/i, (msg) ->
    msg.http(last_fm_url)
      .query(api_key: api_key, method: 'user.gettoptracks', user: user, limit: 10, period: '1month', format: 'json')
      .get() (err, res, body) ->
        if err
          msg.send "Error getting top tracks: #{err}"
        else
          counter = 0
          message = "Top ten tracks in the last month:"
          content = JSON.parse(body)
          for track in content.toptracks.track
            counter += 1
            message += "\n#{counter}. '#{track.name}' by #{track.artist.name} (#{track.playcount} plays)"
          msg.send message
