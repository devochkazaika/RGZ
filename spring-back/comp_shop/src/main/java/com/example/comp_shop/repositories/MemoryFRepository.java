package com.example.comp_shop.repositories;

import com.example.comp_shop.models.Mather;
import com.example.comp_shop.models.MemoryF;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface MemoryFRepository extends CrudRepository<MemoryF, Integer> {
    Iterable<MemoryF> findById(@Param("id") Long  id);
    Iterable<MemoryF> findByName(@Param("name") String  id);
}
