using System;
class demo{
    public static int add(int a,int b){
        return a+b;
    }
    public static  int add(int a,int b,int c){
        return a+b+c;
    }
    public static void Main(string[] args){
      Console.WriteLine("Sum of 2 digits:"+add(2,3));
      Console.WriteLine("Sum of 3 digits:"+add(2,3,4));
    }
}
