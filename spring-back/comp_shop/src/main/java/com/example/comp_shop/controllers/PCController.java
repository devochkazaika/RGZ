package com.example.comp_shop.controllers;


import com.example.comp_shop.models.PC;
import com.example.comp_shop.models.Req;
import com.example.comp_shop.repositories.PCRep;
import com.example.comp_shop.repositories.ReqRepository;
import jakarta.persistence.Tuple;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@CrossOrigin("http://localhost:8081/")
public class PCController {
    @Autowired
    private PCRep pcrep;


    @PostMapping(path="/add/pc")
    public @ResponseBody String addNewPC (@RequestBody PC pc) {
        pcrep.save(pc);
        return "Saved";
    }


//    @GetMapping(path="/get_pc")
//    public @ResponseBody Iterable<Req> getPC (@RequestBody PC pc) {
//        String t1 = Long.toString(pc.getId_math());
//        String t2 = Long.toString(pc.getId_fast_memory());
//        t1 = (t1.equals("0")) ? "%" : t1;
//        t2 = (t2.equals("0")) ? "%" : t2;
//        System.out.println(req.get_PC(t1, t2));
//        return req.get_PC(t1, t2);
//    }



    @DeleteMapping(path="/delete_all")
    public void Delete_all() {
        pcrep.deleteAll();
    }

    @GetMapping(path="/all/pc")
    public @ResponseBody Iterable<PC> getAllUsers() {
        // This returns a JSON or XML with the users
        return pcrep.findAll();
    }
//    public PC greeting(@RequestParam(value="name", required=false, defaultValue="World") String name) {
//        return new PC();
//    }
}