
(function () {
  'use strict'
	document.addEventListener("turbolinks:load", function() { 
		function SomaParcial(){
			var total = 0
			var valores = document.querySelectorAll('[id*=item_valor]')
			var quantidades = document.querySelectorAll('[id*=item_quantidade]')

			for(var i = 0; i< valores.length; i++){
				total += valores[i].value * quantidades[i].value;
			}
			return total
		}

		document.getElementById("ValorTotal").onclick = function () {
			var valorfrete = document.getElementById("pedido_valorfrete").value;
			var desconto = document.getElementById("pedido_desconto").value;
			var parcial = SomaParcial()
			var total = parseInt(parcial) + +(valorfrete) - +(desconto);
			document.getElementById("pedido_valortotal").value = total;
			};	
		});
})();