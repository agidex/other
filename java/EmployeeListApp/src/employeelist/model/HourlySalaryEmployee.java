/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package employeelist.model;

/**
 *
 * @author alex
 */
public class HourlySalaryEmployee extends Employee {
    private int wageRate;
    
    public HourlySalaryEmployee(int id, String name, int wagerate) {
        super(id,name);
        setWageRate(wagerate);
    }
    
    protected final void setWageRate(int wagerate) {
        wageRate = wagerate;
    }
    
    @Override
    public double averageSalary() {
        return 20.8 * 8 * wageRate;
    }
}
