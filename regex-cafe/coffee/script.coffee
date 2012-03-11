check =->
  $("#match-results").html('')
  regex = new RegExp($("#regex-str").val(),$("#regex-opt").val())
  results = $("#text").val().match(regex)
  for result,i in results
    content = "<div class=\"results\">#{i}: #{result}</div>"
    $("#match-results").append(content)

$ ->
  $('#regex-str').bind('textchange', (event, previousText) -> check())
  $('#regex-opt').bind('textchange', (event, previousText) -> check())
  $('#text').bind('textchange', (event, previousText) -> check())
