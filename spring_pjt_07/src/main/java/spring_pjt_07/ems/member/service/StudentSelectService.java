package spring_pjt_07.ems.member.service;

import spring_pjt_07.ems.member.Student;
import spring_pjt_07.ems.member.dao.StudentDao;

public class StudentSelectService {
	private StudentDao studentDao;

	public StudentSelectService(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public Student select(String sNum) {
		if(verify(sNum)) {
			return studentDao.select(sNum);
		}else {
			System.out.println("해당하는 정보가 없습니다.");
		}
		return null;
	}

	public boolean verify(String sNum) {
		Student student = studentDao.select(sNum);
		return student == null ? true : false;
	}
}
