# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#


$(".top").height($(window).height())
$(".spacing").css("margin-bottom", $(window).height()/5)

$(".down__arrow").click ->
  $("html, body").animate({scrollTop: $(".top").height()})
