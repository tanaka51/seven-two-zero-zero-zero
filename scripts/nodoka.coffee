# Description:
#
# Commands:
#   hubot command - desc

_ = require 'underscore'

module.exports = (robot) ->
  robot.respond /SCORE$/i, (msg) ->
    msg.send "https://docs.google.com/spreadsheets/d/14Q64dLEQxldWD-yDEbpRU144L11LRpHmYr0aEKxdI5A/edit#gid=0"
  robot.respond /HI$/i, (msg) ->
    msg.send "牌!"
  robot.respond /72000$/i, (msg) ->
    response = [
      'そんなオカルトありえません',
      'https://idobata.s3.amazonaws.com/uploads/attachment/image/2341/60b4e2b7-df23-491c-af2f-56b55863ce5f/image.jpg',
      'https://idobata.s3.amazonaws.com/uploads/attachment/image/2508/69a8c62a-0ca1-4ff4-9af5-00f31d4dfb60/72000.png',
    ]
    msg.send _(response).sample()
