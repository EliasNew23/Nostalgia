package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MiControlador {

    /* Nuevo */
    @GetMapping("/catalogo")
    public String catalogo(Model model) {
        return "catalogo";
    }

    @GetMapping("/contacto")
    public String contacto(Model model) {
        return "contacto";
    }

    @GetMapping("/CRUD")
    public String crud(Model model) {
        return "CRUD";
    }

    @GetMapping("/gestion")
    public String gestion(Model model) {
        return "gestion";
    }

    @GetMapping("/index")
    public String index(Model model) {
        return "index";
    }

    @GetMapping("/login")
    public String login(Model model) {
        return "login";
    }
}
