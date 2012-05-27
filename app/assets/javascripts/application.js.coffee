#= require jquery
#= require jquery_ujs
#= require bootstrap-all
#= require_tree .

jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  $(".recuperar, .cadastrar").click ->
    $(".modal").modal('hide')
