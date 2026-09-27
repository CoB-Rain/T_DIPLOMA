using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class DetalleRemitoBE
    {
        public int IdDetalleRemito { get; set; }
        public InsumoBE Insumo { get; set; } = new InsumoBE();
        public decimal CantidadRecepcionada { get; set; }
        public string NumeroLote { get; set; }
        public DateTime FechaVencimiento { get; set; }
        public string EstadoBromatologico { get; set; } // 'Aprobado', 'Rechazado'
    }
}