package com.example.comp_shop.repositories;

import com.example.comp_shop.models.PC;
import com.example.comp_shop.models.Req;
import jakarta.persistence.Tuple;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PCRep extends CrudRepository<PC, Integer> {
    void deleteAll();
//    @Query(
//            value = "SELECT math.name as мать, fast_memory.name as оперативка From math Join fast_memory",
//            nativeQuery = true)
//    Iterable<Req> get_PC(@Param("math") String math, @Param("memory") String memory);
}
