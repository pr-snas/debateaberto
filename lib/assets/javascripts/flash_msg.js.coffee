$.fn.flashMsg = (obj) ->
  $elem = $('<div class="alert"><p></p></div>')
  for errType, errText of obj
    $elem.addClass('alert-' + errType)
    $elem.fadeIn().find('p').text(errText)
  $(this).find('div.alert').remove()
  $(this).prepend($elem)
