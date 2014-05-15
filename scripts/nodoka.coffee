# Description:
#
# Commands:
#   hubot command - desc

module.exports = (robot) ->
  robot.respond /SCORE$/i, (msg) ->
    msg.send "https://docs.google.com/spreadsheets/d/14Q64dLEQxldWD-yDEbpRU144L11LRpHmYr0aEKxdI5A/edit#gid=0"
  robot.respond /HI$/i, (msg) ->
    msg.send "牌!"
  robot.respond /72000$/i, (msg) ->
    response = [
      'そんなオカルトありえません',
      ':seven: :two: :zero: :zero: :zero:',
      'https://idobata.s3.amazonaws.com/uploads/attachment/image/2341/60b4e2b7-df23-491c-af2f-56b55863ce5f/image.jpg',
      'https://idobata.s3.amazonaws.com/uploads/attachment/image/2508/69a8c62a-0ca1-4ff4-9af5-00f31d4dfb60/72000.png',
    ]
    msg.send msg.random response
  robot.respond /TEN$/i, (msg) ->
    msg.send 'https://idobata.s3.amazonaws.com/uploads/attachment/image/3108/1568ca1d-6f17-47fe-b6a0-cdec4f2a4740/mahjong_tensu.png'
  robot.hear /牌$/i, (msg) ->
    msg.send "http://haigacat.herokuapp.com/333555777p7777s1z.gif"
