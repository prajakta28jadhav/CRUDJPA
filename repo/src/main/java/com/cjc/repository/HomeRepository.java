package com.cjc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cjc.model.Student;

@Repository
public interface HomeRepository extends CrudRepository<Student, Integer> {
	/*
	 * @Query("Select s from Student s where s.username=:username and s.password=:password"
	 * ) Student findStudentByUsernameAndPassword(@Param("username")String
	 * username,@Param("password")String password);
	 */
	
	Student findByUsernameAndPassword(String username,String password);
	
}
