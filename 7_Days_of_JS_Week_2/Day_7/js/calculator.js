function calculator() {
  var action = function() {
                var e = window.event;
                var btn = e.target || e.srcElement;

                document.getElementById(btn.id).innerHTML;
                debugger;
            };
  document.getElementById("btn0").addEventListener("click", action)
  document.getElementById("btn1").addEventListener("click", action)
  document.getElementById("btnClr").addEventListener("click", action)
  document.getElementById("btnEql").addEventListener("click", action)
  document.getElementById("btnSum").addEventListener("click", action)
  document.getElementById("btnSub").addEventListener("click", action)
  document.getElementById("btnMul).addEventListener("click", action)
  document.getElementById("btnDiv").addEventListener("click", action)
}
