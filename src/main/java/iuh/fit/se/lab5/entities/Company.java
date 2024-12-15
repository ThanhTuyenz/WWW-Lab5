package iuh.fit.se.lab5.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "company")
public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long com_id;

    private String about;
    private String comp_name;
    private String email;
    private String phone;
    private String web_url;

    @OneToOne
    @JoinColumn(name = "address", referencedColumnName = "add_id")
    private Address address;
}
