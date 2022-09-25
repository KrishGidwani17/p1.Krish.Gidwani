/*

Krish Gidwani
CS 3366 Section 002 - Human Computer Interaction

Project 1

This Processing project simulates the design of a touch-screen elevator
control interface

This interface is fully interactive and changes bassed on the users input

*/

//defining variables

int roundedRadius = 20;
int otherBorderLength = 6;
int textSizeVal = 25;

int upOrDown = 0;

String cleanedHourVal;
String cleanedMinuteVal;
String cleanedSecondVal;

String cleanedMonthVal;

//base rectangle values
int baseX, baseY; //posistions of the base pane of interface
int baseSizeLength = 450; //diameter of the rectangle
int baseSizeWidth = 900;
int baseBorderLength = 10;

//today view values
int todayX, todayY;
int todayLength = 400;
int todayWidth = 100;

int todayTextX = 200;
int todayTextY = 100; 
String todayDisplayTextVal;

//current floor text
int floorTextX, floorTextY;
String currentFloorText = "Current Floor";

//current floor number
int floorNumberX, floorNumberY;
int currentFloorValue;
int currentFloorWidth = 150;
int currentFloorLength = 75;

//current floor text
int floorNumberTextX = 367;
int floorNumberTextY = 280;

//current floor arrows



//select a floor text
int selectTextX, selectTextY;
String selectText = "Select A Floor";

//displaying users input
String floorNumberTextValue = ""; 
int userInX = 215;
int userInY = 425;

//Select pannel base
int selectBaseX, selectBaseY;
int selectBaseWidth = 400;
int selectBaseLength = 325;

//select pannel inputed text
int selectInX = 200;
int selectInY = 415;
int selectInWidth = 350;
int selectInLength = 60;

//backspace button 
int backspaceX = 200;
int backspaceY = 655;
int backspaceWidth = 100;
int backspaceLength = 50;

//go button
int goX = 450;
int goY = 655;
int goWidth = 100;
int goLength = 50;

//open button
int openX = 250;
int openY = 750;
int openWidth = 100;
int openLength = 50;

//close button
int closeX = 400;
int closeY = 750;
int closeWidth = 100;
int closeLength = 50;

//emergency bell button
int emergencyBellX = 175;
int emergencyBellY = 825;
int emergencyBellWidth = 75;
int emergencyBellLength = 75;

//emergency call button
int emergencyCallX = 500;
int emergencyCallY = 825;
int emergencyCallWidth = 75;
int emergencyCallLength = 75;

//now we will setup our button boolean variables
boolean over1 = false;
boolean over2 = false;
boolean over3 = false;
boolean over4 = false;
boolean over5 = false;
boolean over6 = false;
boolean over7 = false;
boolean over8 = false;
boolean over9 = false;
boolean over0 = false;
boolean overClose = false;
boolean overOpen = false;
boolean overPhone = false;
boolean overBell = false;
boolean overBackspace = false;
boolean overGo = false;

//defining button variables
int buttonNum1X = 200;
int buttonNum1Y = 500;
int buttonNum1Width = 100;
int buttonNum1Length = 50;

int buttonNum1TextX = 245;
int buttonNum1TextY = 530;
String buttonNum1Text = "1";

int buttonNum2X = 325;
int buttonNum2Y = 500;
int buttonNum2Width = 100;
int buttonNum2Length = 50;

int buttonNum2TextX = 370;
int buttonNum2TextY = 530;
String buttonNum2Text = "2";

int buttonNum3X = 450;
int buttonNum3Y = 500;
int buttonNum3Width = 100;
int buttonNum3Length = 50;

int buttonNum3TextX = 495;
int buttonNum3TextY = 530;
String buttonNum3Text = "3";

int buttonNum4X = 200;
int buttonNum4Y = 550;
int buttonNum4Width = 100;
int buttonNum4Length = 50;

int buttonNum4TextX = 245;
int buttonNum4TextY = 580;
String buttonNum4Text = "4";

int buttonNum5X = 325;
int buttonNum5Y = 550;
int buttonNum5Width = 100;
int buttonNum5Length = 50;

int buttonNum5TextX = 370;
int buttonNum5TextY = 580;
String buttonNum5Text = "5";

int buttonNum6X = 450;
int buttonNum6Y = 550;
int buttonNum6Width = 100;
int buttonNum6Length = 50;

