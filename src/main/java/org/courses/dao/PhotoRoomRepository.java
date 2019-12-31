package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.model.Form;
//import org.courses.model.Photo;
import org.springframework.data.repository.CrudRepository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface PhotoRoomRepository extends CrudRepository<Form, Integer> {

}
