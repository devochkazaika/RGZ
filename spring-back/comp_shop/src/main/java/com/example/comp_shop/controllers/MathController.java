package com.example.comp_shop.controllers;

import com.example.comp_shop.models.Mather;
import com.example.comp_shop.models.PC;
import com.example.comp_shop.repositories.MathRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@CrossOrigin("http://localhost:8081/")
public class MathController {
    @Autowired
    private MathRepository mathrep;

    @PostMapping(path="/math")
    public @ResponseBody String addNewMath (@RequestBody Mather math) {
        mathrep.save(math);
        return "Saved";
    }

//    @GetMapping(path = "/get/math/id/{id}")
//    public @ResponseBody Iterable<Mather> getAllMath(@PathVariable(value = "id") Long id){
//        return mathrep.findById(id);
//    }

    @GetMapping(path = "/get/math/na/{name}")
    public @ResponseBody Iterable<Mather> getMathName(@PathVariable(value = "name") String name){
        return mathrep.findByName(name);
    }

    @GetMapping(path="/all/math")
    public @ResponseBody Iterable<Mather> getAllMath() {
        // This returns a JSON or XML with the users
        return mathrep.findAll();
    }
//    @GetMapping(path="/all/math/id/{id}")
//    public @ResponseBody String getNameId(@PathVariable("id") int id) {
//        // This returns a JSON or XML with the users
//        return mathrep.findById(id).get().getName();
//    }
    @PostMapping(path="/add/math")
    public @ResponseBody String addNewPC (@RequestBody Mather math) {
        mathrep.save(math);
        return "Saved";
    }
}
