package test;

import java.io.*;
/**
 *
 * @author alex
 */

public abstract class Employee implements Comparable<Employee>, Serializable {
    private int id_;
    private String name_;
    
    public Employee(int id,String name) {
        setId(id);
        setName(name);
    }
    
    public String getName() {
        return name_;
    }
    
    public int getId() {
        return id_;
    }
    
    protected final void setName(String name) {
        name_ = name;
    }
    
    protected final void setId(int id) {
        id_ = id;
    }
    
    public abstract double averageSalary();
    
    @Override
    public int compareTo(Employee obj) {
        if (averageSalary() < obj.averageSalary()) {
            return  -1;
        }
        else if (averageSalary() == obj.averageSalary()) {
            if (getName().equals(obj.getName())) {
                return 0;
            }
            else {
                return getName().compareTo(obj.getName());
            }
        }
        else {
            return 1;
        }
    }
}
