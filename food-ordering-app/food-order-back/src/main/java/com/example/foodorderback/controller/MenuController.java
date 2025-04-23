package com.example.foodorderback.controller;

import com.example.foodorderback.model.MenuItem;
import com.example.foodorderback.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.awt.*;
import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @GetMapping
    public ResponseEntity<List<MenuItem>> getAllMenuItems() {
        return new ResponseEntity<>(menuService.getAllMenuItems(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<MenuItem> getMenuItemById(@PathVariable Long id) {
        return new ResponseEntity<>(menuService.getMenuItemById(id), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<MenuItem> createMenuItem(@RequestBody MenuItem menuItem) {
        return new ResponseEntity<>(menuService.createMenuItem(menuItem), HttpStatus.CREATED);
    }

    @PutMapping
    public ResponseEntity<MenuItem> updateMenuItem(@RequestBody MenuItem menuItem) {
        return new ResponseEntity<>(menuService.updateMenuItem(menuItem), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteMenuItem(@PathVariable Long id) {
        menuService.deleteMenuItem(id);
        return ResponseEntity.noContent().build();
    }


}
