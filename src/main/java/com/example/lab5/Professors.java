package com.example.lab5;

public class Professors {
    private Long id;
    private String fullName;
    private int years;
    private String education;
    private String experience;
    private int salary;

    public Professors() {
    }

    public Professors(Long id, String fullName, int years, String education, String experience, int salary) {
        this.id = id;
        this.fullName = fullName;
        this.years = years;
        this.education = education;
        this.experience = experience;
        this.salary = salary;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getYears() {
        return years;
    }

    public void setYears(int years) {
        this.years = years;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
