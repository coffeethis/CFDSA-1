var myQuotes = new Array();

myQuotes[0] = "Logic will get you form A to B. Imagination will take you everywhere.";
myQuotes[1] = "There are 10 kinds of people. Those who know binary and those who don't.";
myQuotes[2] = "There are two ways of constructing a software design. One way is to make it so simple that there are obviously no deficiencies and the other is to make it so complicated that thereare no obvious deficiencies.";
myQuotes[3] = "It's not that I'm so smart, it's just that I stay with problems longer.";
myQuotes[4] = "It is pitch dark. You are likely to be eaten by a grue.";

var myRandom = Math.floor(Math.random()*myQuotes.length);

$('#myQuote').html(myQuotes[myRandom]);