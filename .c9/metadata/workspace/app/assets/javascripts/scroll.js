{"filter":false,"title":"scroll.js","tooltip":"/app/assets/javascripts/scroll.js","undoManager":{"mark":-1,"position":-1,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":32,"column":1},"action":"remove","lines":["$(document).on(\"scrollstart\", init);","","$(window).scroll(showHideNav);","","function init (){","\tconsole.log(\"ready\");","\tshowHideNav();","}","","function showHideNav (e){","","\tvar wrapperTop = $(\".wrapper\").position().top + $(\".wrapper\").height();","\tvar scrollPos = wrapperTop - 700;","\tvar top = $(window).scrollTop();","","\tif(top < scrollPos){","","\t\t$(\".navbar-fixed-bottom\").hide();","\t\t","\t}","","\telse {","\t\t","\t\t$(\".navbar-fixed-bottom\").show();","\t\t","","\t}","","\tconsole.log($(window).scrollTop());","\tconsole.log($(\".wrapper\").position().top);","\tconsole.log($(\".wrapper\").height());","","}"]}]}]]},"ace":{"folds":[],"scrolltop":126,"scrollleft":0,"selection":{"start":{"row":32,"column":1},"end":{"row":32,"column":1},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":8,"state":"no_regex","mode":"ace/mode/javascript"}},"timestamp":1426860828670,"hash":"d282991e7a3c58f751d4f721a9f5f5a35463bce4"}