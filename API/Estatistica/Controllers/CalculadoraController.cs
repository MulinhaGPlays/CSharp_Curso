using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace Estatistica.Controllers
{
    [Route("[controller]")]
    public class CalculadoraController : Controller
    {
        private readonly ILogger<CalculadoraController> _logger;

        public CalculadoraController(ILogger<CalculadoraController> logger)
        {
            _logger = logger;
        }

        [HttpPost (Name = "Calculadora")]
        public IEnumerable<string> Calculadora(string Numeros)
        {
            string[] numeros = Numeros.Split(',');

            List<string> resultado = new List<string>();
            List<string> Ordem = new List<string>();

            double soma = 0;
            double maior = 0;
            double menor = 0;
            double media = 0;   
            double mediana = 0;
            double moda = 0;
            double desvioPadrao = 0;
            double contador = 0;

            foreach (var numero in numeros)
            {
                Ordem.Add(numero);
            }

            var modanumerica = Ordem.Select(x => double.Parse(x)).ToList();
            var ordem = modanumerica.OrderBy(x => x).ToList();
            moda = modanumerica.GroupBy(x => x).OrderByDescending(x => x.Count()).First().Key;
            media = modanumerica.Average();

            foreach (var numero in numeros)
            {
                contador++;
                soma += Convert.ToDouble(numero);

                if (contador == 1)
                {
                    maior = Convert.ToDouble(numero);
                    menor = Convert.ToDouble(numero);
                }
                else
                {
                    if (Convert.ToDouble(numero) > maior)
                    {
                        maior = Convert.ToDouble(numero);
                    }
                    if (Convert.ToDouble(numero) < menor)
                    {
                        menor = Convert.ToDouble(numero);
                    }
                }
            }

            desvioPadrao = modanumerica.Sum(x => x - media) / contador;
            mediana = Ordem.Count() % 2 == 0 ? (ordem[Ordem.Count() / 2] + ordem[Ordem.Count() / 2 - 1]) / 2 : ordem[Ordem.Count() / 2];

            resultado.Add($"A quantidade de números é: {contador}");
            resultado.Add("A ordem dos algarismos é: " + string.Join(", ", ordem));
            resultado.Add($"A soma dos algarismos é igual a: {soma}");
            resultado.Add($"A média dos algarismos é: {media.ToString("0.0")}");
            resultado.Add($"A média ponderada dos algarismos é: {media.ToString("0.0")}");
            resultado.Add($"A mediana dos algarismos é: {mediana.ToString("0.0")}");
            resultado.Add($"A moda dos algarismos é: {moda}");
            resultado.Add($"O desvio padrão dos algarismos é: {desvioPadrao}");
            resultado.Add($"O maior algarismo é: {maior}");
            resultado.Add($"O menor algarismo é: {menor}");

            return resultado;
        }
    }
}