function getTwoNumbers(num1, num2) {
  var resultado = parseInt(num1)  + parseInt(num2);
  document.getElementById("resultado").innerHTML = `Os números ${num1} e ${num2} ${(num1 == num2)?'são':'não são'} iguais. Sua soma é ${resultado}, que é ${(resultado > 10)?'maior que 10':'menor que 10'} e ${(resultado > 20)?'maior que 20':'menor que 20'}.`;
}

function calculate() {
  var num1 = document.getElementById("numero1").value;
  var num2 = document.getElementById("numero2").value;
  getTwoNumbers(num1, num2);
}
