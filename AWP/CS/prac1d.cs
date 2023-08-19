using System;
class Prac1d{
public static void Main(String []args){
int a=0,b=1,c=1,n;
Console.WriteLine("Enter the limit of fibonacci:");
n=Convert.ToInt32(Console.ReadLine());

for(int i=0;i<n;i++){
Console.WriteLine(a);
a=b;
b=c;
c=a+b;


}
}


}
