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
    
    public partial class Colaborador
    {
        public Colaborador()
        {
            this.Saida = new HashSet<Saida>();
            this.Saida1 = new HashSet<Saida>();
            this.Saida2 = new HashSet<Saida>();
        }
    
        public int COLID { get; set; }
        public string COLNOME { get; set; }
        public string COLCARGO { get; set; }
        public Nullable<int> AREID { get; set; }
    
        public virtual Area Area { get; set; }
        public virtual Area Area1 { get; set; }
        public virtual Area Area2 { get; set; }
        public virtual ICollection<Saida> Saida { get; set; }
        public virtual ICollection<Saida> Saida1 { get; set; }
        public virtual ICollection<Saida> Saida2 { get; set; }
    }
}
