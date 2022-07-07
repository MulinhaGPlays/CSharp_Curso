using Microsoft.VisualStudio.TestTools.UnitTesting;
using Ordenacao.Models;

namespace OrdenacaoTest
{

    [TestClass]
    public class NumbersOrdersTest
    {
        [TestMethod]
        public void ChangeTest()
        {
            int[] expected = new int[] { 4, 6 };
            int[] result;
            NumbersOrders numbers = new NumbersOrders();
            result = numbers.Change(6,4);

            CollectionAssert.AreEqual(expected, result);
        }
        [TestMethod]
        public void ChangeNegativeTest()
        {
            int[] expected = new int[] { 4, 6 };
            int[] result;
            NumbersOrders numbers = new NumbersOrders();
            result = numbers.ChangeNegative(-4,-6);

            CollectionAssert.AreEqual(expected, result);
        }
    }
}

