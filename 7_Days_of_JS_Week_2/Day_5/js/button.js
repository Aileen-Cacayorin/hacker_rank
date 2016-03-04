function add() {
  var button = document.getElementById("btn");
  debugger;
  var old_value = parseInt(button.innerHTML);
  var new_value = old_value+1;
  button.innerHTML = new_value;

}
