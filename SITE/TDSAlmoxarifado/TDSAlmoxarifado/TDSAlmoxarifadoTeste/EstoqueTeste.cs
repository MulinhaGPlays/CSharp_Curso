using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using TDSAlmoxarifado.Models;

namespace TDSAlmoxarifadoTeste
{
    [TestClass]
    public class EstoqueTeste
    {
        [TestMethod]
        public void temSaldoTrueValorMenor()
        {
            bool esperado = true;
            bool resultado = false;
            //Preparação
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

        [TestMethod]
        public void temSaldoTrueValorIgual()
        {
            bool esperado = true;
            bool resultado = false;
            PRODUTO produto = new PRODUTO();
            produto.PROID = 1;
            produto.PROESTOQUE = 10;

            ProdutoEstoque validarEstoque = new ProdutoEstoque();
            if (validarEstoque.verificarEstoque(produto, 10) == true)
            {
                resultado = true;
            }
            else
            {
                resultado = false;
            }
            Assert.AreEqual(esperado, resultado);

        }

        [TestMethod]
        public void temSaldoTrueValorMaior()
        {
            bool esperado = false;
            bool resultado = false;
            PRODUTO produto = new PRODUTO();
            produto.PROID = 1;
            produto.PROESTOQUE = 10;

            ProdutoEstoque validarEstoque = new ProdutoEstoque();
            if (validarEstoque.verificarEstoque(produto, 10) == true)
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
