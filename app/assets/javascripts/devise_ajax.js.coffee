jQuery ->
  $('#entrar form').submit ->
    $this = $(this)

    $.ajax
      url: $this.attr('action') + '.json'
      data: $this.serialize()
      type: 'POST'
      dataType: 'json'
      success: (response) ->
        $('.modal').modal('hide')
        $('.painel').html JST['shared/usuario_dropdown'](response)
      error: (error) ->
        $this.find('.modal-body').flashMsg JSON.parse error.responseText

    return false
