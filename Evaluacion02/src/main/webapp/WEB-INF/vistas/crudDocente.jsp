<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Ejemplos de CIBERTEC - Jorge Jacinto </title>
</head>
<body>
<div class ="container">
<h3>Crud de Docente</h3>
	<div class="col-md-23">
		<div class="row" style="height: 70px">
						
						<div class="col-md-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">MOSTRAR</button>
						</div>
						<div class="col-md-2">
							<button type="button" data-toggle='modal'  data-target="#id_div_modal_registra"  class='btn btn-success' style="width: 150px">REGISTRA</button>
						</div>
					</div>
					<div class="row" > 
						<div class="col-md-12">
								<div class="content" >
						
									<table id="id_table" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th style="width: 5%" >ID</th>
												<th style="width: 10%">Nombre</th>
												<th style="width: 12%">Dni</th>
												<th style="width: 15%">Fecha de Nacimiento</th>
												<th style="width: 10%">Sueldo</th>
												<th style="width: 15%">Email</th>
												<th style="width: 5%">Sexo</th>
												<th style="width: 10%">Categoria</th>
												<th style="width: 10%">Actualiza</th>
												<th style="width: 10%">Elimina</th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>
								</div>	
						</div>
					</div>
	
	
	</div>
	
	<div class="modal fade" id="id_div_modal_registra">
		<div class="modal-dialog" style="width: 60%">
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de Docente</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
					<form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudDocente" class="form-horizontal"     method="post">
						<div class="panel-group" id="steps">
							<div class="panel panel-default">
								<div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Docente</a></h4>
		                        </div>
		                        <div id="stepOne" class="panel-collapse collapse in">
		                        	<div class="panel-body">
		                        				<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="40"/>
		                                        </div>
		                                        </div>
		                                        <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_dni">Dni</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_dni" name="dni" placeholder="Ingrese el número de Dni" type="text" maxlength="8"/>
		                                        </div>
		                                    	</div>
		                                    	<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_fechaNacimiento">Fecha de Nacimiento</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_fechaNacimiento" name="fechaNacimiento" type="date"/>
		                                        </div>
		                                    	</div>
		                                    	<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_sueldo">Sueldo</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_sueldo" name="sueldo" placeholder="Ingrese el sueldo" type="text"/>
		                                        </div>
		                                    	</div>  
		                                    	<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_email">Email</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_email" name="email" placeholder="Ingrese el Email" type="text"/>
		                                        </div>
		                                    	</div>   
		                                    	<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_sexo">Sexo</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_sexo" name="sexo" placeholder="Ingrese el Sexo" type="text"/>
		                                        </div>
		                                    	</div> 
		                                    	<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_categoria">categoria</label>
		                                        <div class="col-lg-3">
													 <select id="id_reg_categoria" name="categoria" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    	</div>
		                                    	 <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_registra">REGISTRA</button>
		                                        </div>
		                                   		</div>
		                                
		                        	</div>
		                        </div>
							</div>
						</div>
					
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="id_div_modal_actualiza" >
		<div class="modal-dialog" style="width: 60%">
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Docente</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
					<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudDocente" class="form-horizontal"     method="post">
						<div class="panel-group" id="steps">
							<div class="panel panel-default">
								<div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Docente</a></h4>
		                        </div>
		                        <div id="stepOne" class="panel-collapse collapse in">
		                        	<div class="panel-body">
		                        		<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_ID">ID</label>
		                                        <div class="col-lg-8">
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idDocente" type="text" maxlength="8"/>
		                                        </div>
		                                </div>
		                                <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_nombre">Nombre</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="40"/>
		                                        </div>
		                                </div>
		                                <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_dni">Dni</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_dni" name="dni" placeholder="Ingrese el número de Dni" type="text" maxlength="8"/>
		                                        </div>
		                                    	</div>
		                                <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_fechaNacimiento">Fecha de Nacimiento</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_fechaNacimiento" name="fechaNacimiento" type="date"/>
		                                        </div>
		                                    	</div>
		                                    	<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_sueldo">Sueldo</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_sueldo" name="sueldo" placeholder="Ingrese el sueldo" type="text"/>
		                                        </div>
		                                    	</div>  
		                                    	<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_email">Email</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_email" name="email" placeholder="Ingrese el Email" type="text"/>
		                                        </div>
		                                    	</div>   
		                                    	<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_sexo">Sexo</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_sexo" name="sexo" placeholder="Ingrese el Sexo" type="text"/>
		                                        </div>
		                                    	</div> 
		                                    	<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_categoria">categoria</label>
		                                        <div class="col-lg-3">
													 <select id="id_act_categoria" name="categoria" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    	</div>
		                                    	 <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_actualizar">ACTUALIZAR</button>
		                                        </div>
		                                   		</div>
		                        	</div>
		                        </div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$.getJSON("listaCategoria", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_categoria").append("<option value="+item.idCategoria +">"+ item.nombre +"</option>");
		$("#id_act_categoria").append("<option value="+item.idCategoria +">"+ item.nombre +"</option>");
	});
});

