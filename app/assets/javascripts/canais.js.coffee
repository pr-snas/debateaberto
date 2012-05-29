jQuery ->
  window.usuarios_online = 0
  window.record_usuarios = 0

  PrivatePub.subscribe "/telespectadores", (data) ->
    if data.online > window.usuarios_online && data.record > window.record_usuarios
      window.usuarios_online = data.online
      window.record_usuarios = data.record
      $(".info .telespectadores").html(JST['canais/info'](data))
