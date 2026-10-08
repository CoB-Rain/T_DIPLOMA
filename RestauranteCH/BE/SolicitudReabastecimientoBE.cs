using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class SolicitudReabastecimientoBE
    {
        public int IdSolicitud { get; set; }
        public string DNI_Usuario { get; set; }
        public DateTime FechaEmision { get; set; }
        public string NivelUrgencia { get; set; } // 'Baja', 'Media', 'Alta'
        public string Estado { get; set; }        // 'Pendiente', 'Procesada', 'Rechazada'
        public List<DetalleSolicitudBE> Detalles { get; set; } = new List<DetalleSolicitudBE>();
    }
}