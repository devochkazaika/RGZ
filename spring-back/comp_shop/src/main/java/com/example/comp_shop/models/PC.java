package com.example.comp_shop.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@Table(name="pc")
public class PC {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
//    private long id_image;
//    @JoinColumn(name = "id_math")
    private Long id_math;

//    @JoinColumn(name = "id_fast_memory")
    private Long id_fast_memory;
//    private long id_slow_memory;
//    private long id_box;
//    private long id_proc;
//    @JoinColumn(name = "id_graphics")
    private long id_graphics;
}