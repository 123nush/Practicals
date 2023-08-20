// Online C# Editor for free
// Write, Edit and Run your C# code using C# Online Compiler

using System;
class person{
    int age;
    string name;
    public person(int a,string n){
        age=a;
        name=n;
        Console.WriteLine("Name is:"+name+"\n"+"Age:"+age);
    }
}
class employee:person{
    int salary;
    public employee(int a,string n,int s):base(a,n){
    
        salary=s;
         Console.WriteLine("Salary is:"+salary);
    }
}
class post:employee{
    string post_name;
    public post(int a,string n,int s,string p):base(a,n,s){
        post_name=p;
        Console.WriteLine("Post is:"+post_name);
    }
}

public class Demo
{
    public static void Main(string[] args)
    {
        post e1=new post(20,"Anu",2000000,"CEO");
        // e1.empl_info(20000);
    }
}
