using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class InsumoProveedorBE
    {
        public int IdInsumo { get; set; }
        public int IdProveedor { get; set; }
        public decimal PrecioCotizado { get; set; }
        public InsumoBE Insumo { get; set; }
        public ProveedorBE Proveedor { get; set; }
    }
}