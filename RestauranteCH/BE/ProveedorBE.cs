using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class ProveedorBE
    {
        public int IdProveedor { get; set; }
        public string RazonSocial { get; set; }
        public string CUIT { get; set; }
        public string CondicionesPago { get; set; }
        public int TiempoEntregaEstimado { get; set; }
        public bool Activo { get; set; }
    }
}