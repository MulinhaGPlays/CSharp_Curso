using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDSAlmoxarifado.Models
{
    interface IEstoque
    {
        bool verificarEstoque(PRODUTO produto, int qtd);
    }
}
