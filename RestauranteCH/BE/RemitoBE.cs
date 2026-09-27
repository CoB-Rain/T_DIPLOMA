using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class RemitoBE
    {
        public int IdRemito { get; set; }
        public OrdenCompraBE OrdenCompra { get; set; } = new OrdenCompraBE();
        public string NumeroRemitoProveedor { get; set; }
        public DateTime FechaRecepcion { get; set; }
        public string EstadoAceptacion { get; set; }
        public List<DetalleRemitoBE> Detalles { get; set; } = new List<DetalleRemitoBE>();
    }
}