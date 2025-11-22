package com.idat.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.security.core.Authentication;

@RestController
@RequestMapping("/api")
public class AppController {
    @GetMapping("/publico")
    public String publico() {
        return "Bienvenido a la API Pública (Acceso libre)";
    }
    @GetMapping("/interno")
    public String interno(Authentication auth) {
        return "Bienvenido usuario interno: " + auth.getName();
    }

    @GetMapping("/admin/gestion")
    public String adminGestion() {
        return "Acceso concedido a zona ADMIN. Gestión de sistema.";
    }
}