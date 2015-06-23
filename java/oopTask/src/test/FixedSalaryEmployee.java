/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

/**
 *
 * @author alex
 */
public class FixedSalaryEmployee extends Employee {
    private int fixedSalary_ = 2496;
    
    public FixedSalaryEmployee (int id, String name, int fixedSalary) {
        super(id,name);
        fixedSalary_ = fixedSalary;
    }
    
    @Override
    public double averageSalary() {
        return fixedSalary_;
    }
    
}
