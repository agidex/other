/*
 * Controller.java
 *
 * Created on 11.06.2013, 18:15:31
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package employeelist.controller;

import javax.swing.*;
import java.awt.event.*;

import employeelist.model.Model;
/**
 *
 * @author alex
 */
public class Controller extends Model {
    
    public Controller() {
        super();
        bindHandlers();
    }
    
    private void bindHandlers() {
        JButton randomButton;
        
        randomButton = getButton(ADD);
        randomButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        addButtonHandler();
                    }
                }
                );

        randomButton = getButton(DEL);
        randomButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        delButtonHandler();
                    }
                }
                );
        
        randomButton = getButton(READ);
        randomButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        readButtonHandler();
                    }
                }
                );

        randomButton = getButton(WRITE);
        randomButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        writeButtonHandler();
                    }
                }
                );

        randomButton = getButton(FIRST5);
        randomButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        first5ButtonHandler();
                    }
                }
                );
        
        randomButton = getButton(LAST3);
        randomButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent event) {
                        last3ButtonHandler();
                    }
                }
                );        
    }
    
    private void addButtonHandler() {
        try {
            addEmployee();
        }
        catch (Exception exc) {
            JOptionPane.showMessageDialog(this, exc.toString(), "Error", 
                    JOptionPane.ERROR_MESSAGE);
//            exc.printStackTrace();
        }
    }
    
    private void delButtonHandler() {
        delEmployee();
    }
    
    private void readButtonHandler() {
        readEmployeeList();
    }
    
    private void writeButtonHandler() {
        writeEmployeeList();
    }
    
    private void first5ButtonHandler() {
        int FIVE = 5;
        if (getListLen() < FIVE) {
            showList(0, getListLen());
        }
        else {
            showList(0, FIVE);
        }
    }
    
    private void last3ButtonHandler() {
        int THREE = 3;
        if (getListLen() < THREE) {
            showList(0, getListLen());
        }
        else {
            showList(getListLen() - THREE, getListLen());
        }
    }    
}
