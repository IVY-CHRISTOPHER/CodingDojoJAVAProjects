package com.codingdojo.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	//adding the NinjaRepo as a dependency
	private final NinjaRepository ninjaRepo;
	
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepo = ninjaRepository;
	}
	//Returns all Ninjas
	public List<Ninja> allNinjas(){
		return ninjaRepo.findAll();
	}
	//Creates a Ninja
	public Ninja createNinja(Ninja n) {
		return ninjaRepo.save(n);
	}
	//retrives one ninja
	public Ninja findNinja(Long Id) {
		Optional<Ninja> optionalNinja = ninjaRepo.findById(Id);
		if(optionalNinja.isPresent()) {
			return optionalNinja.get();
		} else {
			return null;
		}
	}
	

}
