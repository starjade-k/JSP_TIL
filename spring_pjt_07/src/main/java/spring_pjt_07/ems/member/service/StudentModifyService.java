package spring_pjt_07.ems.member.service;
import spring_pjt_07.ems.member.Student;
import spring_pjt_07.ems.member.dao.StudentDao;

public class StudentModifyService {
	private StudentDao studentDao;

	public StudentModifyService(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public void register(Student student) {
		if(verify(student.getsNum())) {
			studentDao.update(student);
		} else {
			System.out.println("업데이트 할 수 없습니다.");
		}
	}

	public boolean verify(String sNum) {
		Student student = studentDao.select(sNum);
		return student == null ? true : false;
	}
}
