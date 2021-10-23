var tableCitas;
var divLoading = document.querySelector("#divLoading");
document.addEventListener('DOMContentLoaded', function(){

	tableCitas = $('#tableCitas').dataTable( {
		"aProcessing":true,
		"aServerSide":true,
        "language": {
        	"url": "//cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json"
        },
        "ajax":{
            "url": " "+base_url+"/Citas/getCitas",
            "dataSrc":""
        },
        "columns":[
            {"data":"id"},
            {"data":"title"},
            {"data":"descripcion"},
            {"data":"color"},
            {"data":"start"},
            {"data":"end"},
            {"data":"options"}


        ],
        'dom': 'lBfrtip',
        'buttons': [
            {
                "extend": "pdfHtml5",
                "text": "<i class='fas fa-file-pdf'></i> PDF",
                "titleAttr":"Esportar a PDF",
                "className": "btn btn-danger"
            }
        ],
        "resonsieve":"true",
        "bDestroy": true,
        "iDisplayLength": 10,
        "order":[[0,"desc"]]  
    });

    //NUEVO ROL
    var formCita = document.querySelector("#formCita");
    formCita.onsubmit = function(e) {
        e.preventDefault();

        var intIdCita = document.querySelector('#idCita').value;
        var strTitle = document.querySelector('#txtTitle').value;
        var strDescripcion = document.querySelector('#txtDescripcion').value;
        var strColor = document.querySelector('#listColor').value; 
        var strStart = document.querySelector('#txtStart').value;        
        var strEnd = document.querySelector('#txtEnd').value;        
       
        if(strTitle == '' || strDescripcion == ''|| strColor == ''|| strStart == ''|| strEnd == '')
        {
            swal("Atención", "Todos los campos son obligatorios." , "error");
            return false;
        }
        divLoading.style.display = "flex";
        var request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
        var ajaxUrl = base_url+'/Citas/setCita'; 
        var formData = new FormData(formCita);
        request.open("POST",ajaxUrl,true);
        request.send(formData);
        request.onreadystatechange = function(){
           if(request.readyState == 4 && request.status == 200){
                
                var objData = JSON.parse(request.responseText);
                if(objData.status)
                {
                    $('#modalFormCitas').modal("hide");
                    formCita.reset();
                    swal("Citas", objData.msg ,"success");
                    tableCitas.api().ajax.reload();
                }else{
                    swal("Error", objData.msg , "error");
                }              
            } 
            divLoading.style.display = "none";
            return false;
        }

        
    }

});

$('#tableCitas').DataTable();

function openModal(){

    document.querySelector('#idCita').value ="";
    document.querySelector('.modal-header').classList.replace("headerUpdate", "headerRegister");
    document.querySelector('#btnActionForm').classList.replace("btn-info", "btn-primary");
    document.querySelector('#btnText').innerHTML ="Guardar";
    document.querySelector('#titleModal').innerHTML = "Nueva Cita";
    document.querySelector("#formCita").reset();
	$('#modalFormCitas').modal('show');
}

window.addEventListener('load', function() {
    /*fntEditRol();
    fntDelRol();
    fntPermisos();*/
}, false);

function fntEditInfo(id){
    document.querySelector('#titleModal').innerHTML ="Actualizar Cita";
    document.querySelector('.modal-header').classList.replace("headerRegister", "headerUpdate");
    document.querySelector('#btnActionForm').classList.replace("btn-primary", "btn-info");
    document.querySelector('#btnText').innerHTML ="Actualizar";

    var id = id;
    var request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
    var ajaxUrl  = base_url+'/Citas/getCita/'+id;
    request.open("GET",ajaxUrl ,true);
    request.send();

    request.onreadystatechange = function(){
        if(request.readyState == 4 && request.status == 200){
            
            var objData = JSON.parse(request.responseText);
            if(objData.status)
            {
                document.querySelector("#idCita").value = objData.data.id;
                document.querySelector("#txtTitle").value = objData.data.title;
                document.querySelector("#txtDescripcion").value = objData.data.descripcion;
                document.querySelector("#txtStart").value = objData.data.start;
                document.querySelector("#txtEnd").value = objData.data.end;

                
                var htmlSelect = `${optionSelect}
                <option value="#FFD700">Amarillo</option>
                <option value="#0071c5">Azul Turquesa</option>
                <option value="#FF4500">Naranja</option>
                <option value="#8B4513">Marron</option>	
                <option value="#436EEE">Royal Blue</option>
                <option value="#A020F0">Rosa</option>
                <option value="#40E0D0">Turquesa</option>
                <option value="#228B22">Verde</option>
                                `;
                document.querySelector("#listColor").innerHTML = htmlSelect;
                $('#modalFormCitas').modal('show');
            }else{
                swal("Error", objData.msg , "error");
            }
        }
    }

}

function fntDelInfo(id){
    var id = id;
    swal({
        title: "Eliminar Cita",
        text: "¿Realmente quiere eliminar la cita?",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Si, eliminar!",
        cancelButtonText: "No, cancelar!",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function(isConfirm) {
        
        if (isConfirm) 
        {
            var request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
            var ajaxUrl = base_url+'/Citas/delCita/';
            var strData = "id="+id;
            request.open("POST",ajaxUrl,true);
            request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            request.send(strData);
            request.onreadystatechange = function(){
                if(request.readyState == 4 && request.status == 200){
                    var objData = JSON.parse(request.responseText);
                    if(objData.status)
                    {
                        swal("Eliminar!", objData.msg , "success");
                        tableCitas.api().ajax.reload(function(){
                            fntEditInfo();
                            fntDelInfo();
                            fntPermisos();
                        });
                    }else{
                        swal("Atención!", objData.msg , "error");
                    }
                }
            }
        }

    });
}

function fntViewInfo(id){
    let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
    let ajaxUrl = base_url+'/Citas/getCita/'+id;
    request.open("GET",ajaxUrl,true);
    request.send();
    request.onreadystatechange = function(){
        if(request.readyState == 4 && request.status == 200){
            let objData = JSON.parse(request.responseText);
            if(objData.status)
            {
            
                document.querySelector("#celId").innerHTML = objData.data.id;
                document.querySelector("#celTitle").innerHTML = objData.data.title;
                document.querySelector("#celDescripcion").innerHTML = objData.data.descripcion;
                document.querySelector("#celColor").innerHTML = objData.data.color;
                document.querySelector("#celStart").innerHTML = objData.data.start;
                document.querySelector("#celEnd").innerHTML = objData.data.end;

                $('#modalViewCitas').modal('show');
            }else{
                swal("Error", objData.msg , "error");
            }
        }
    }
}