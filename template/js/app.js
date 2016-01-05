//   var source   = $("#some-template").html() || '' ;
//   var template = Handlebars.compile(source);
//   var data = { people: [
//     {name: "Alan"},
//     {name: "Allison"},
//     {name: "Ryan"}
//     ], group: "Bloggers" };
//   $("#some-template").html(template(data));

// console.log(source)
$(function () {
  // Grab the template script
  var theTemplateScript = $("#address-template").html();

  // Compile the template
  var theTemplate = Handlebars.compile(theTemplateScript);

  // Define our data object
  var context={
    "city": "Everywhere",
    "street": "Baker Street",
    "number": "221B"
  };

  // Pass our data to the template
  var theCompiledHtml = theTemplate(context);

  // Add the compiled html to the page
  $('.content-placeholder').html(theCompiledHtml);
});
