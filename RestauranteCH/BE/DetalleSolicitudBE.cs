using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class DetalleSolicitudBE
    {
        public int IdDetalleSol { get; set; }
        public int IdSolicitud { get; set; }
        public InsumoBE Insumo { get; set; } = new InsumoBE();
        public decimal CantidadSolicitada { get; set; }
    }
}