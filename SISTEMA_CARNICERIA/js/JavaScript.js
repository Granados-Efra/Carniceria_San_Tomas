﻿function msgbox(ti, msj, tipo) {
    Swal.fire({
        title: ti,
        text: msj,
        icon: tipo,
        confirmButtonText: 'Aceptar'
    })
    /*alert(msj);  */
}