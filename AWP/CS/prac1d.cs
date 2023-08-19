using System;
class Prac1d{

public static void fibonacci(){
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

public static void prime(){
int n;
Console.WriteLine("Enter a number");
n=Convert.ToInt32(Console.ReadLine());
int count=0;
for(int i=2;i<=n;i++){
if(n%i==0){
count=count+1;
}
}
if(count==1){
Console.WriteLine("It is a prime number");
}
else{
Console.WriteLine("It is not a prime number");
}
}


public static void vowels(){
string ch;
string str="aeiouAEIOU";
Console.WriteLine("Enter a character:");
ch=Console.ReadLine();
if(str.Contains(ch)){
Console.WriteLine(ch+" is a vowel");
}
else{
Console.WriteLine(ch+" is not a vowel");

}

}

public static void foreach_implementation(){
string[] array={"Steven","Steve","Ste","St","Bail"};
foreach(string name in array){
Console.WriteLine(name);
}
}
public static void reverse_sum(){
int rev=0,n,rem,sum=0;
Console.WriteLine("Enter a number:");
n=Convert.ToInt32(Console.ReadLine());
while(n>0){
rem=n%10;
rev=rev*10+rem;
n=n/10;
sum=sum+rem;
}


Console.WriteLine("Revered number:"+rev);
Console.WriteLine("Sum of digits of number:"+sum);

}
public static void Main(String []args){
//fibonacci();
//prime();
//vowels();
//foreach_implementation();
reverse_sum();

}
}


