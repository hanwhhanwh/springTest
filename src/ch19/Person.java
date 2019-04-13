package ch19;

public class Person implements PersonService {
    private String name;
    private int age;

    public Person(String name) {
        this.name = name;
    }

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    public void sayHello() {
        System.out.println("이름: " + name);
        System.out.println("나이: " + age + "살");
    }
}
