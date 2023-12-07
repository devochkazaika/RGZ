package com.example.comp_shop.controllers;

import com.example.comp_shop.models.PC;
import com.example.comp_shop.models.Req;
import com.example.comp_shop.repositories.PCRep;
import com.example.comp_shop.repositories.ReqRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class ReqContoller {
    @Autowired
    private ReqRepository req;

    @PostMapping(path="/get_pc")
    public @ResponseBody List<Req>  getPC (@RequestBody Req pc) {
        String t1 = pc.getMather();
        String t2 = pc.getFast_Memory();
        t1 = (t1.equals("0")) ? "%" : t1;
        t2 = (t2.equals("0")) ? "%" : t2;

        System.out.println(t1);
        List<List<String>> t = req.get_PC(t1, t2);
        List<Req> ans = new ArrayList<Req>();
        for (List<String> i: t){
            Req s = new Req();
            s.setId(Long.parseLong(i.get(0)));
            s.setMather(i.get(1));
            s.setFast_Memory(i.get(2));
            ans.add(s);
        }
        return ans;
    }
}
