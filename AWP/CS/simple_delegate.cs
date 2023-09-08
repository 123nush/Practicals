// Online C# Editor for free
// Write, Edit and Run your C# code using C# Online Compiler

using System;

public class Del
{
    public delegate int mul(int a,int b);
    public static int product(int a, int b){
        return a*b;
    }
    public static void Main(string[] args)
    {
     mul m1;
     m1=product;
     int ans=m1(10,20);
    Console.WriteLine ("Answer is:"+ans) ;
    }
}


output
Answer is:200
