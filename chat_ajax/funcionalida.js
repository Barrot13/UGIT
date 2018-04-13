/*
* @Author: Marco Rojas Maroto
* @Date:   2018-04-13 11:30:19
* @Last Modified by:   Marko1496
* @Last Modified time: 2018-04-13 14:41:36
*/
		function ajax(){
			var req = new XMLHttpRequest();

			req.onreadystatechange = function(){
				if (req.readyState == 4 && req.status == 200) {
					document.getElementById('chat').innerHTML = req.responseText;
				}
			}

			req.open('GET', 'chat.php', true);
			req.send();
		}

		//linea que hace que se refreseque la pagina cada segundo
		setInterval(function(){ajax();}, 1000);

		function insertar(){
			var mensaje = document.getElementById("mensaje").value;
			var usuario = document.getElementById("nombre").value;
			var datos = "usuario="+usuario+"&mensaje="+mensaje;
			console.log(datos);

			$.ajax({
				url: 'funcionesBD.php',
				type: 'post',
				data: datos
			})
			.done(function() {
				console.log("success");
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
			return false;
		}

