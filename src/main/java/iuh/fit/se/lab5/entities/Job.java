package iuh.fit.se.lab5.entities;


import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "job")
public class Job {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long job_id;

    private String job_name;
    private String job_desc;

    @ManyToOne
    @JoinColumn(name = "company", referencedColumnName = "com_id")
    private Company company;
}
