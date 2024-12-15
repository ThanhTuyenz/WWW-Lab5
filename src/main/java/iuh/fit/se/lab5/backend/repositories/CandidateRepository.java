package iuh.fit.se.lab5.backend.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import iuh.fit.se.lab5.entities.Candidate;

public interface CandidateRepository extends JpaRepository<Candidate, Long> {
}
