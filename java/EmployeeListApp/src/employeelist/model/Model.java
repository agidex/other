/*
 * Model.java
 *
 * Created on 11.06.2013, 18:15:36
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package employeelist.model;

import java.util.*;
import java.io.*;

import employeelist.view.View;
/**
 *
 * @author alex
 */
public class Model extends View {
    private final String employeeListPath = "/home/alex/programming/NetBeansProjects/EmployeeListApp/employeelist.dat";
    private List<Employee> employeeList;
    private EmployeeListFile employeeListFile;
    
    protected Model() {
        super();
        employeeList = new ArrayList();
        employeeListFile = new EmployeeListFile(new File(employeeListPath));
    }
    
    protected void addEmployee() throws Exception {
        final int ID = 0;
        final int NAME = 1;
        final int SALARY = 2;
        
        String[] inputData = getInputData();
        int id;
        
        try {
            id = Integer.parseInt(inputData[ID]);
        }
        catch (NumberFormatException exc) {
//            exc.printStackTrace();
            throw new Exception("Неправильний id");
        }

        String name = inputData[NAME];
        
        String errorMessage;
        if (isFixedSalary()) {
            errorMessage = "Неправильна ставка зарплати.";
        }
        else {
            errorMessage = "Неправильна погодинна ставка зарплати.";
        }
        
        double salary;
        try {
            salary = Double.parseDouble(inputData[SALARY]);
        }
        catch (NumberFormatException exc) {
//            exc.printStackTrace();
            throw new Exception(errorMessage);
        }
        
        if (isFixedSalary()) {
            FixedSalaryEmployee employee = new FixedSalaryEmployee(id, name, salary);
            employeeList.add(employee);
        }
        else {
            HourlySalaryEmployee employee = new HourlySalaryEmployee(id, name, (int)salary);
            employeeList.add(employee);
        }
        
        Collections.sort(employeeList);
        updateTable(employeeList);
    }

    protected void delEmployee() {
        if (!employeeList.isEmpty()) {
            employeeList.remove(0);
        }
        Collections.sort(employeeList);
        updateTable(employeeList);
    }

    protected void readEmployeeList() {
        employeeList.clear();
        employeeList.addAll(employeeListFile.readList());
        Collections.sort(employeeList);
        updateTable(employeeList);
    }

    protected void writeEmployeeList() {
        employeeListFile.writeList(employeeList);
        Collections.sort(employeeList);
        updateTable(employeeList);
    }

    protected void showList(int begin, int end) {
        List<Employee> list = new ArrayList();
        
        for (int i = begin; i < end;i++) {
            list.add(employeeList.get(i));
        }
        
        Collections.sort(list);
        updateTable(list);
    }
    
    protected int getListLen() {
        return employeeList.size();
    }
}
