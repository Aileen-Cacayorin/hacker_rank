function calculator() {
  var action = function() {
                var e = window.event; // looks for event in window, assigns var e to that event
                var btn = e.target || e.srcElement; // gets the clicked element - srcElement for IE, target for others

                var value = document.getElementById(btn.id).innerHTML; //gets value of btn
                var results = document.getElementById("res"); //gets value of res container
                if (value == "C") { //clears res container if btnClr is clicked
                  results.innerHTML = "";
                } else if (value == "=") { //runs calculation if btnEql is clicked
                    var new_value = getOperandsAndOperator()
                    results.innerHTML = new_value

                } else { //adds number to res container
                    var resultsValue = results.innerHTML;
                    results.innerHTML = resultsValue + value;
                };
            };
  // adds click event listner to btn and calls action() function whenever btn is clicked
  document.getElementById("btn0").addEventListener("click", action);
  document.getElementById("btn1").addEventListener("click", action);
  document.getElementById("btnClr").addEventListener("click", action);
  document.getElementById("btnEql").addEventListener("click", action);
  document.getElementById("btnSum").addEventListener("click", action);
  document.getElementById("btnSub").addEventListener("click", action);
  document.getElementById("btnMul").addEventListener("click", action);
  document.getElementById("btnDiv").addEventListener("click", action);
}

function getOperandsAndOperator() {
  var resContents = (document.getElementById("res")).innerHTML.trim(); // gets res contents as string and trims whitespaces
  var operator = (resContents.match(/[\/\+\-\*]/))[0]; //gets operator as string
  var operands = resContents.split(operator); //splits res contents along the operator
  var operand1 = parseInt(operands[0], 2); //converts operand1 from binary to base 10
  var operand2 = parseInt(operands[1], 2);// converts operand2 from binary to base 10
  return eval(operand1 + operator + operand2).toString(2) // calculates and then converts back to binary
}
