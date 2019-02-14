document.addEventListener 'turbolinks:load', ->
App.room = App.cable.subscriptions.create { channel: "RoomChannel", room_id: $('#messages').data('room_id') },
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  speak: (message) ->
    # サーバーサイドのspeakアクションを呼び出す
    @perform 'speak', message: message

  received: (data) ->
    # サーバーからデーターを受け取った後の処理
    $('#messages').append data['message']

# テキストボックスのkeypressイベントを定義
$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()

