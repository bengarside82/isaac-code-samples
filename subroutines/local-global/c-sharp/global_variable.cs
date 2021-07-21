/*
Isaac Computer Science
Usage licensed under the Open Government Licence v3.0
Note: This file is designed to be copied out and compiled on your machine.
In order for it to compile properly you need to ensure that the project name is the same as the "namespace" in this file.
To run this file you need to:
1. Copy the contents
2. Paste them into the C# IDE of your choice (Visual Studio, for example)
3. Change the namespace to match your project (if neccesary)
4. Compile the program
5. Run the program
*/

using System;

namespace IsaacCodeSamples
{

    class Global
    {
        public static double vatRate = 0.2;
    }

    class LocalGlobal
    {

        // The Main method is the entry point for all C# programs
        public static void Main() {
            CalculateStandardVat();
        }
        

        // Calculate vat
        public static void CalculateStandardVat() {
            Console.Write("Enter amount to calculate VAT on: £");
            string amount = Console.ReadLine();
            double amountNumeric = double.Parse(amount);
            double vat = amountNumeric * Global.vatRate;
            Console.WriteLine($"The amount of vat is {vat}");
        }
        

    }
}