package com.example.comp_shop.controllers;

import com.example.comp_shop.models.Mather;
import com.example.comp_shop.models.MemoryF;
import com.example.comp_shop.repositories.MemoryFRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@CrossOrigin("http://localhost:8081/")
public class MemoryFController {
    @Autowired
    private MemoryFRepository memoryrep;

    @PostMapping(path="/memory")
    public @ResponseBody String addNewMath (@RequestBody MemoryF memory) {
        memoryrep.save(memory);
        return "Saved";
    }

    @GetMapping(path = "/get/memory")
    public @ResponseBody Iterable<MemoryF> getAllMath(@PathVariable(value = "id") Long id){
        return memoryrep.findById(id);
    }

    @GetMapping(path = "/get/memory/na/{name}")
    public @ResponseBody Iterable<MemoryF> getMemoryName(@PathVariable(value = "name") String name){
        return memoryrep.findByName(name);
    }

    @GetMapping(path="/all/memory")
    public @ResponseBody Iterable<MemoryF> getAllMath() {
        // This returns a JSON or XML with the users
        return memoryrep.findAll();
    }


    @PostMapping(path="/add/memory")
    public @ResponseBody String addNewPC (@RequestBody MemoryF memory) {
        memoryrep.save(memory);
        return "Saved";
    }
}
