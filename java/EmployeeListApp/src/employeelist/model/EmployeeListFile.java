/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package employeelist.model;

import java.io.*;
import java.util.*;

//import employeelist.model.Employee;
/**
 *
 * @author alex
 */
public class EmployeeListFile {
    private File employeeListFile;
    
    public EmployeeListFile(File file) {
        employeeListFile = file;
    }
    
    public void writeList(List<Employee> list) {
        ObjectOutputStream output = null;
        try {
            output = new ObjectOutputStream(new BufferedOutputStream(
                    new FileOutputStream(employeeListFile)));
            for(int i = 0;i < list.size();i++) {
                Employee item = list.get(i);
                output.writeObject(item);
            }
            output.close();
        }
        catch (IOException exp) {
            //oops
        }
        finally {
            try {
                output.close();
            }
            catch (Exception exc) {
                /**/
            }
        }
    }
    
    public List<Employee> readList() {
        List<Employee> list = new ArrayList();
        ObjectInputStream input = null;
        try {
            input = new ObjectInputStream(new BufferedInputStream(new FileInputStream(employeeListFile)));
            Employee emp;
            while ((emp = (Employee) input.readObject()) != null) {
                list.add(emp);
            }
            input.close();
        }
        catch (IOException exp) {
            //oops
        }
        catch (ClassNotFoundException exp) {
            //sad
        }
        finally {
            try {
                input.close();
            }
            catch (Exception exc) {
                /**/
            }
        }        
        return list;
    }
}