$("#id_btn_filtrar").click(function(){
	$.getJSON("listaDocente",{}, function (lista){
		agregarGrilla(lista);
	});
});
function agregarGrilla(lista){
	 $('#id_table').DataTable().clear();
	 $('#id_table').DataTable().destroy();
	 $('#id_table').DataTable({
			data: lista,
			searching: false,
			ordering: true,
			processing: true,
			pageLength: 5,
			lengthChange: false,
			columns:[
				{data: "idDocente"},
				{data: "nombre"},
				{data: "dni"},
				{data: "fechaNacimiento"},
				{data: "sueldo"},
				{data: "email"},
				{data: "sexo"},
				{data: "categoria.nombre"},
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idDocente + '\',\'' + row.nombre +'\',\'' + row.dni  +'\',\'' + row.fechaNacimiento + '\',\'' + row.sueldo + '\',\'' +  row.email + '\',\'' +  row.sexo + '\',\'' + row.categoria.idCategoria + '\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idDocente + '\')">Eliminar</button>';
					return salida;
				},className:'text-center'},													
			]                                     
	    });
}

function eliminar(id){	
	mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
}

function accionEliminar(id){	
    $.ajax({
          type: "POST",
          url: "eliminaCrudDocente", 
          data: {"id":id},
          success: function(data){
        	  agregarGrilla(data.lista);
        	  mostrarMensaje(data.mensaje);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
     });
}
function editar(id,nombre,dni,fechaNacimiento,sueldo, email,sexo, idCategoria){	
	$('#id_ID').val(id);
	$('#id_act_nombre').val(nombre);
	$('#id_act_dni').val(dni);
	$('#id_act_fechaNacimiento').val(fechaNacimiento);
	$('#id_act_sueldo').val(sueldo);
	$('#id_act_email').val(email);
	$('#id_act_categoria').val(idCategoria);
	$('#id_act_sexo').val(sexo);
	$('#id_div_modal_actualiza').modal("show");
}

function limpiarFormulario(){	
	$('#id_reg_nombre').val('');
	$('#id_reg_dni').val('');
	$('#id_reg_fechaNacimiento').val('');
	$('#id_reg_sueldo').val('');
	$('#id_reg_email').val('');
	$('#id_reg_sexo').val('');
	$('#id_reg_categoria').val(' ');
}

$("#id_btn_registra").click(function(){
	var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();
	
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "registraDocente", 
          data: $('#id_form_registra').serialize(),
          success: function(data){
        	  agregarGrilla(data.lista);
        	  $('#id_div_modal_registra').modal("hide");
        	  mostrarMensaje(data.mensaje);
        	  limpiarFormulario();
        	  validator.resetForm();
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
        
    }
});

$("#id_btn_actualizar").click(function(){
	var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "actualizaDocente", 
          data: $('#id_form_actualiza').serialize(),
          success: function(data){
        	  agregarGrilla(data.lista);
        	  $('#id_div_modal_actualiza').modal("hide");
        	  mostrarMensaje(data.mensaje);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
    }
});

</script>
<script type="text/javascript">
	$('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre": {
        		selector : '#id_reg_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 3 a 40 caracteres',
                    	min : 3,
                    	max : 40
                    }
                }
            },
            "dni": {
        		selector : '#id_reg_dni',
                validators: {
                    notEmpty: {
                        message: 'El número de Dni es un campo obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{8}$/,
                        message: 'el Dni es de 8 dígitos'
                    }
                }
            },
            "fechaNacimiento": {
        		selector : '#id_reg_fechaNacimiento',
                validators: {
                	notEmpty: {
                        message: 'La fecha es obligatorio'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                    
                }
            },
            "sueldo": {
        		selector : '#id_reg_sueldo',
                validators: {
                	notEmpty: {
                        message: 'El sueldo es un campo obligatorio'
                    },

                    regexp: {
                    	regexp: /^([0-9]+\.?[0-9])$/,
                    	message: 'Ingrese el sueldo con un decimal'
                    }
                    
                }
            },
            "email": {
        		selector : '#id_reg_email',
                validators: {
                	notEmpty: {
                        message: 'El email es un campo obligatorio'
                    },
                    emailAddress: {
                        message: 'El correo no es valido'
                    }
                }
            },
            "sexo": {
        		selector : '#id_reg_sexo',
                validators: {
                	notEmpty: {
                        message: 'El sexo es un campo obligatorio'
                    },
                    
                }
            },
            "categoria.idCategoria": {
        		selector : '#id_reg_categoria',
                validators: {
                	notEmpty: {
                        message: 'La categoria un campo obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>
<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre": {
        		selector : '#id_reg_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 3 a 40 caracteres',
                    	min : 3,
                    	max : 40
                    }
                }
            },
            "dni": {
        		selector : '#id_reg_dni',
                validators: {
                    notEmpty: {
                        message: 'El número de Dni es un campo obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{8}$/,
                        message: 'el Dni es de 8 dígitos'
                    }
                }
            },
            "fechaNacimiento": {
        		selector : '#id_reg_fechaNacimiento',
                validators: {
                	notEmpty: {
                        message: 'La fecha es obligatorio'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                    
                }
            },
            "sueldo": {
        		selector : '#id_reg_sueldo',
                validators: {
                	notEmpty: {
                        message: 'El sueldo es un campo obligatorio'
                    },
                    
                }
            },
            "email": {
        		selector : '#id_reg_email',
                validators: {
                	notEmpty: {
                        message: 'El email es un campo obligatorio'
                    },
                    emailAddress: {
                        message: 'El correo no es valido'
                    }
                }
            },
            "sexo": {
        		selector : '#id_reg_sexo',
                validators: {
                	notEmpty: {
                        message: 'El sexo es un campo obligatorio'
                    },
                }
            },
            "categoria.idCategoria": {
        		selector : '#id_reg_categoria',
                validators: {
                	notEmpty: {
                        message: 'La categoria un campo obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>

</body>
</html>