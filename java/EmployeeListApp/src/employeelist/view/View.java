/*
 * View.java
 *
 * Created on 11.06.2013, 18:15:41
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package employeelist.view;

import java.util.*;
import java.awt.*;
import javax.swing.*;
import javax.swing.table.*;
import java.text.*;

import employeelist.model.*;
/**
 *
 * @author alex
 */
public class View extends JFrame {
    protected final int BUTTONS_COUNT = 6;
    protected final int ADD = 0;
    protected final int DEL = 1;
    protected final int READ = 2;
    protected final int WRITE = 3;
    protected final int FIRST5 = 4;
    protected final int LAST3 = 5;
    
    private final String[] buttonsNames = {"Додати", "Видалити", "Прочитати", 
        "Записати", "Перші 5", "Останні 3"};
    private final String[] colNames = {"N", "Ім’я", "Тип з/п", "Зарплата"};
    private Object[][] data;
    
    private JButton[] buttons;
    private JTextField idField, nameField, salaryField;
    private JRadioButton fixedSalary, hourlySalary;
    private JTable viewTable;
    
    private DecimalFormat df;
    
    protected View() {
        super("Employee List App");
        
        JLabel idLabel = new JLabel("Id");
        JLabel nameLabel = new JLabel("Ім’я");
        JLabel salaryTypeLabel = new JLabel("Тип зарплати");
        JLabel salaryLabel = new JLabel("Зарплата");
        
        idField = new JTextField();
        nameField = new JTextField();
        salaryField = new JTextField();
        
        fixedSalary = new JRadioButton("Фіксована", true);
        hourlySalary = new JRadioButton("Погодинна", false);
        
        ButtonGroup salaryTypeGroup = new ButtonGroup();
        salaryTypeGroup.add(fixedSalary);
        salaryTypeGroup.add(hourlySalary);
        
        JPanel radioPanel = new JPanel();
        radioPanel.setLayout(new GridLayout(2, 1));
        radioPanel.add(fixedSalary);
        radioPanel.add(hourlySalary);
        
        JPanel enterPanel = new JPanel();
        
        enterPanel.setLayout(new GridLayout(7, 2));
        enterPanel.add(idLabel);
        enterPanel.add(idField);
        enterPanel.add(nameLabel);
        enterPanel.add(nameField);

        enterPanel.add(salaryTypeLabel);
        enterPanel.add(radioPanel);

        enterPanel.add(salaryLabel);
        enterPanel.add(salaryField);
        
        buttons = new JButton[BUTTONS_COUNT];
        
        for(int i = 0;i < BUTTONS_COUNT;i++) {
            buttons[i] = new JButton(buttonsNames[i]);
            enterPanel.add(buttons[i]);
        }
        
        data = new Object[1][4];
        viewTable = new JTable(data, colNames);
        viewTable.setModel(makeModel());
        setColSize();

        setLayout(new GridLayout(2,1));
        add(enterPanel);
        add(new JScrollPane(viewTable));
        
//        validate();
        setSize(300, 400);
        setVisible(true);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        df = new DecimalFormat("#.##");
    }
    
    protected JButton getButton(int buttonIndex) {
        return buttons[buttonIndex];
    }
    
    protected boolean isFixedSalary() {
        return fixedSalary.isSelected();
    }
    
    protected String[] getInputData() {
        String[] inputData = new String[3];
        
        inputData[0] = idField.getText();
        inputData[1] = nameField.getText();
        inputData[2] = salaryField.getText();

        return inputData;
    }
    
    private void setColSize() {
        viewTable.getColumnModel().getColumn(0).setWidth(10);
        viewTable.getColumnModel().getColumn(0).setPreferredWidth(10);
        viewTable.getColumnModel().getColumn(3).setPreferredWidth(20);
        viewTable.getColumnModel().getColumn(2).setPreferredWidth(20);
    }
    
    private TableModel makeModel() {
        TableModel dataModel = new AbstractTableModel() {
            @Override
            public String getColumnName(int col) {
                return colNames[col].toString();
            }
            
            @Override
            public int getRowCount() {
                return data.length;
            }
            
            @Override
            public int getColumnCount() {
                return colNames.length;
            }
            
            @Override
            public Object getValueAt(int row, int col) {
                return data[row][col];
            }
            
            public boolean isCellEditable() {
                return false;
            }
            
            @Override
            public void setValueAt(Object value, int row, int col) {
                data[row][col] = value;
                fireTableCellUpdated(row,col);
            }
        };
        
        return dataModel;
    }
    
    protected void updateTable(java.util.List<Employee> list) {
        data = new Object[list.size()][4];
        
        for(int i = 0;i < list.size();i++) {
            data[i][0] = list.get(i).getId();
            data[i][1] = list.get(i).getName();
            data[i][2] = list.get(i).getClass().
                    equals(FixedSalaryEmployee.class)?"Фіксована":"Погодинна";
            data[i][3] = String.valueOf(df.format(list.get(i).averageSalary()));
        }
        
        viewTable.setModel(makeModel());
        setColSize();
    }
}
