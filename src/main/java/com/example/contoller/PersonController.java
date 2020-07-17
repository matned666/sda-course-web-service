package com.example.contoller;

import com.example.model.Person;
import com.example.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;
import java.util.NoSuchElementException;

@Controller
public class PersonController {

    private final PersonRepository personRepository;

    @Autowired
    public PersonController(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    @GetMapping("/personList")
    public String personList(Model model) {
        List<Person> list = personRepository.findAll();
        model.addAttribute("persons", list);
        return "personList";
    }


    @GetMapping("/addNewPerson")
    public String addNewPerson(Model model) {
        return "addNewPerson";
    }

    @PostMapping("/personList")
    public RedirectView postPersonList(@ModelAttribute Person newPerson){
        Person person = new Person();
        person.setFirstName(newPerson.getFirstName());
        person.setLastName(newPerson.getLastName());
        person.setGithub(newPerson.getGithub());
        person.setStart(newPerson.getStart());
        personRepository.save(person);
        return new RedirectView("/personList");
    }

    @GetMapping("/editPerson/{id}")
    public String personToEdit(Model model, @PathVariable("id") Long id) {
        System.out.println("ID: "+id);
        Person person = personRepository.findById(id).orElseThrow(()->{
            throw new NoSuchElementException();
        });
        model.addAttribute("person", person);
        return "editPerson";
    }

    @PostMapping("/personList/{id}")
    public RedirectView editPerson(@ModelAttribute Person newPerson, @PathVariable("id") Long id) {
        Person person = personRepository.findById(id).orElseThrow(()->{
            throw new NoSuchElementException();
        });
        person.setFirstName(newPerson.getFirstName());
        person.setLastName(newPerson.getLastName());
        person.setGithub(newPerson.getGithub());
        person.setStart(newPerson.getStart());
        person.setCheckbox(newPerson.getCheckbox());
        person.setJava(newPerson.getJava());
        person.setBestpractice(newPerson.getBestpractice());
        person.setTdd(newPerson.getTdd());
        person.setQuestion(newPerson.getQuestion());
        person.setHibernate(newPerson.getHibernate());
        person.setHtml(newPerson.getHtml());
        person.setJsp(newPerson.getJsp());
        person.setThymeleaf(newPerson.getThymeleaf());
        person.setGit(newPerson.getGit());
        personRepository.save(person);
        return new RedirectView("/personList");
    }

    @PostMapping("/editPerson/{id}")
    public RedirectView deletePerson(@ModelAttribute Person newPerson, @PathVariable("id") Long id){
        Person person = personRepository.findById(id).orElseThrow(()->{
            throw new NoSuchElementException();
        });
        personRepository.delete(person);
        return new RedirectView("/personList");
    }

}
