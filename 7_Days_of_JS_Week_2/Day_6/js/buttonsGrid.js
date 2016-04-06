function rotate() {
  var btn1 = document.getElementById("btn1"); //gets button element by id
  var old_btn1 = parseInt(btn1.innerHTML); //stores button value
  var btn2 = document.getElementById("btn2");
  var old_btn2 = parseInt(btn2.innerHTML);
  var btn3 = document.getElementById("btn3");
  var old_btn3 = parseInt(btn3.innerHTML);
  var btn4 = document.getElementById("btn4");
  var old_btn4 = parseInt(btn4.innerHTML);
  var btn6 = document.getElementById("btn6");
  var old_btn6 = parseInt(btn6.innerHTML);
  var btn7 = document.getElementById("btn7");
  var old_btn7 = parseInt(btn7.innerHTML);
  var btn8 = document.getElementById("btn8");
  var old_btn8 = parseInt(btn8.innerHTML);
  var btn9 = document.getElementById("btn9");
  var old_btn9 = parseInt(btn9.innerHTML);
  btn1.innerHTML = old_btn4;
  btn2.innerHTML = old_btn1;
  btn3.innerHTML = old_btn2;
  btn4.innerHTML = old_btn7;
  btn6.innerHTML = old_btn3;
  btn7.innerHTML = old_btn8;
  btn8.innerHTML = old_btn9;
  btn9.innerHTML = old_btn6;
}
