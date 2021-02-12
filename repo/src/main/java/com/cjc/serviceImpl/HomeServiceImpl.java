package com.cjc.serviceImpl;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.model.Student;
import com.cjc.repository.HomeRepository;
import com.cjc.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	HomeRepository repository;

	@Override
	public void save(Student stud) {
		repository.save(stud);
		
	}


	@Override
	public Student getStudent(String username,String password) {
		System.out.println(username+"  "+password);
		return repository.findByUsernameAndPassword(username, password);
	}


	@Override
	public List<Student> findAll() {
		
		return (List<Student>) repository.findAll();
		
	}


	@Override
	public Optional<Student> getStudentById(int id) {
		
		return repository.findById(id);
	}


	@Override
	public Student updateStudent(Student stud) {
		
		return repository.save(stud);
	
	}


	@Override
	public void delRecord(int id) {
		
		 repository.deleteById(id);
	}
}
