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
class student:person{
    string class1;
    public student(int a,string n,string c):base(a,n){
       class1=c;
        Console.WriteLine("Class is:"+class1);
    }
}

public class Demo
{
    public static void Main(string[] args)
    {
        
        employee e1=new employee(20,"anu",20000);
        student s1=new student(20,"anu","Information Technology");
    }
}
