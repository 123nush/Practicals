// Online C# Editor for free
// Write, Edit and Run your C# code using C# Online Compiler

using System;
class person{
    int age;
    string name;
    public void person_info(int a,string n){
        age=a;
        name=n;
        Console.WriteLine("Name is:"+name+"\n"+"Age:"+age);
    }
}
class employee:person{
    int salary;
    public void empl_info(int s){
        salary=s;
         Console.WriteLine("Salary is:"+salary);
    }
}

public class Demo
{
    public static void Main(string[] args)
    {
        employee e1=new employee();
        e1.person_info(20,"Anushka");
        e1.empl_info(20000);
    }
}
