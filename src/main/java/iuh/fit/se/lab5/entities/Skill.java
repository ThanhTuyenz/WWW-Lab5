package iuh.fit.se.lab5.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "skill")
public class Skill {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long skill_id;

    private String skill_type;
    private String skill_name;
    private String skill_desc;
}
