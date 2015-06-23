/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.*;
import java.util.*;
/**
 *
 * @author alex
 */
public class EmployeeListFile {
    
    private File file_;
    
    public EmployeeListFile(File file) {
        file_ = file;
    }
    
    public void writeList(List<Employee> list) {
        ObjectOutputStream output;
        try {
            output = new ObjectOutputStream(new BufferedOutputStream(new FileOutputStream(file_)));
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
//            output.close();
        }
    }
    
    public List<Employee> readList() {
        List<Employee> list = new ArrayList();
        ObjectInputStream input = null;
        try {
            input = new ObjectInputStream(new BufferedInputStream(new FileInputStream(file_)));
            Employee emp;
            while ((emp = (Employee) input.readObject()) != null) {
                list.add(emp);
            }
            input.close();
        }
        catch (IOException exp) {
            //sad
        }
        catch (ClassNotFoundException exp) {
            
        }
        return list;
    }
}
