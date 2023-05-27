package serialize;

import java.io.*;

public class Main
{
    public static void main(String[] args) throws IOException, ClassNotFoundException
    {
        Student stu1 = new Student("java","mysql","java web");
        save(stu1);
        Student s = open();
        s.info();
    }
    public static void save(Student s) throws IOException
    {
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream("student.dat"));
        objectOutputStream.writeObject(s);
        objectOutputStream.close();
        System.out.println("保存成功");
    }

    public static Student open() throws IOException, ClassNotFoundException
    {
        ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream("student.dat"));
        Student s = (Student)objectInputStream.readObject();
        objectInputStream.close();
        return s;
    }
}
