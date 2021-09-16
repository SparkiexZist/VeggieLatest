package io.aadeesh.controller;

import io.aadeesh.model.User;
import io.aadeesh.model.Vegetable;
import io.aadeesh.repo.VegetableRepository;
import org.jasypt.util.password.StrongPasswordEncryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class VegetableController {
    @Autowired
    VegetableRepository vegrepo;

    @RequestMapping("/vegetables")
    @GetMapping("/vegetables")
    public String getVegetables(ModelMap model)
    {
        List<Vegetable> vegList = vegrepo.getAll();
        model.addAttribute("veg",vegList);
        return "vegetables";
    }

    @GetMapping("/vegetables/add")
    public String getAddForm()
    {
        return "vegetables-add";
    }
    @PostMapping("/vegetables/addVegetable")
    public String addVegetable(Vegetable vegetable)
    {
        String uniqueID = UUID.randomUUID().toString();
        vegetable.setId(uniqueID);
        vegrepo.save(vegetable);
        return "vegetables";
    }
}