package com.example.comp_shop.repositories;

import com.example.comp_shop.models.Mather;
import com.example.comp_shop.models.MemoryF;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface MathRepository extends CrudRepository<Mather, Integer> {
    Iterable<Mather> findById(@Param("id") Long  id);
    Iterable<Mather> findByName(@Param("name") String name);
}
