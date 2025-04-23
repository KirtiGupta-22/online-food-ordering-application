package com.example.foodorderback.service;

import com.example.foodorderback.model.MenuItem;
import com.example.foodorderback.repository.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface MenuService {

  List<MenuItem> getAllMenuItem();

    List<MenuItem> getAllMenuItems();

    MenuItem getMenuItemById(Long id);
    MenuItem createMenuItem(MenuItem menuItem);
    MenuItem updateMenuItem(MenuItem menuItem);
    void deleteMenuItem(Long id);


}
