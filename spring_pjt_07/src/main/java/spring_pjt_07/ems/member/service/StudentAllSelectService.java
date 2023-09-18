package spring_pjt_07.ems.member.service;
import java.util.Map;

import spring_pjt_07.ems.member.Student;
import spring_pjt_07.ems.member.dao.StudentDao;

public class StudentAllSelectService {
	private StudentDao studentDao;

	public StudentAllSelectService(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public Map<String, Student> allselect(){
		return studentDao.getStudentDB();
	}

}
