using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class OrdenCompraBE
    {
        public int IdOrdenCompra { get; set; }
        public SolicitudReabastecimientoBE Solicitud { get; set; } = new SolicitudReabastecimientoBE();
        public ProveedorBE Proveedor { get; set; } = new ProveedorBE();
        public DateTime FechaEmision { get; set; }
        public decimal MontoTotal { get; set; }
        public string Estado { get; set; }
        public List<DetalleOrdenCompraBE> Detalles { get; set; } = new List<DetalleOrdenCompraBE>();
    }
}