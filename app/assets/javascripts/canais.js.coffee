jQuery ->
  $chat = $("#chat")
  $chat.scrollTop $chat[0].scrollHeight

  updateListeners = ->
    $.ajax
      url: "http://views-debateaberto.herokuapp.com/viewers/sociedadecivil"
      dataType: 'jsonp'
      success: (response) ->
        if response
          html = "<div class='usuarios-online'>"
          html += "<i class='icon-eye-open'></i> "
          html += response.current_listeners
          html += "</div>"
          html += "<div class='record-usuarios-online'>"
          html += "<i class='icon-signal'></i> "
          html += response.peak_listeners
          html += "</div>"
          html += "</div>"
          $('div.telespectadores').html(html)

  updateListeners()
  setInterval updateListeners, 5000
