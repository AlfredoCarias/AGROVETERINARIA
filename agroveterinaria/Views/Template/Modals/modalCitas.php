<!-- Modal -->
<div class="modal fade" id="modalFormCitas" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header headerRegister">
        <h5 class="modal-title" id="titleModal">Nueva Cita</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="tile">
            <div class="tile-body">
              <form id="formCita" name="formCita">
                <input type="hidden" id="idCita" name="idCita" value="">
                <div class="form-group">
                  <label class="control-label">Titulo</label>
                  <input class="form-control" id="txtTitle" name="txtTitle" type="text" placeholder="Titulo de la cita" required="">
                </div>
                <div class="form-group">
                  <label class="control-label">Descripción</label>
                  <textarea class="form-control" id="txtDescripcion" name="txtDescripcion" rows="2" placeholder="Descripción del evento" required=""></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleSelect1">Color</label>
                    <select class="form-control" id="listColor" name="listColor" required="">
                    <option value="">Seleccione un color</option>			
                                            <option style="color:#FFD700;" value="#FFD700">Amarillo</option>
                                            <option style="color:#0071c5;" value="#0071c5">Azul Turquesa</option>
                                            <option style="color:#FF4500;" value="#FF4500">Naranja</option>
                                            <option style="color:#8B4513;" value="#8B4513">Marron</option>	
                                            <option style="color:#436EEE;" value="#436EEE">Royal Blue</option>
                                            <option style="color:#A020F0;" value="#A020F0">Rosa</option>
                                            <option style="color:#40E0D0;" value="#40E0D0">Turquesa</option>
                                            <option style="color:#228B22;" value="#228B22">Verde</option>
                    </select>
                </div>
                <div class="form-group">
                  <label class="control-label">Inicio Evento</label>
                  <input class="form-control" id="txtStart" type="text" name="txtStart" placeholder="Select Date" require="">
                </div>
                <div class="form-group">
                  <label class="control-label">Fin Evento</label>
                  <input class="form-control" id="txtEnd" type="text" name="txtEnd" placeholder="Select Date" require="">
                </div>    





                <div class="tile-footer">
                  <button id="btnActionForm" class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i><span id="btnText">Guardar</span></button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="#" data-dismiss="modal" ><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancelar</a>
                </div>
              </form>
            </div>
          </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modalViewCitas" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" >
    <div class="modal-content">
      <div class="modal-header header-primary">
        <h5 class="modal-title" id="titleModal">Datos de la Cita</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
          <tbody>
            <tr>
              <td>ID:</td>
              <td id="celId"></td>
            </tr>
            <tr>
              <td>Titulo:</td>
              <td id="celTitle"></td>
            </tr>
            <tr>
              <td>Descripción:</td>
              <td id="celDescripcion"></td>
            </tr>
            <tr>
              <td>Color:</td>
              <td id="celColor"></td>
            </tr>
            <tr>
              <td>Fecha Inicio:</td>
              <td id="celStart"></td>
            </tr><tr>
              <td>Fecha Fin:</td>
              <td id="celEnd"></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>