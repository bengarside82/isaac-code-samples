/*
Note: This file is designed to be copied out and compiled on your machine. 
In order for it to compile properly you need to ensure that the project name is the same as the "namespace" in this file. 
To run this file you need to:
1. Copy the contents
2. Paste them into the C# IDE of your choice (Visual Studio, for example)
3. Compile the program
4. Run the program
*/

using System;

namespace Subroutines
{
    class DefineAndCall
    {
        // The Main method is the entry point for all C# programs
        static void Main(string[] args) {

            // Extra code is included to make sample execute
            int minutes = 90;

            // Sample code
            int seconds = minutes * 60;
            int milliseconds = seconds * 1000;

            Console.WriteLine($"Seconds: {seconds}, Milliseconds: {milliseconds}");
        }

    }
}
