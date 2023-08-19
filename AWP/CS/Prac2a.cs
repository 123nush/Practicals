using System;
class Prac2a{

public static void factorial(){
int fact=1,n;
Console.WriteLine("Enter a number:");
n=Convert.ToInt32(Console.ReadLine());

for(int i=1;i<=n;i++){
fact=fact*i;
}
Console.WriteLine("Factorial of the number:"+fact);
}
public static void Main(String []args){
factorial();

}


}
