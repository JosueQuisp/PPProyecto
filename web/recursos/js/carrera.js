$(document).ready(function() {
    listar(); 
});

function listar() {
    $.get('carrera', { opc: 1 }, function(data) {
        console.log(data);
        console.log("sdf");
        $(".table tbody tr").remove(); // Corrected the selector and method chaining
        let x = JSON.parse(data);
 
        for (var i = 0; i < x.length; i++) {
            $(".table tbody").append(
                "<tr>" +
                "<td>" + (i + 1) + "</td>" +
                "<td>" + x[i].idcarrera + "</td>" +  // Use x[i] instead of data[i]
                "<td>" + x[i].nombre + "</td>" +
                "<td>" + x[i].estado + "</td>" +
                "<td>" + x[i].responsable + "</td>" +
                "<td>  <a href='#' onclick='editar ("+x[i].idcarrera+")'><i class='far fa-edit'></i></a>                 </td>" +
                "<td>  <a href='#' onclick='eliminar ("+x[i].idcarrera+")'><i class='fas fa-trash-alt'></i></a>    </td>" +
                "</tr>"
            );
        }
    });
}


$("#guardarr").click(function () {
    let nombre = $("#nombre").val(); 
    let estado = $("#estado").val(); 
    let responsable = $("#responsable").val(); 
    

    // Adding error handling for the POST request
    $.post("carrera", { 'opc': 2, 'nombre': nombre, 'estado': estado, 'responsable': responsable })
        .done(function (data) {
            listar(); 
        })
        .fail(function (jqXHR, textStatus, errorThrown) {
            console.error("Error occurred: " + textStatus + ", " + errorThrown);
        });
    
    $("#exampleModal").modal('hide'); 
});

function  eliminar(id){
    $.get('carrera', {'opc':3,'id':id}, function() {
        listar(); 
    }); 
} 


function  editar(id){
    
    let nombre_ed = $("nombre_edit").val(); 
    let estado_ed = $("estado_edit").val();
    let responsable_ed = $("responsable_edit").val();
    
    $.get('carrera', {'opc':4,'id':id , 'nombre': nombre_ed , 'estado':estado_ed, 'responsable_ed': responsable_ed }, function() {
        listar(); 
    }); 
}

