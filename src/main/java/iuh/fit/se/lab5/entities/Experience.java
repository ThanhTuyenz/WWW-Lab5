package iuh.fit.se.lab5.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "experience")
public class Experience {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long exp_id;

    private String from_date;
    private String to_date;
    private String role;
    private String company;
    private String work_desc;

    @ManyToOne
    @JoinColumn(name = "can_id", referencedColumnName = "can_id")
    private Candidate candidate;
}