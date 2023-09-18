package spring_pjt_07.ems.member.service;

import spring_pjt_07.ems.member.Student;
import spring_pjt_07.ems.member.dao.StudentDao;

public class StudentRegisterService {
	private StudentDao studentDao;

	public StudentRegisterService(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public void register(Student student) {
		if(verify(student.getsNum())) {
			studentDao.insert(student);
		} else {
			System.out.println("이미 학번이 존재하는 군요");
		}
	}
	
	public boolean verify(String sNum) {
		Student student = studentDao.select(sNum);
		return student == null ? true : false;
	}
}
