package com.example.comp_shop.models;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class Req  {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private String mather;
    private String fast_Memory;

}
