var circlesArray = [];
// var width = 100;
// var height = 100;

function setup() { 
  	var canvas = createCanvas(1000, 300);
	canvas.parent('sketch-holder');
	background(255);
	frameRate(30);
	
	for (var i=0; i<400; i++) {
    	circlesArray.push(new Circle());
  	}
	
} 

function draw() { 
  
	for (var i=0; i<circlesArray.length; i++) {
    circlesArray[i].update();
		circlesArray[i].show();
  }
}

function Circle() {
	this.x = random(width);
	this.y = 100;
	this.size = random(50);
	this.r = random(255);
    this.g = random(255);
    this.b = random(255);
	
	this.update = function() {
		this.y -= random(20);
		
		if (this.x > width || this.y < 0) {
			this.x = random(width);
			this.y = random(height);
		};
	};
	
	this.show = function() {
		fill(this.r, this.g, this.b, 150);
    noStroke();
		ellipseMode(CENTER);
		
		rect(this.x, this.y, this.size, this.size);
  };

}