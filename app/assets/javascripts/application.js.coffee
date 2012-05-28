#= require jquery
#= require jquery_ujs
#= require bootstrap-all
#= require flash_msg
#= require handlebars.runtime
#= require video
#= require_tree ../templates
#= require private_pub
#= require_tree .

_V_.options.flash.swf = "/assets/video-js.swf"

jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  $(".recuperar, .cadastrar").click ->
    $(".modal").modal('hide')
