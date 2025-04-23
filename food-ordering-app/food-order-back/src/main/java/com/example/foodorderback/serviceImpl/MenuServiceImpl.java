package com.example.foodorderback.serviceImpl;

import com.example.foodorderback.model.MenuItem;
import com.example.foodorderback.repository.MenuRepository;
import com.example.foodorderback.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuRepository menuRepository;

    @Override
    public List<MenuItem> getAllMenuItem() {
        return List.of();
    }

    @Override
    public List<MenuItem> getAllMenuItems() {
        return menuRepository.findAll();
    }

    @Override
    public MenuItem getMenuItemById(Long id) {
        return menuRepository.findById(id).orElse(null);
    }

    @Override
    public MenuItem createMenuItem(MenuItem menuItem) {
        return menuRepository.save(menuItem);
    }

    @Override
    public MenuItem updateMenuItem(MenuItem menuItem) {
        return menuRepository.save(menuItem);
    }

    @Override
    public void deleteMenuItem(Long id) {
        menuRepository.deleteById(id);
    }
}
