using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class RemitoBE
    {
        public int IdRemito { get; set; }
        public int IdOrdenCompra { get; set; }
        public string NumeroRemitoProveedor { get; set; }
        public DateTime FechaRecepcion { get; set; }
        public string DNI_Usuario { get; set; }
        public string EstadoAceptacion { get; set; } // 'Aprobado', 'Rechazado'
        public List<DetalleRemitoBE> Detalles { get; set; } = new List<DetalleRemitoBE>();
    }
}