int buttonNum6TextX = 495;
int buttonNum6TextY = 580;
String buttonNum6Text = "6";

int buttonNum7X = 200;
int buttonNum7Y = 600;
int buttonNum7Width = 100;
int buttonNum7Length = 50;

int buttonNum7TextX = 245;
int buttonNum7TextY = 630;
String buttonNum7Text = "7";

int buttonNum8X = 325;
int buttonNum8Y = 600;
int buttonNum8Width = 100;
int buttonNum8Length = 50;

int buttonNum8TextX =370;
int buttonNum8TextY = 630;
String buttonNum8Text = "8";

int buttonNum9X = 450;
int buttonNum9Y = 600;
int buttonNum9Width = 100;
int buttonNum9Length = 50;

int buttonNum9TextX = 495;
int buttonNum9TextY = 630;
String buttonNum9Text = "9";

int buttonNum0X = 325;
int buttonNum0Y = 655;
int buttonNum0Width = 100;
int buttonNum0Length = 50;

int buttonNum0TextX = 370;
int buttonNum0TextY = 685;
String buttonNum0Text = "0";



//defining basic colors
color infoColor;
color emergencyColor;
color selectColor;
color textColor;
color baseColor;
color hoverColor;
color hoverEmergencyColor;
color hoverSelectColor;

//button colors
color buttonColor1;
color buttonColor2;
color buttonColor3;
color buttonColor4;
color buttonColor5;
color buttonColor6;
color buttonColor7;
color buttonColor8;
color buttonColor9;
color buttonColor0;

//images
PImage bellImg;
PImage phoneImg;


//setup function -> ran once
void setup() {
  
  //loading in images
  bellImg = loadImage("bell.png");
  phoneImg = loadImage("phone.png");
  
  //window size
  size(800, 975);

  //base rectangle features
  baseX = 150;
  baseY = 40;
  
  //today view features
  todayX = 175;
  todayY = 60;
  
  //setting up initial display text
  todayDisplayTextVal = "";
  
  //floor text
  floorTextX = 307;
  floorTextY = 210;
  
  //current floor features
  floorNumberX = 300;
  floorNumberY = 230;
  
  //select a floor text
  selectTextX = 300;
  selectTextY = 370;
  
  //control pannel selection base
  selectBaseX = 175;
  selectBaseY = 400;
  
  
  //setting up colors
  infoColor = color(132,138,129); //colors in all displays
  emergencyColor = color(153, 27, 15); //higlighted emergency buttons
  selectColor = color(74, 204, 57); //go button
  textColor = color(0); // color of text
  baseColor = color(92, 97, 90);
  hoverColor = color(212, 207, 207);
  hoverEmergencyColor = color(179, 96, 96);
  hoverSelectColor = color(152, 222, 140);
  
  //button colors
  buttonColor1 = color(132,138,129);
  buttonColor2 = color(132,138,129);
  buttonColor3 = color(132,138,129);
  buttonColor4 = color(132,138,129);
  buttonColor5 = color(132,138,129);
  buttonColor6 = color(132,138,129);
  buttonColor7 = color(132,138,129);
  buttonColor8 = color(132,138,129);
  buttonColor9 = color(132,138,129);
  buttonColor0 = color(132,138,129);


}

