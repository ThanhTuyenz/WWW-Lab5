package iuh.fit.se.lab5.backend.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import iuh.fit.se.lab5.entities.Address;

public interface AddressRepository extends JpaRepository<Address, Long> {
}
