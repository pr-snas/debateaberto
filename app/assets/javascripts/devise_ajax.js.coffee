jQuery ->
  sendForm = (callback) ->
    $this = $(this)
    $.ajax
      url: $this.attr('action') + '.json'
      data: $this.serialize()
      type: 'POST'
      dataType: 'json'
      success: (response) ->
        callback(response) if callback?
      error: (error) ->
        errorMsgs =
          'error': 'Ops, aconteceu um erro no servidor... Tente novamente mais tarde.'
        if error.status == 401 or error.status == 422
          errorMsgs = JSON.parse error.responseText
        $this.find('.modal-body').flashMsg errorMsgs

  $('#entrar form, #cadastrar form').submit ->
    sendForm.call this, (response) ->
      $('.modal').modal('hide')
      $('.painel').html JST['shared/usuario_dropdown'](response)
    return false

  $('#recuperar_senha form').submit ->
    sendForm.call this, (response) ->
      $('.modal').modal('hide')
      $('#recuperar_senha_ok').modal('show')
    return false
