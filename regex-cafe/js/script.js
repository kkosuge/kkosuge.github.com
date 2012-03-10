var check;

check = function() {
  var content, i, re, regex_opt, regex_str, result, results, text, _len, _results;
  regex_str = $("#regex-str").val();
  regex_opt = $("#regex-opt").val();
  text = $("#text").val();
  re = new RegExp(regex_str, regex_opt);
  results = text.match(re);
  $("#match-results").html('');
  _results = [];
  for (i = 0, _len = results.length; i < _len; i++) {
    result = results[i];
    content = "<div class=\"results\">" + i + ": " + result + "</div>";
    _results.push($("#match-results").append(content));
  }
  return _results;
};

$(function() {
  $('#regex-str').bind('textchange', function(event, previousText) {
    return check();
  });
  $('#regex-opt').bind('textchange', function(event, previousText) {
    return check();
  });
  return $('#text').bind('textchange', function(event, previousText) {
    return check();
  });
});
