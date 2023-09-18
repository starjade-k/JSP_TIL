package spring_pjt_07.ems.member.dao;
import java.util.HashMap;
import java.util.Map;

import spring_pjt_07.ems.member.Student;
public class StudentDao {
	private Map<String, Student> studentDB = new HashMap<String, Student>();

	//삽입, 선택, 수정, 삭제
	public void insert(Student student) {
		studentDB.put(student.getsNum(), student);
	}

	public Student select(String sNum) {
		return studentDB.get(sNum);
	}

	public void update(Student student) {
		studentDB.put(student.getsNum(), student);
	}

	public void delete(Student sNum) {
		studentDB.remove(sNum);
	}

	public Map<String, Student> getStudentDB(){
		return studentDB;
	}

}
