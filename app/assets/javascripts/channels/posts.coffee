jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')
  if $('#messages').length > 0

    App.global_chat = App.cable.subscriptions.create {
        channel: "PostsChannel"
        
      },
      connected: ->
        # Called when the subscription is ready for use on the server

      disconnected: ->
        # Called when the subscription has been terminated by the server

      received: (data) ->
        post.append data['message']

      send_message: (body) ->
        @perform 'send_message', body: body

    $('#new_message').submit (e) ->
      $this = $(this)
      textarea = $this.find('#body')
      if $.trim(textarea.val()).length > 1
        App.global_chat.send_message textarea.val()
        textarea.val('')
      e.preventDefault()
      return false