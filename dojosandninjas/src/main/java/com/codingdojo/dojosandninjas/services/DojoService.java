package com.codingdojo.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
	//adding the DojoRepo as a dependency
	private final DojoRepository dojoRepo;
	
	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepo = dojoRepository;
	}
	//Returns all Dojos
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	//creates a Dojo
	public Dojo createDojo(Dojo d) {
		return dojoRepo.save(d);
	}
	//retrieves one Dojo
	public Dojo findDojo(Long Id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(Id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
	

}
