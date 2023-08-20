using System;
interface subject{
    int sub_m();
}
interface sport{
    int sport_m();
}
class test1:subject,sport{
    int maths,sci,s;
    public int sub_m(){
        maths=100;
        sci=200;
        return maths+sci;
    }
    public int sport_m(){
        s=50;
        return s;
    }
}
class demo{
    public static void Main(string[] args){
        test1 t=new test1();
        int total=t.sub_m()+t.sport_m();
        Console.WriteLine("Total Is:"+total);
    }
}
