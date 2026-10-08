using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BE
{
    public class InsumoBE
    {
        public int IdInsumo { get; set; }
        public string Nombre { get; set; }
        public string Categoria { get; set; }
        public string UnidadMedida { get; set; }
        public decimal StockActual { get; set; }
        public decimal StockSeguridad { get; set; }
        public decimal CostoPromedioUnitario { get; set; }
        public bool Activo { get; set; }
        public long DVH { get; set; }

        public bool RequiereReabastecimiento => StockActual <= StockSeguridad;

        public override string ToString()
        {
            return $"{Nombre} ({UnidadMedida}) - Stock: {StockActual}";
        }
    }
}