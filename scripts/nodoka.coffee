# Description:
#
# Commands:
#   hubot command - desc

module.exports = (robot) ->
  robot.respond /SCORE$/i, (msg) ->
    msg.send "https://docs.google.com/spreadsheets/d/14Q64dLEQxldWD-yDEbpRU144L11LRpHmYr0aEKxdI5A/edit#gid=0"
