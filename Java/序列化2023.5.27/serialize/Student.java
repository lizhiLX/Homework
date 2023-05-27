package serialize;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Scanner;
import java.util.function.BiConsumer;

public class Student implements Serializable
{
    private transient String idcard;
    private String name;
    private String id;
    private HashMap<String,Integer> score = new HashMap<>();

    public Student()
    {
        input_info();
    }

    public Student(String...course)
    {
        input_info();
        System.out.println("***************请输入各科成绩**************");
        Scanner sc = new Scanner(System.in);
        for (String i:course)
        {
            System.out.printf("%s：",i);
            score.put(i,sc.nextInt());
        }
    }

    private void input_info()
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("******************请输入学生信息*****************");
        System.out.print("请输入学号：");
        setId(sc.next());
        System.out.print("请输入姓名：");
        setName(sc.next());
        System.out.print("请输入身份证号：");
        setIdcard(sc.next());
    }

    public void info()
    {
        System.out.println("*************学生信息**************");
        System.out.print("学号" + "\t\t");
        System.out.print("姓名" + "\t\t");
        System.out.print("身份证号\n");
        System.out.print(this.getId() + " ");
        System.out.print(this.getName() + " ");
        System.out.println(this.getIdcard() + " ");
        System.out.println("****************各科成绩***************");
        score.forEach(new BiConsumer<String, Integer>()
        {
            @Override
            public void accept(String s, Integer integer)
            {
                System.out.printf("%s：%d\n",s,integer);
            }
        });
    }

    public String getIdcard()
    {
        return idcard;
    }

    public void setIdcard(String idcard)
    {
        this.idcard = idcard;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getId()
    {
        return id;
    }

    public void setId(String id)
    {
        this.id = id;
    }

}
