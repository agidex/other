/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

/**
 *
 * @author alex
 */
public class HourlySalaryEmployee extends Employee {
    private int wageRate_;
    
    public HourlySalaryEmployee(int id, String name, int wageRate) {
        super(id,name);
        setWageRate(wageRate);
    }
    
    protected final void setWageRate(int wageRate) {
        wageRate_ = wageRate;
    }
    
    @Override
    public double averageSalary() {
        return 20.8 * 8 * wageRate_;
    }
}
