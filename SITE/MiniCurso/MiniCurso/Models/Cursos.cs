//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MiniCurso.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cursos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Cursos()
        {
            this.Disciplinas = new HashSet<Disciplinas>();
        }
    
        public int CURSOID { get; set; }
        public string CURSODESCRICAO { get; set; }
        public string CURSOCODHABILIDADE { get; set; }
        public string CURSOMODALIDADE { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Disciplinas> Disciplinas { get; set; }
    }
}
