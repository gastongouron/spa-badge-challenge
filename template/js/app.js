$(function () {
  // Grab the template script
  var theTemplateScript = $("#address-template").html();
  // console.log(theTemplateScript)
  // Compile the template
  var theTemplate = Handlebars.compile(theTemplateScript);
  // console.log(theTemplate)
  // Define our data object


var context = $.getJSON("http://localhost:3000/students",function(data){
  for(i = 0; i < data.length; i++) {
    // return()
    console.log(data[i]['name']);
  }
});

  var context=[{
    "city": "Everywhere",
    "street": "Baker Street",
    "number": "221B"
  },{
    "city": "ZZZZe",
    "street": "Baker Street",
    "number": "221B"
  }];

  // Pass our data to the template
  var theCompiledHtml = theTemplate(context);
  // console.log(theCompiledHtml)
  // Add the compiled html to the page
  $('.content-placeholder').html(theCompiledHtml);
});



// var parser = document.createElement('a');
// parser.href = "http://example.com:3000/pathname/?search=test#hash";

// parser.protocol; // => "http:"
// parser.hostname; // => "example.com"
// parser.port;     // => "3000"
// parser.pathname; // => "/pathname/"
// parser.search;   // => "?search=test"
// parser.hash;     // => "#hash"
// parser.host;     // => "example.com:3000"