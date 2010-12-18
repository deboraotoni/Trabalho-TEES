package app.repositories;

import java.util.List;

import app.models.Codeshare;

public interface CodeshareRepository {
	/*
	 * Delete the methods you don't want to expose
	 */
	 
	void create(Codeshare entity);
	
	void update(Codeshare entity);
	
	void destroy(Codeshare entity);
	
	Codeshare find(Long id);
	
	List<Codeshare> findAll();

}
