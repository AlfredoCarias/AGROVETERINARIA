$(document).ready(function() {
    var date = new Date();

    var day = date.getDate();
    var month = date.getMonth() + 1;
    var year = date.getFullYear();

    if (month < 10) month = "0" + month;
    if (day < 10) day = "0" + day;

    var today = year + "-" + month + "-" + day;
    $("#txtDate").attr("value", today);

    $("#txtCantidad").keydown(function(event) {
        if(event.shiftKey)
        {
            event.preventDefault();
        }

        if (event.keyCode == 46 || event.keyCode == 8)    {
        }
        else {
            if (event.keyCode < 95) {
                if (event.keyCode < 48 || event.keyCode > 57) {
                    event.preventDefault();
                }
            }
            else {
                if (event.keyCode < 96 || event.keyCode > 105) {
                    event.preventDefault();
                }
            }
        }
    });

    $totalArticulos = 0;
    $totalVenta = 0;
    $precioProducto = 0;


    $("#btnAgregar").click(function() {
        $valor = $("#selectProducto").val();
        $texto = $("#selectProducto option:selected").text();


        $cantidad = $("#txtCantidad").val();

        if ($cantidad == 0){
            alert("Digite la cantidad que desea guardar");
            $("#txtCantidad").focus();
        }else{
            $precioProducto = $("#selectProducto").children(":selected").attr("title");
            $totalArticulos++;
            $totalArt = $precioProducto * parseInt($cantidad);
            $totalVenta = $totalVenta + $totalArt;

            $("#recibeDatos").append('<tr><td>'+$valor+'</td><td>'+$texto+'</td><td>'+$cantidad+'</td><td>'+$totalArt+'</td></tr>');


            $("#txtCantidad").val("");
            $("#txtCantidad").focus();
            $("#txtTotalArt").val($totalArticulos);
            $("#txtTotalVenta").val($totalVenta);
        }


    });

    var idproducto = new Array();
    var cantidadLLevada = new  Array();
    var totalDelProducto = new Array();
    var contador = 0;

    
    $("#btnGuardar").click(function () {
        $("#tablaDatos tbody tr").each(function (index) {
            $(this).children("td").each(function (index2) {
                switch (index2){
                    case 0:
                        idproducto.push($(this).text());
                        contador=contador+1;
                        break;
                    case 2:
                        cantidadLLevada.push($(this).text());
                        break;
                    case 3:
                        totalDelProducto.push($(this).text());
                        break;
                }
            });
        });
    });

});