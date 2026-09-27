using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class DetalleOrdenCompraBE
    {
        public int IdDetalleOC { get; set; }
        public InsumoBE Insumo { get; set; } = new InsumoBE();
        public decimal CantidadSolicitada { get; set; }
        public decimal PrecioPactado { get; set; }
        public decimal Subtotal => CantidadSolicitada * PrecioPactado;
    }
}