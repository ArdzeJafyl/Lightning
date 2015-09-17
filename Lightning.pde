int locX, locY;
int ranX, ranY;
int alphaVal;
PImage img;

void setup()
{
	img = loadImage("city.png");
	locX = 300;
	locY = 0;
	alphaVal = 0;
	size(600,800);
	frameRate(30);
}
void draw()
{
	background(0);
	bolt();
	if(alphaVal > 0){
		alphaVal = alphaVal-10;
	}
	noStroke();
	fill(150,150,150,alphaVal);
	rect(0,0,600,800);
	image(img,0,670,600,200);
}
void mousePressed()
{
	redraw();
	locX = 300;
	locY = 0;
	alphaVal = 150;
}

void bolt(){
	strokeWeight(3);
	stroke(220,237,237);
	while(locY < 800){
		ranX = (int)(Math.random()*-19)+9;
		ranY = (int)(Math.random()*9)+1;
		line(locX, locY, locX + ranX, locY + ranY);
		locX = locX + ranX;
		locY = locY + ranY;
	}
}