// Arrays
var cloudX = [90, 160, 270, 330, 440];
var cloudY = [80, 60, 100, 70, 90];

var treeX = [100, 250, 400];
var coconutX = [65, 95, 155, 185, 240, 275, 320, 355, 400, 435];

// Custom function
var drawEmoji = function(emoji, x, y, size) {
  textSize(size);
  text(emoji, x, y);
};

var favoriteThing = prompt("What's your favorite thing about summer?");

void setup() {
  size(600, 450);
  background(173, 216, 230); // Sky blue
  fill(0); 
  textSize(16);
  text("You said: " + favoriteThing, 20, 30);

  
  // Ground
  noStroke();
  fill(255, 241, 170); // Sand
  rect(0, 350, width, 100);

  // Sun 
  drawEmoji("🌤", -85, 87, 345); 

  // Clouds
  for (var i = 0; i < cloudX.length; i++) {
    drawEmoji("☁️", cloudX[i], cloudY[i], 98);
  }

  // Palm Trees 
  for (var i = 0; i < treeX.length; i++) {
    drawEmoji("🌴", treeX[i], 376, 157); 
  }

// Coconuts 
for (var i = 0; i < coconutX.length; i++) {
  var xOffset = random(-5, 6);
  var yOffset = random(-6, 45);
  drawEmoji("🥥", coconutX[i] + xOffset, 385 + yOffset, 28);
}

}