//draw function -> runs continuously
void draw () {

  //defining base rectangle pane
  fill(baseColor);
  stroke(textColor);
  strokeWeight(baseBorderLength);
  rect(baseX, baseY, baseSizeLength, baseSizeWidth, roundedRadius);
  
  //defining today view display pannel
  fill(infoColor);
  stroke(textColor);
  strokeWeight(otherBorderLength);
  rect(todayX, todayY, todayLength, todayWidth, roundedRadius);
  
  
  //defining initial info in today display text
  todayDisplayTextVal = displayTodayMessage();
  
  fill(textColor);
  textSize(28);
  text(todayDisplayTextVal, todayTextX, todayTextY);
    
  
  //current floor text
  fill(textColor);
  textSize(textSizeVal);
  text(currentFloorText, floorTextX, floorTextY);
  
  //current floor display value
  fill(infoColor);
  stroke(textColor);
  strokeWeight(otherBorderLength);
  rect(floorNumberX, floorNumberY, currentFloorWidth, currentFloorLength, roundedRadius);
  
  //text for current floor
  fill(textColor);
  textSize(40);
  text(currentFloorValue, floorNumberTextX, floorNumberTextY);
  
  if (int(floorNumberTextValue) == 0) {
    upOrDown = 0;
  }
  
  else if (int(currentFloorValue) < int(floorNumberTextValue)) {
    upOrDown = 1;
  }
  
  else if (int(currentFloorValue) > int(floorNumberTextValue)) {
    upOrDown = 2;
  }

  
  //select a floor text
  fill(textColor);
  textSize(textSizeVal);
  text(selectText, selectTextX, selectTextY);
  
  //arrows
  //base case
  if (upOrDown == 0) {
    stroke(textColor);
    line(320, 265, 340, 265);
  }
  
  //up arrow case
  if (upOrDown == 1) {
    stroke(textColor);
    line(330, 250, 330, 280);
    line(330, 250, 320, 265);
    line(330, 250, 340, 265);
  }
  
  //down arrow case
  if (upOrDown == 2) {
    stroke(textColor);
    line(330, 250, 330, 280);
    line(330, 280, 320, 265);
    line(330, 280, 340, 265);
  }
  
  //select base 
  fill(infoColor);
  stroke(textColor);
  strokeWeight(otherBorderLength);
  rect(selectBaseX, selectBaseY, selectBaseWidth, selectBaseLength, roundedRadius);
  
  //selct inputed text
  fill(baseColor);
  stroke(textColor);
  strokeWeight(otherBorderLength);
  rect(selectInX, selectInY, selectInWidth, selectInLength, roundedRadius);
  
  //live user input
  fill(textColor);
  textSize(textSizeVal);
  text(floorNumberTextValue, 220, 450);
  
  //backspace button
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (overBackspace) {
    fill(hoverEmergencyColor);
  }
  
  else {
    fill(emergencyColor);
  }
  
  
  stroke(infoColor);
  rect(backspaceX, backspaceY, backspaceWidth, backspaceLength, roundedRadius);
  
  //backspace design
  stroke(textColor);
  line(230, 670, 270, 690);
  line(270, 670, 230, 690);
  
  //go button
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (overGo) {
    fill(hoverSelectColor);
  }
  
  else {
    fill(selectColor);
  }
  
  stroke(infoColor);
  rect(goX, goY, goWidth, goLength, roundedRadius);
  
  //go design
  fill(textColor);
  textSize(textSizeVal);
  text("GO", 485, 690);
  
  //open button
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (overOpen) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor1);
  }
  
  
  stroke(textColor);
  strokeWeight(otherBorderLength);
  rect(openX, openY, openWidth, openLength, roundedRadius);
  
  //design on open button
  fill(textColor);
  triangle(276, 768, 276, 780, 268, 774);
  rect(296, 764, 8, 20);
  triangle(325, 768, 325, 780, 333, 774);
  
  //close button
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (overClose) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor1);
  }
  
  stroke(textColor);
  strokeWeight(otherBorderLength);
  rect(closeX, closeY, closeWidth, closeLength, roundedRadius);
  
  //design on close button
  fill(textColor);
  triangle(420, 768, 420, 780, 430, 774);
  rect(445, 764, 8, 20);
  triangle(480, 768, 480, 780, 470, 774);
  
  //emergency bell button
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (overBell) {
    fill(hoverEmergencyColor);
  }
  
  else {
    fill(emergencyColor);
  }
  
  stroke(textColor);
  strokeWeight(otherBorderLength);
  rect(emergencyBellX, emergencyBellY, emergencyBellWidth, emergencyBellLength, roundedRadius);
  
  //design on bell button
  image(bellImg, 188, 833, width/16, height/16);
  
  //emergency call button
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (overPhone) {
    fill(hoverEmergencyColor);
  }
  
  else {
    fill(emergencyColor);
  }
  
  stroke(textColor);
  strokeWeight(otherBorderLength);
  rect(emergencyCallX, emergencyCallY, emergencyCallWidth, emergencyCallLength, roundedRadius);
  
  //design on call button
  image(phoneImg, 515, 833, width/16, height/16);
  
  
  
  //buttons
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over1) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor1);
  }
  
  
  //defining buttons
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum1X, buttonNum1Y, buttonNum1Width, buttonNum1Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum1Text, buttonNum1TextX, buttonNum1TextY);
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over2) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor2);
  }
  
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum2X, buttonNum2Y, buttonNum2Width, buttonNum2Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum2Text, buttonNum2TextX, buttonNum2TextY);
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over3) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor3);
  }
  
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum3X, buttonNum3Y, buttonNum3Width, buttonNum3Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum3Text, buttonNum3TextX, buttonNum3TextY);
  
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over4) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor4);
  }
  
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum4X, buttonNum4Y, buttonNum4Width, buttonNum4Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum4Text, buttonNum4TextX, buttonNum4TextY);
  
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over5) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor5);
  }
  
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum5X, buttonNum5Y, buttonNum5Width, buttonNum5Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum5Text, buttonNum5TextX, buttonNum5TextY);
  
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over6) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor6);
  }
  
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum6X, buttonNum6Y, buttonNum6Width, buttonNum6Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum6Text, buttonNum6TextX, buttonNum6TextY);
  
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over7) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor7);
  }
  
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum7X, buttonNum7Y, buttonNum7Width, buttonNum7Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum7Text, buttonNum7TextX, buttonNum7TextY);
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over8) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor9);
  }
  
  
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum8X, buttonNum8Y, buttonNum8Width, buttonNum8Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum8Text, buttonNum8TextX, buttonNum8TextY);
  
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over9) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor9);
  }
  
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum9X, buttonNum9Y, buttonNum9Width, buttonNum9Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum9Text, buttonNum9TextX, buttonNum9TextY);
  
  update(mouseX, mouseY);
  
  //based on mouse change color of button
  if (over0) {
    fill(hoverColor);
  }
  
  else {
    fill(buttonColor0);
  }
  
  stroke(infoColor);
  strokeWeight(otherBorderLength);
  rect(buttonNum0X, buttonNum0Y, buttonNum0Width, buttonNum0Length, roundedRadius);
  
  //button text
  fill(textColor);
  textSize(textSizeVal);
  text(buttonNum0Text, buttonNum0TextX, buttonNum0TextY);
  
  
  
  //elevator company text
  fill(textColor);
  textSize(textSizeVal);
  text("Elevator Company Inc.", 263, 925);


}

