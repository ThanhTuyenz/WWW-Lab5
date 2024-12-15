package iuh.fit.se.lab5.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "address")
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long add_id;

    private String country;
    private String zipcode;
    private String number;
    private String city;
    private String street;
}