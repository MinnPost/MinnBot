# Description:
#   Get a list of all the anagrams locked inside a word
#
# Commands:
#   hubot anagram me a word - Returns all anagrams of a word

module.exports = (robot) ->
  robot.respond /(anagram me) ([^\s]+)/i, (msg) ->
    q = msg.match[2]
    msg.http('http://www.anagramica.com/all/:'+q)
      .get() (err, res, body) ->
        response = JSON.parse(body)
        message = ""
        message += line + "\n" for line in response.all
        msg.send message