//updates mouse posistion


//functions to see if mouse is over certain button

void update(int x, int y) {
  if (overButton1(buttonNum1X, buttonNum1Y, buttonNum1Width, buttonNum1Length)) {
    over1 = true;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false; 
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overButton2(buttonNum2X, buttonNum2Y, buttonNum2Width, buttonNum2Length)){
    over1 = false;
    over2 = true;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overButton3(buttonNum3X, buttonNum3Y, buttonNum3Width, buttonNum3Length)){
    over1 = false;
    over2 = false;
    over3 = true;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overButton4(buttonNum4X, buttonNum4Y, buttonNum4Width, buttonNum4Length)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = true;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overButton5(buttonNum5X, buttonNum5Y, buttonNum5Width, buttonNum5Length)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = true;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overButton6(buttonNum6X, buttonNum6Y, buttonNum6Width, buttonNum6Length)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = true;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overButton7(buttonNum7X, buttonNum7Y, buttonNum7Width, buttonNum7Length)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = true;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overButton8(buttonNum8X, buttonNum8Y, buttonNum8Width, buttonNum8Length)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = true;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overButton9(buttonNum9X, buttonNum9Y, buttonNum9Width, buttonNum9Length)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = true;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overButton0(buttonNum0X, buttonNum0Y, buttonNum0Width, buttonNum0Length)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = true;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overOpenButton(openX, openY, openWidth, openLength)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = true;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overCloseButton(closeX, closeY, closeWidth, closeLength)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = true;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overPhoneButton(emergencyCallX, emergencyCallY, emergencyCallWidth, emergencyCallLength)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = true;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overBellButton(emergencyBellX, emergencyBellY, emergencyBellWidth, emergencyBellLength)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = true;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
  
  else if (overBackspaceButton(backspaceX, backspaceY, backspaceWidth, backspaceLength)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = true;
    overGo = false;
  }
  
  else if (overGoButton(goX, goY, goWidth, goLength)){
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = true;
  }
  
  else {
    over1 = false;
    over2 = false;
    over3 = false;
    over4 = false;
    over5 = false;
    over6 = false;
    over7 = false;
    over8 = false;
    over9 = false;
    over0 = false;
    overClose = false;
    overOpen = false;
    overBell = false;
    overPhone = false;
    overBackspace = false;
    overGo = false;
  }
}

void mousePressed() {
  if (over1) {
    floorNumberTextValue = floorNumberTextValue + "1";
  }
  
  if (over2) {
    floorNumberTextValue = floorNumberTextValue + "2";
  }
  
  if (over3) {
    floorNumberTextValue = floorNumberTextValue + "3";
  }

  if (over4) {
    floorNumberTextValue = floorNumberTextValue + "4";
  }
  
  if (over5) {
    floorNumberTextValue = floorNumberTextValue + "5";
  }
  
  if (over6) {
    floorNumberTextValue = floorNumberTextValue + "6";
  }
  
  if (over7) {
    floorNumberTextValue = floorNumberTextValue + "7";
  }
  
  if (over8) {
    floorNumberTextValue = floorNumberTextValue + "8";
  }
  
  if (over9) {
    floorNumberTextValue = floorNumberTextValue + "9";
  }
  
  if (over0) {
    floorNumberTextValue = floorNumberTextValue + "0";
  }
  
  if (overClose) {
  }
  
  if (overOpen) {
  }
  
  if (overPhone) {
  }
  
  if (overBell) {
  }
  
  if (overGo) {
    currentFloorValue = int(floorNumberTextValue);
    floorNumberTextValue = "";
  }
  
  if (overBackspace) {
    if (floorNumberTextValue.length() > 0){
      floorNumberTextValue = floorNumberTextValue.substring(0, floorNumberTextValue.length() - 1);
    }
  }
}

String displayTodayMessage() {
  
  if (overClose) {
    todayDisplayTextVal = "Doors Are Closing";
    return todayDisplayTextVal;
  }
  
  if (overOpen) {
    todayDisplayTextVal = "Doors Are Holding";
   return todayDisplayTextVal;
  }
  
  if (overPhone) {
    todayDisplayTextVal = "Phone Call Initiated";
    return todayDisplayTextVal;
  }
  
  if (overBell) {
    todayDisplayTextVal = "Alarm Bell Initiated";
    return todayDisplayTextVal;
  }
  
  else {
    //logic to display correct time
    int hourVal = hour();
    int minuteVal = minute();
    int secondVal = second();
    
    if (hourVal > 12) {
      hourVal = hourVal - 12;
    }
    
    if (hourVal < 10) {
      cleanedHourVal = "0" + str(hourVal);
    }
    
    else {
      cleanedHourVal = str(hourVal);
    }
    
    if (minuteVal < 10) {
      cleanedMinuteVal = "0" + str(minuteVal);
    }
    
    else {
      cleanedMinuteVal = str(minuteVal);
    }
    
    if (secondVal < 10) {
      cleanedSecondVal = "0" + str(secondVal);
    }
    
    else {
      cleanedSecondVal = str(secondVal);
    }
    
    //now displaying the date
    int dayVal = day();
    int monthVal = month();
    int yearVal = year();
    
    //getting month string
    if (monthVal == 1){
      cleanedMonthVal = "January";
    }
    
    else if (monthVal == 2){
      cleanedMonthVal = "Frebruary";
    } 
    
    else if (monthVal == 3){
      cleanedMonthVal = "March";
    } 
    
    else if (monthVal == 4){
      cleanedMonthVal = "April";
    } 
    
    else if (monthVal == 5){
      cleanedMonthVal = "May";
    } 
    
    else if (monthVal == 6){
      cleanedMonthVal = "June";
    } 
    
    else if (monthVal == 7){
      cleanedMonthVal = "July";
    } 
    
    else if (monthVal == 8){
      cleanedMonthVal = "August";
    } 
    
    else if (monthVal == 9){
      cleanedMonthVal = "September";
    } 
    
    else if (monthVal == 10){
      cleanedMonthVal = "October";
    } 
    
    else if (monthVal == 11){
      cleanedMonthVal = "November";
    } 
    
    else if (monthVal == 12){
      cleanedMonthVal = "December";
    } 
    
    
    //today view information
    todayDisplayTextVal = cleanedHourVal + ":" + cleanedMinuteVal + ":" + cleanedSecondVal + "\n" + cleanedMonthVal + " " + str(dayVal) + ", " + str(yearVal);
    return todayDisplayTextVal;
  }
}

boolean overBackspaceButton (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overGoButton (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}


boolean overCloseButton (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overOpenButton (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overPhoneButton (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overBellButton (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton1 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton2 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton3 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton4 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton5 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton6 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton7 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton8 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton9 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

boolean overButton0 (int x, int y, int width, int height){
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}
