//using return type
using System;

public class Del
{
    public delegate int mul(int a,int b);
    public static int product(int a, int b){
        return a*b;
    }
    public static int division(int a,int b){
        return (int)a/b;
    }
    public static void Main(string[] args)
    {
     mul m1;
     m1=product;
     m1+=division;
     int ans=m1(40,20);
    Console.WriteLine ("Answer is:"+ans) ;
    }
}
output:
Answer is:2

//If return type is mentioned, during multicasting only one function is executed, that is assigned last
  //Using void return type

  using System;

public class Del
{
    public delegate void mul(int a,int b);
    public static void product(int a, int b){
        Console.WriteLine("Multiplication:"+a*b);
    }
    public static void division(int a,int b){
       Console.WriteLine("Division:"+(int)a/b);
    }
    public static void Main(string[] args)
    {
     mul m1;
     m1=product;
     m1+=division;
     m1(40,20);
    //Console.WriteLine ("Answer is:"+ans) ;
    }
}

output
Multiplication:800
Division:2
