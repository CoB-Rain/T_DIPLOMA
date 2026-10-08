using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class OrdenCompraBE
    {
        public int IdOrdenCompra { get; set; }
        public int IdSolicitud { get; set; }
        public ProveedorBE Proveedor { get; set; } = new ProveedorBE();
        public string DNI_Usuario { get; set; }
        public DateTime FechaEmision { get; set; }
        public decimal MontoTotal { get; set; }
        public string Estado { get; set; } // 'Emitida', 'Recibida', 'Anulada'
        public List<DetalleOrdenCompraBE> Detalles { get; set; } = new List<DetalleOrdenCompraBE>();

        public void CalcularTotal()
        {
            MontoTotal = Detalles.Sum(d => d.Subtotal);
        }
    }
}