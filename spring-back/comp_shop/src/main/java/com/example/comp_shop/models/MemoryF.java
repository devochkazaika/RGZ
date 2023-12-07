package com.example.comp_shop.models;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name="fast_memory")
@NoArgsConstructor
public class MemoryF {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private long image_id;
    private String name;
    private String socket;
    private String from_fact;
    private String speed;
}
