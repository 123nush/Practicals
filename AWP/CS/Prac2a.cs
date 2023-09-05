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
public static void temerature(){
    Console.WriteLine("Enter Temperature in celcius or fahreneit:");
    string temp=Console.ReadLine();
    if(temp.Contains("F")){
        string tem=temp.Trim('F');
        double t=Convert.ToDouble(tem);
       double conversion;
       Console.WriteLine(t);
        conversion=(t-32)*(5.0/9.0);
        Console.WriteLine("temperature in celcius after conversion:{0}",conversion);
    }
    else{
         string tem=temp.Trim('C');
        double t=Convert.ToDouble(tem);
       double conversion;
        conversion=(t)*(9/5)+32;
        Console.WriteLine("temperature in fahreneit after conversion:"+ conversion);

    }

}
public static void Main(String []args){
factorial();
temerature();

}
}

//output
Enter a number:
5
Factorial of the number:120
Enter Temperature in celcius or fahreneit:
132 F
132
temperature in celcius after conversion:55.5555555555556
