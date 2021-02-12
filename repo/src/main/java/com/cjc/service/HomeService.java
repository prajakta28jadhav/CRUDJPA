package com.cjc.service;

import java.util.List;
import java.util.Optional;

import com.cjc.model.Student;

public interface HomeService {

	void save(Student stud);

	Student getStudent(String username, String pssword);

	List<Student> findAll();

	Optional<Student> getStudentById(int id);

	Student updateStudent(Student stud);

	void delRecord(int id);

}
