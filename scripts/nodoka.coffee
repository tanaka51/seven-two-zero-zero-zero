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
    msg.send """
https://idobata.s3.amazonaws.com/uploads/attachment/image/3131/8cdea512-cbe8-4024-85ce-e7779256183a/__________2014-05-15_13.58.36.png
https://idobata.s3.amazonaws.com/uploads/attachment/image/3132/7075df35-d113-4428-8bd3-92aaf53e102f/__________2014-05-15_13.58.55.png
"""
  robot.hear /牌/i, (msg) ->
    msg.send "http://haigacat.herokuapp.com/1z333505777p0z77s0z.gif"
  robot.respond /RULE$/i, (msg) ->
    msg.send "http://tenhou.net/man/#RULE"
  robot.hear /FLADA_AUXV\.WISHLIST/i, (msg) ->
    msg.send "['彼女', '布団', '冷蔵庫', '洗濯機', '机', '椅子', '電子レンジ']"
