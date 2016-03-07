function calculator() {
  var action = function() {
                var e = window.event;
                var btn = e.target || e.srcElement;

                var value = document.getElementById(btn.id).innerHTML;
                var results = document.getElementById("res");
                if (value == "C") {
                  results.innerHTML = "";

                } else if (value == "=") {
                    var values = getOperandsAndOperator();
                      if (values[0] == "+") {
                        var sum = add(values[1], values[2]);
                        results.innerHTML = sum;
                      }
                } else {
                    var resultsValue = results.innerHTML;
                    results.innerHTML = resultsValue + value;
                }
            };
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
  var resContents = (document.getElementById("res")).innerHTML.trim();
  var operator = (resContents.match(/[\/\+\-\*]/))[0];
  var operands = resContents.split(operator);
  var operand1 = parseInt(operands[0], 2);
  var operand2 = parseInt(operands[1], 2);
  return [operator, operand1, operand2]

}

function add(value1, value2) {
  var sum = parseInt(value1+value2, 10).toString(2);
  return sum
}
