package com.example.comp_shop.models;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@NoArgsConstructor
@Table(name="math")
public class Mather {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private long image_id;
    private String name;
    private String socket;
    private String from_fact;
}
