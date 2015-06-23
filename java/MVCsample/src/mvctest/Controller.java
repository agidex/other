/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mvctest;

import java.awt.event.*;
import javax.swing.*;
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
    }
    
    public void readButtonHandler() {
        clearList();
        readList();        
        System.out.println("Read button clicked");
    }
    
    public void writeButtonHandler() {
        writeList();
        System.out.println("Write button clicked");
    }
    
    public void addButtonHandler() {
        Add();
        System.out.println("Add button clicked");
    }
    
    public void delButtonHandler() {
        Del();
        System.out.println("Del button clicked");
    }    
}
