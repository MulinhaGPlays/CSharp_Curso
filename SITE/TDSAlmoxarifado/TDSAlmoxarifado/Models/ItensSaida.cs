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
    
    public partial class ItensSaida
    {
        public int ITSID { get; set; }
        public int ITSQUANTIDADE { get; set; }
        public int SAIDAID { get; set; }
        public int PROID { get; set; }
    
        public virtual Produto Produto { get; set; }
        public virtual Produto Produto1 { get; set; }
        public virtual Produto Produto2 { get; set; }
        public virtual Saida Saida { get; set; }
        public virtual Saida Saida1 { get; set; }
        public virtual Saida Saida2 { get; set; }
    }
}