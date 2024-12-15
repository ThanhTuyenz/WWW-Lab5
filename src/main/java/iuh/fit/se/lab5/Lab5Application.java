package iuh.fit.se.lab5;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import iuh.fit.se.lab5.entities.Address;
import iuh.fit.se.lab5.entities.Candidate;
import iuh.fit.se.lab5.backend.repositories.AddressRepository;
import iuh.fit.se.lab5.backend.repositories.CandidateRepository;

import java.time.LocalDate;
import java.util.Random;

@SpringBootApplication
public class Lab5Application {

    public static void main(String[] args) {
        SpringApplication.run(Lab5Application.class, args);
    }

    @Bean
    CommandLineRunner initData(AddressRepository addressRepository, CandidateRepository candidateRepository) {
        return args -> {
            Random rnd = new Random();
        };
    }
}
