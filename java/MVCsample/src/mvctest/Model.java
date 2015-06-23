/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mvctest;

import java.util.*;
import java.io.*;
/**
 *
 * @author alex
 */
public class Model extends View {
    private List<String> list_;
    private File listFile;
    private final String filePath = "/home/alex/programming/NetBeansProjects/MVCsample/file.txt";
    
    protected Model() {
        super();
        listFile = new File(filePath);
        list_ = new ArrayList();
    }
    
    protected void Add() {
        list_.add(getText());
        updateTable(list_);
    }
    
    protected void Del() {
        if (!list_.isEmpty()) {
            list_.remove(list_.size()-1);
        }
        updateTable(list_);
    }
    
    protected void writeList() {
        ObjectOutputStream out = null;
        try {
             out = new ObjectOutputStream(new BufferedOutputStream(new FileOutputStream(listFile)));
             for(int i = 0;i < list_.size();i++) {
                 out.writeUTF(list_.get(i));
                 out.flush();
             }
        }
        catch (IOException exception) {
            //oops
        }
        finally {
            try {
                out.close();
            }
            catch (Exception exc) {
                /*fuck you*/
            }
        }
        updateTable(list_);
    }
    
    protected void readList() {
        ObjectInputStream in = null;
        try {
             in = new ObjectInputStream(new BufferedInputStream(new FileInputStream(listFile)));
             while (true) {
                 list_.add(in.readUTF());
             }
        }
        catch (EOFException eof) {
            //eof
        }
        catch (IOException exception) {
            //oops
        }
        finally {
            try {
                in.close();
            }
            catch (Exception exc) {
                /*fuck you*/
            }
        }
        updateTable(list_);
    }
    
    protected void clearList() {
        list_.clear();
    }
}
