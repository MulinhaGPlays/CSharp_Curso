//------------------------------------------------------------------------------
// <auto-generated>
//    O código foi gerado a partir de um modelo.
//
//    Alterações manuais neste arquivo podem provocar comportamento inesperado no aplicativo.
//    Alterações manuais neste arquivo serão substituídas se o código for gerado novamente.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TDSAlmoxarifado.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ItensEntrada
    {
        public int ITEID { get; set; }
        public int ITEQUANTIDADE { get; set; }
        public decimal ITEPRECO { get; set; }
        public Nullable<decimal> ITETOTAL { get; set; }
        public int ENTID { get; set; }
        public int PROID { get; set; }
    
        public virtual Entrada Entrada { get; set; }
        public virtual Entrada Entrada1 { get; set; }
        public virtual Entrada Entrada2 { get; set; }
        public virtual Produto Produto { get; set; }
        public virtual Produto Produto1 { get; set; }
        public virtual Produto Produto2 { get; set; }
    }
}
