/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package employeelist.model;

/**
 *
 * @author alex
 */
public class FixedSalaryEmployee extends Employee {
    private double fixedSalary;
    
    public FixedSalaryEmployee (int id, String name, double salary) {
        super(id,name);
        fixedSalary = salary;
    }
    
    @Override
    public double averageSalary() {
        return fixedSalary;
    }
    
}
