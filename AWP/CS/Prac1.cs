using System;
class Student{
int id;
string name;
string course;
string dob;
public void get_info(){
Console.WriteLine("Enter student details:");
Console.WriteLine("Student id:");
id=Convert.ToInt32(Console.ReadLine());
Console.WriteLine("Student name:");
name=Console.ReadLine();
Console.WriteLine("Student course:");
course=Console.ReadLine();
Console.WriteLine("Student dob:");
dob=Console.ReadLine();


}
public void show_info(){
Console.WriteLine("Student ID:"+id);
Console.WriteLine("Student name:"+name);
Console.WriteLine("Student course:"+course);
Console.WriteLine("Student DOB:"+dob);
}

}
class Prac1{
static void product(){
Console.WriteLine("Enter 4 digits");
int[] arr= new int[4]; 
var prod=1;
for(int i=0;i<4;i++){
arr[i]=Convert.ToInt32(Console.ReadLine());
}
Console.WriteLine("Entered number:");
for(int i=0;i<4;i++){
Console.WriteLine(arr[i]);
prod=prod*arr[i];
}
Console.WriteLine("Product of digits:"+prod);
//var n1=Console.ReadLine();
//Console.WriteLine("Entered number:"+n1);
}


static void str_operations(string s){
Console.WriteLine("Length of entered string:"+s.Length);
Console.WriteLine("Uppercase:"+s.ToUpper());
Console.WriteLine("Lowercase:"+s.ToLower());
Console.WriteLine("Enter a character which you want to trim from the string");
var character=Convert.ToChar(Console.ReadLine());
Console.WriteLine("Trimmed string:"+s.Trim(character));
Console.WriteLine("Trimmed string:"+s.TrimStart(character));
Console.WriteLine("Trimmed string:"+s.TrimEnd(character));
Console.WriteLine("Left Padded String:"+s.PadLeft(20,' '));
Console.WriteLine("Right Padded String:"+s.PadRight(10,'@'));
Console.WriteLine("Inserted String:"+s.Insert(0,"c"));
Console.WriteLine("Removed String:"+s.Remove(3,2));
Console.WriteLine("Replaced String:"+s.Replace("coco","mo"));
Console.WriteLine("Substring of the string:"+s.Substring(2,4));
Console.WriteLine("Does the string starts with c? "+s.StartsWith("c"));
Console.WriteLine("Does the string ends with c? "+s.EndsWith("c"));
Console.WriteLine("Index of o:"+s.IndexOf('o'));
Console.WriteLine("Index of last o:"+s.LastIndexOf('o'));
Console.WriteLine("Split String:");
string[] array;
array= s.Split(' ');
Console.WriteLine("Splitted String:"+array[0]+" " +array[1]);
string[] arr={"Anushka","sanika","sakshi","Chiditi"};
Console.WriteLine("Joined String:"+String.Join("-",arr));
//for(int i=0;i<2;i++){
//str[i]=s.Split(' ');
//Console.WriteLine(str[i]);}

//Console.WriteLine("Joined String:"+String.Join(" ",array.Skip(1)));



}


public static void Main(string []args){
//product();
//Console.WriteLine("Enter a string");
//var s=Console.ReadLine();
//str_operations(s);
//Student s1=new Student();
//Student[] array=new Student[5];
//for(int i=0;i<5;i++){
//array[i].get_info();
//array[i].show_info();
//}
}
}
