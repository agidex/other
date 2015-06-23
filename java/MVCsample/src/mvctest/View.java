/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mvctest;

import java.awt.*;
import javax.swing.*;
import javax.swing.table.*;
/**
 *
 * @author alex
 */
public class View extends JFrame {
    protected final int READ = 0;
    protected final int WRITE = 1;
    protected final int ADD = 2;
    protected final int DEL = 3;
    protected final int BUTTONS_COUNT = 4;
    
    private JButton[] buttons;
    
    private final String[] buttonsNames = {"Read", "Write", "Add", "Delete"};
    private final String[] colNames = {"N", "String"};
    private Object[][] data;
    
    private JTextField addField;
    private JTable viewTable;
    
    protected View() {
        super("MVC test");
                
        JPanel buttonsPanel = new JPanel();
        buttonsPanel.setLayout(new GridLayout(3,2));
        
        buttons = new JButton[BUTTONS_COUNT];
        
        for(int i = 0;i < BUTTONS_COUNT;i++) {
            buttons[i] = new JButton(buttonsNames[i]);
            buttonsPanel.add(buttons[i]);
        }
        
        addField = new JTextField();
        addField.setMaximumSize(new Dimension(100,20));
        
        buttonsPanel.add(new JLabel("Text to add:"));
        buttonsPanel.add(addField);
        
        viewTable = new JTable();
       
        Container container = getContentPane();
        container.setLayout(new GridLayout(2,1));
        container.add(buttonsPanel);
        container.add(viewTable);
        
        data = new Object[0][4];
        viewTable.setModel(makeModel());

        setSize(200,200);
        setVisible(true);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
    protected String getText() {
        return addField.getText();
    }
    
    protected JButton[] getButtons() {
        return buttons;
    }
    
    protected JButton getButton(int buttonIndex) {
        return buttons[buttonIndex];
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
    
    protected void updateTable(java.util.List<String> list) {
        data = new Object[list.size()][2];
        
        for(int i = 0;i < list.size();i++) {
            data[i][0] = i+1;
            data[i][1] = list.get(i);
        }
        
        viewTable.setModel(makeModel());
    }
}
