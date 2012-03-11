check =->
  $("#match-results").html('')
  regex_str = $("#regex-str").val()
  regex_opt = $("#regex-opt").val()
  text = $("#text").val()
  re = new RegExp(regex_str,regex_opt)
  results = text.match(re)
  for result,i in results
    content = "<div class=\"results\">#{i}: #{result}</div>"
    $("#match-results").append(content)

$ ->
  $('#regex-str').bind('textchange', (event, previousText) -> check())
  $('#regex-opt').bind('textchange', (event, previousText) -> check())
  $('#text').bind('textchange', (event, previousText) -> check())
