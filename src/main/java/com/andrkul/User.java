package com.andrkul;

import java.io.Serializable;

public class User {

    private String name;
    private int age;

    public User() {
        this.name = "";
        this.age = 0;
    }

    public User(String name, int age) {

        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }
}
