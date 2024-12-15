package iuh.fit.se.lab5.frontend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import iuh.fit.se.lab5.backend.services.CandidateServices;
import iuh.fit.se.lab5.entities.Candidate;

import java.util.Optional;

@Controller
public class CandidateController {
    @Autowired
    private CandidateServices candidateServices;

    @GetMapping("/list")
    public String showAllCandidates(Model model) {
        model.addAttribute("candidates", candidateServices.findAll());
        return "candidates/candidates";
    }

    @GetMapping("/candidates")
    public String showCandidatesWithPaging(Model model,
                                           @RequestParam("page") Optional<Integer> page,
                                           @RequestParam("size") Optional<Integer> size) {
        int currentPage = page.orElse(1);
        int pageSize = size.orElse(10);

        model.addAttribute("candidatePage", candidateServices.findAllWithPaging(
                currentPage - 1, pageSize, "id", "asc"));

        return "candidates/candidates-paging";
    }
}
