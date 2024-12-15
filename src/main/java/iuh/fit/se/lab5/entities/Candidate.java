package iuh.fit.se.lab5.entities;

import jakarta.persistence.*;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "candidate")
public class Candidate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long can_id;

    private String full_name;
    private String email;
    private String phone;
    private String dob;

    @OneToOne
    @JoinColumn(name = "address", referencedColumnName = "add_id")
    private Address address;
}
