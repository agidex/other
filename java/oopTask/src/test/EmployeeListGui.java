/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.*;
import java.util.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.text.*;
/**
 *
 * @author alex
 */
public class EmployeeListGui extends JFrame {
    private String listFilePath = "employeelist.dat";
    
    private JLabel salaryLabel;
    private JTextField idField, nameField, salaryField;
    private JRadioButton fixedSalary,hourlySalary;
    private JTextArea viewArea;
    private DecimalFormat df;
    
    private java.util.List<Employee> list_;
    
    public EmployeeListGui () {
        super("Employee list");
        
        list_ = new ArrayList();        
        JLabel idLabel = new JLabel("Id");
        JLabel nameLabel = new JLabel("Ім’я");
        JLabel salaryTypeLabel = new JLabel("Тип зарплати");
        salaryLabel = new JLabel("Зарплата");
        
        idField = new JTextField();
        nameField = new JTextField();
        salaryField = new JTextField();
        
        fixedSalary = new JRadioButton("Фіксована", true);
        hourlySalary = new JRadioButton("Погодинна", false);
        
        ButtonGroup salaryTypeGroup = new ButtonGroup();
        salaryTypeGroup.add(fixedSalary);
        salaryTypeGroup.add(hourlySalary);
        
        JPanel radioPanel = new JPanel();
        radioPanel.setLayout(new GridLayout(2,1));
        radioPanel.add(fixedSalary);
        radioPanel.add(hourlySalary);
        
        JButton addButton = new JButton("Додати");
        JButton delButton = new JButton("Видалити");
        JButton writeButton = new JButton("Записати");
        JButton readButton = new JButton("Прочитати");
        JButton first5Button = new JButton("Перші 5");
        JButton last3Button = new JButton("Останні 3");
        
        addButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        addEmployee();
                    }
                }
        );
        
        delButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        delEmployee();
                    }
                }
        );
        
        readButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        readList();
                    }
                }
        );
        
        writeButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        writeList();
                    }
                }
        );
        
        first5Button.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        first5();
                    }
                }
        );
        
        last3Button.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        last3();
                    }
                }
        );
        
        JPanel enterPanel = new JPanel();
        
        enterPanel.setLayout(new GridLayout(7,2));
        enterPanel.add(idLabel);
        enterPanel.add(idField);
        enterPanel.add(nameLabel);
        enterPanel.add(nameField);

        enterPanel.add(salaryTypeLabel);
        enterPanel.add(radioPanel);

        enterPanel.add(salaryLabel);
        enterPanel.add(salaryField);
        
        enterPanel.add(addButton);
        enterPanel.add(delButton);
        enterPanel.add(readButton);
        enterPanel.add(writeButton);
        enterPanel.add(first5Button);
        enterPanel.add(last3Button);
        
        viewArea = new JTextArea();
        
        setLayout(new GridLayout(2,1));
        add(enterPanel);
        add(viewArea);
        validate();
        setSize(300,400);
        setVisible(true);
//        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        df = new DecimalFormat("#.##");
    }
    
    public void addEmployee() {
        int id = Integer.parseInt(idField.getText());
        String name = nameField.getText();
        int salary = Integer.parseInt(salaryField.getText());
        if (fixedSalary.isSelected()) {
            FixedSalaryEmployee fixed = new FixedSalaryEmployee(id,name,salary);
            list_.add(fixed);
        }
        else {
            HourlySalaryEmployee hourly = new HourlySalaryEmployee(id,name,salary);
            list_.add(hourly);
        }
        Collections.sort(list_);
        viewList(list_);
    }
    
    public void delEmployee() {
        if (list_.isEmpty()) {
            
        }
        else {
            list_.remove(0);
        }
        Collections.sort(list_);
        viewList(list_);
    }
    
    public void readList() {
        EmployeeListFile listFile = new EmployeeListFile(new File(listFilePath));
        list_ = listFile.readList();
        Collections.sort(list_);
        viewList(list_);
    }
    
    public void writeList() {
        EmployeeListFile listFile = new EmployeeListFile(new File(listFilePath));
        listFile.writeList(list_);
        viewList(list_);
    }
    
    private void first5() {
        java.util.List<Employee> lst = new ArrayList();
        
        if (list_.size() <= 5) {
            lst = list_;
        }
        else {
            for(int i = 0;i < 5;i++) {
                lst.add(list_.get(i));
            }
        }
        viewList(lst);
    }
    
    private void last3() {
        java.util.List<Employee> lst = new ArrayList();
        
        if (list_.size() <= 3) {
            lst = list_;
        }
        else {
            for(int i = list_.size()-3;i < list_.size();i++) {
                lst.add(list_.get(i));
            }
        }
        viewList(lst);
    }
    
    private void viewList(java.util.List<Employee> list) {
        viewArea.setText("Id\tІм’я\tЗарплата\n");
        for(int i = 0;i < list.size();i++) {
            Employee item = list.get(i);
            String str = String.valueOf(item.getId()) 
                    + "\t"
                    + item.getName()
                    + "\t"
                    + String.valueOf(this.df.format(item.averageSalary()))
                    + "\n";
            viewArea.append(str);
        }
    }
}
