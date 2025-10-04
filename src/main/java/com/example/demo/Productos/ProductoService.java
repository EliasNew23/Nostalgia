package com.example.demo.producto;

import java.util.List;

public interface ProductoService  {
    
    public List<Producto> ProductoReporte(Integer idTipoProducto);

    public List<Producto> listaProducto();

    public Producto CrearProducto(Producto producto);

}