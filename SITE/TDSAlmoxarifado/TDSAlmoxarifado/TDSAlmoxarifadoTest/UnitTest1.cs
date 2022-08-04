using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using TDSAlmoxarifado.Models;

namespace TDSAlmoxarifadoTest
{
    [TestClass]
    public class EstoqueTeste
    {
        [TestMethod]
        public void temSaldoTrue()
        {
            bool esperado = true;
            bool resultado = false;
            PRODUTO produto = new PRODUTO();
            produto.PROID = 1;
            produto.PROESTOQUE = 10;

            ProdutoEstoque validarEstoque = new ProdutoEstoque();
            if (validarEstoque.verificarEstoque(produto, 5) == true)
            {
                resultado = true;
            }
            else
            {
                resultado = false;
            }
            Assert.AreEqual(esperado, resultado);
        }
    }
}
