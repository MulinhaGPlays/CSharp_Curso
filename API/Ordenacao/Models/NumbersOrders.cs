using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Ordenacao.Models
{
    public class NumbersOrders
    {
        public int[] Change( int number1, int number2)
        {
            int temp = number1;
            number1 = number2;
            number2 = temp;
            
            int[] numbers = new int[]{ number1, number2 };
            
            return numbers;
        }
        public int[] ChangeNegative(int number1, int number2)
        {

            if (number1 > 0)
            {
                number1 = number1 * -1;
            }
            if (number2 > 0)
            {
                number2 = number2 * -1;
            }

            int[] numbers = new int[] { number1, number2 };
            
            return numbers;
        }
    }
}