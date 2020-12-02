/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.modelo.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author israel
 */
public class ClienteDAO {
    private static final String SQL_INSERT="{call spInsertarCategoria(?,?)}";
    private static final String SQL_UPDATE="{call spActualizarCategoria(?,?,?)}";
    private static final String SQL_DELETE="{call spEliminarCategoria(?)}";
    private static final String SQL_READ="{call spSeleccionarCategoria(?)}";
    private static final String SQL_READ_ALL="{call spSeleccionarTodo()}";
    
    private Connection con;
    private void ObtenerConexion(){
        Context initialContext;
        Context enviromentContext;
        String dsName="jdbc/3cm4";
        try {
            initialContext = new InitialContext();
            enviromentContext = (Context) initialContext.lookup("java:comp/env");
            DataSource ds = (DataSource) enviromentContext.lookup(dsName);
            con = ds.getConnection();
        } catch (NamingException | SQLException ex) {
            Logger.getLogger(CategoriaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
