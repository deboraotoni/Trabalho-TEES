package app.controllers;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import app.models.Codeshare;
import app.repositories.CodeshareRepository;
import app.repositories.CodeshareRepositoryImpl;

import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.util.test.MockResult;
import br.com.caelum.vraptor.validator.Message;
import br.com.caelum.vraptor.validator.ValidationException;

import org.junit.*;
import static org.junit.Assert.*;
 

public class CodeshareControllerTest {


	   
	@Test
	   public void testCreate() {
	               Result r = null;
	               Validator v = null;
	               CodeshareRepository repo = null;
	               CodeshareController controller = new CodeshareController(r,repo,v);
	               Codeshare c = new Codeshare();
	               controller.create(c);
	               assertNotNull(c);
	   }
	
	@Test
	   public void testDestroy() {
	               Result res = null;
	               Validator val = null;
	               CodeshareRepository repo = null;
	               Codeshare c = new Codeshare();
	               CodeshareController controller = new CodeshareController(res,repo,val);
	               controller.destroy(c);
	               assertNull(c);
	   }
	
	
	
	
}


