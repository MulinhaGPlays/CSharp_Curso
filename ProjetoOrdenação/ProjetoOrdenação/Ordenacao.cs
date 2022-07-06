using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoOrdenação
{
    public class Ordenacao
    {
        public int[] trocaPosicao(int a, int b)
        {
            int troca = a;
            a = b;
            b = troca;

            int[] valores = new int[] { a, b };

            return valores;
        }
        public int[] trocaPosicaoManual(int a, int b)
        {
            int troca = a;
            a = b;
            b = troca;

            int[] valores = new int[2];
            valores[0] = a;
            valores[1] = b;

            return valores;
        }
    }
}
