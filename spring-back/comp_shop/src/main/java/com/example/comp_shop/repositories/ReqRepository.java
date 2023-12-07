package com.example.comp_shop.repositories;


import com.example.comp_shop.models.Req;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.HashMap;
import java.util.List;

public interface ReqRepository extends CrudRepository<Req, Integer> {
    void deleteAll();
    @Query(
            value = "SELECT pc.id, math.name, fast_memory.name FROM pc Inner Join math on pc.id_math = math.id Inner Join fast_memory on pc.id_fast_memory = fast_memory.id WHERE math.name like :math and fast_memory.name like :memory",
            nativeQuery = true)
    List<List<String>> get_PC(@Param("math") String math, @Param("memory") String memory);
}
