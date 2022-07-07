using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Ordenacao.Models;

namespace Ordenacao.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class NumbersOrdersController : ControllerBase
    {
        [HttpGet]
            [Route("Change")]
            public int[] change(int number1, int number2){
                NumbersOrders numbers = new NumbersOrders();
                return numbers.Change(number1, number2);
            }
        [HttpGet]
            [Route("ChangeNegative")]
            public int[] changeNegative(int number1, int number2){
                NumbersOrders numbers = new NumbersOrders();
                return numbers.ChangeNegative(number1, number2);
            }
    }
}