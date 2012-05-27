$.fn.flashMsg = (obj) ->
  $wrap = $('<div class="alert"><ul></ul></div>')
  $ul = $wrap.find('ul')

  $(this).find('div.alert').remove()

  for errType, err of obj
    errType = errType.replace('errors', 'error')
    $wrap.addClass('alert-' + errType)
    if typeof err == 'object'
      $wrap.prepend('<p>Ops, aconteceu alguns erros no seu cadastro:</p>')
      for field, errMsgs of err
        $list = $('<li>').html("<strong>#{field}:</strong> #{errMsgs.join(', ')}")
        $ul.append($list)
    else
      $ul.append($('<li>').text(err))

  $(this).prepend($wrap)

  $wrap.fadeIn()
