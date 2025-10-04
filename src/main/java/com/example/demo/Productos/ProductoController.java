package com.example.demo.producto;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.tipoProducto.TipoProductoService;

@Controller
@RequestMapping("/producto")
public class ProductoController {

    private final TipoProductoService tipoProductoService;
    private final ProductoService productoService;


    public ProductoController(TipoProductoService tipoProductoService, ProductoService productoService) {
        this.tipoProductoService = tipoProductoService;
        this.productoService = productoService;
    }

    // LISTADO
    @GetMapping("/CRUD")
    public String crud(Model model){
        model.addAttribute("productos", productoService.listaProducto());
        model.addAttribute("Categorias", tipoProductoService.listaTipoProducto());
        model.addAttribute("Productos", new Producto());
        return "entregable/CRUDproducto"; // JSP
    }

    // CREAR PRODUCTO
    @PostMapping("/crear")
    public String CrearProducto(@ModelAttribute("Productos") Producto producto){
        productoService.CrearProducto(producto);
        return "redirect:/producto/CRUD"; // redirige al endpoint /producto/CRUD
    }

}
