package spring_pjt_07.ems.member.service;
import spring_pjt_07.ems.member.Student;
import spring_pjt_07.ems.member.dao.StudentDao;

public class StudentDeleteService {
	private StudentDao studentDao;

	public StudentDeleteService(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public void register(Student sNum) {
		if(verify(sNum.getsNum())) {
			studentDao.delete(sNum);
		} else {
			System.out.println("삭제 할 수 없습니다.");
		}
	}

	public boolean verify(String sNum) {
		Student student = studentDao.select(sNum);
		return student == null ? true : false;
	}
}
