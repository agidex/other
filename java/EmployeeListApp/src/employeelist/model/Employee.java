/*
 * Employee.java
 *
 * Created on 11.06.2013, 18:39:48
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package employeelist.model;

import java.io.*;

/**
 *
 * @author alex
 */
public abstract class Employee implements Comparable<Employee>, Serializable {
    private int employeeId;
    private String employeeName;
    
    public Employee(int id,String name) {
        setId(id);
        setName(name);
    }
    
    public String getName() {
        return employeeName;
    }
    
    public int getId() {
        return employeeId;
    }
    
    protected final void setName(String name) {
        employeeName = name;
    }
    
    protected final void setId(int id) {
        employeeId = id;
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
