using System;

public class exc
{
   
    public static void Main(string[] args)
    {
        try{
        int a,b;
        Console.WriteLine("Enter Two Numbers:");
        a=Convert.ToInt32(Console.ReadLine());
        b=Convert.ToInt32(Console.ReadLine());
        Console.WriteLine(a/b);
        }
        catch(DivideByZeroException e){
              Console.WriteLine("I'm child");
            Console.WriteLine(e);
        }
         catch(Exception e){
            Console.WriteLine("I'm parent");
            Console.WriteLine(e);
        }
        finally{
            Console.WriteLine("End!!!!!!!!!!");
        }
    }
}

output
Enter Two Numbers:
50
0
I'm child
System.DivideByZeroException: Attempted to divide by zero.
  at exc.Main (System.String[] args) [0x00023] in <0cfcadee77ce4c36bc9cccaa0d781bb2>:0 
End!!!!!!!!!!


// Implementing Own Exception

  using System;

public class exc
{
   
    public static void Main(string[] args)
    {
        try{
        int a,b;

        Console.WriteLine("Enter Two Numbers:");
        a=Convert.ToInt32(Console.ReadLine());
        b=Convert.ToInt32(Console.ReadLine());
        if(a==7){
            Exception e=new Exception();
            throw e;
        }
        else{
        Console.WriteLine(b/a);
        }
        }
         catch(Exception e){
            Console.WriteLine("I'm parent");
            Console.WriteLine(e);
        }
        finally{
            Console.WriteLine("End!!!!!!!!!!");
        }
    }
}

//output
Enter Two Numbers:
30
60
2
End!!!!!!!!!!
