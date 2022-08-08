package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bean.Login;

@Repository
public interface AuthRepository  extends JpaRepository<Login, String>{
	@Query("select l from Login l where l.email = :email and l.password = :password")
	public Login LogUserIn(@Param("email") String email, @Param("password") String password);
	
	@Query("select l from Login l where l.email = :email")
	public Login SearchUserByEmail(@Param("email") String email);
}
