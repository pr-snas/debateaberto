jQuery ->
  enviaFormulario = (callback) ->
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

  window.autenticaUsuario = (data) ->
    data = JSON.parse data if typeof data == 'string'
    $('.modal').modal('hide')
    $('.painel').html JST['shared/usuario_dropdown'](data)

  $('#entrar form, #cadastrar form').submit ->
    enviaFormulario.call this, (response) ->
      window.autenticaUsuario response
    return false

  $('#entrar form .provedores a').click ->
    width = $(this).data('width')
    height = $(this).data('height')
    left = (screen.width / 2) - (width / 2)
    top = (screen.height / 2) - (height / 2)
    window.open($(this).attr('href'), $(this).attr('title'),
      "menubar=no,toolbar=no,status=no,width=#{width},height=#{height},left=#{left},top=#{top}")
    return false

  $('#recuperar_senha form').submit ->
    enviaFormulario.call this, (response) ->
      $('.modal').modal('hide')
      $('#recuperar_senha_ok').modal('show')
    return false
