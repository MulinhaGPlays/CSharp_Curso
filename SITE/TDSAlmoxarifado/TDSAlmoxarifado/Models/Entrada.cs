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
    
    public partial class Entrada
    {
        public Entrada()
        {
            this.ItensEntrada = new HashSet<ItensEntrada>();
            this.ItensEntrada1 = new HashSet<ItensEntrada>();
            this.ItensEntrada2 = new HashSet<ItensEntrada>();
        }
    
        public int ENTID { get; set; }
        public System.DateTime ENTDATA { get; set; }
        public string ENTORIGEM { get; set; }
        public string ENTNUMERONOTA { get; set; }
        public string ENTOBSERVACAO { get; set; }
    
        public virtual ICollection<ItensEntrada> ItensEntrada { get; set; }
        public virtual ICollection<ItensEntrada> ItensEntrada1 { get; set; }
        public virtual ICollection<ItensEntrada> ItensEntrada2 { get; set; }
    }
}