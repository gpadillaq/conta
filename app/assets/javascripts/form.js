$(document).ready(function() {
  $('select').material_select();
  $('.datepicker').pickadate({
    labelMonthNext: 'Siguiente Mes',
    labelMonthPrev: 'Mes Anterior',
    labelMonthSelect: 'Seleccione un Mes',
    labelYearSelect: 'Seleccione un Año',
    monthsFull: [ 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre' ],
    monthsShort: [ 'Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],
    weekdaysFull: [ 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' ],
    weekdaysShort: [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ],
    weekdaysLetter: [ 'D', 'L', 'M', 'MX', 'J', 'V', 'S' ],
    today: 'Hoy',
    clear: 'Limpiar',
    close: 'Cerrar'
  });
});
