/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package uniq;

import java.awt.BorderLayout;
import java.awt.ComponentOrientation;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.ScrollPane;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
/**
 *
 * @author alex
 */
public class UniQ extends JFrame {
    private static final long serialVersionUID = 01010L;
    private JTextArea inField, outField;
    private JButton checkButton;

    public UniQ() {
        super("UniQ");
        
//        panel.setLayout(new GridLayout(1,1));
        
        Container container = getContentPane();
        container.setLayout(new GridBagLayout());
        inField = new JTextArea();
        inField.setMinimumSize(new Dimension(100, 50));
        outField = new JTextArea();
        outField.setMinimumSize(new Dimension(100, 50));
        checkButton = new JButton("Unique check");
        
//        container.setComponentOrientation(ComponentOrientation.RIGHT_TO_LEFT);
        
        GridBagConstraints c = new GridBagConstraints();
        c.fill = GridBagConstraints.BOTH;
        c.gridx = 0;
        c.gridy = 0;
        container.add(new JButton("1"), c);
        
        c.fill = GridBagConstraints.HORIZONTAL;
        c.gridx = 1;
        c.gridy = 0;
        container.add(new JButton("2"), c);
        
        c.fill = GridBagConstraints.HORIZONTAL;
        c.gridx = 0;
        c.gridy = 1;
        c.ipady = 40;
        c.gridwidth = 3;
        container.add(new JButton("3"), c);
        
//        JPanel fieldsPanel = new JPanel();
//        fieldsPanel.setLayout(new GridLayout(1, 2));
//        fieldsPanel.add(inField);
//        fieldsPanel.add(outField);
        
//        container.add(new JScrollPane(fieldsPanel), BorderLayout.NORTH);
//        container.add(checkButton, BorderLayout.SOUTH);
        
//        checkButton.setSize(50, 100);
        
        bindHandlers();
        
//        pack();
        setVisible(true);
        setSize(200, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
    private void bindHandlers() {
        checkButton.addActionListener(
                new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent arg0) {
                        check();
                    }
                }
                );
    }
    
    private void check() {
        String inText = inField.getText();
        
        String outText = inText;
        outField.setText(outText);
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        UniQ app = new UniQ();
    }
}
