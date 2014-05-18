API_TOKEN  = process.env.HUBOT_IDOBATA_API_TOKEN
IdobataClient = require('idobata-client')

module.exports = (robot) ->
  class Quiz
    constructor: ->
      @answer = '72000'

    isCorrect: (answer) ->
      answer == @answer

    toHtml: ->
      """
        <p>子 0本場 ドラ <img width='48' src='http://haigacat.herokuapp.com/424z.gif'></p>
        <p>
          <img src='http://haigacat.herokuapp.com/1z333505777p0z77s0z.gif'>
          ロン <img src='http://haigacat.herokuapp.com/1z.gif'>
        </p>
      """

  currentQuiz = null

  robot.hear /^\d+(-\d+)?$/, (msg) ->
    return unless currentQuiz

    if currentQuiz.isCorrect msg.message.text
      msg.send 'true'

      currentQuiz = null
    else
      msg.send 'false'

  robot.respond /quiz$/i, (msg) ->
    return if currentQuiz

    currentQuiz = new Quiz

    client = new IdobataClient('https://idobata.io', API_TOKEN)
    client.postViaWebhook(msg.message.data.room_id, format: 'html', source: currentQuiz.toHtml())
