package spring_pjt_07.ems.member.service;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import spring_pjt_07.ems.member.Student;
public class PrintStrudentInformationService {
	StudentAllSelectService allSelectService;

	public PrintStrudentInformationService(StudentAllSelectService allSelectService) {
		this.allSelectService = allSelectService;
	}

	public void printStudentinfo() {
		Map<String, Student> allStudent = allSelectService.allselect();
		Set<String> keys = allStudent.keySet();
		Iterator<String> iterator = keys.iterator();
		System.out.println("학생 정보 리스트 ---------------");

		while(iterator.hasNext()) {
			String key = iterator.next();
			Student student = allStudent.get(key);
			System.out.println("sNum : " + student.getsNum() + "\t");
			System.out.println("Id : " + student.getsId() + "\t");
			System.out.println("Pw : " + student.getsPw() + "\t");
			System.out.println("Name : " + student.getsName() + "\t");
			System.out.println("Age : " + student.getsAge() + "\t");
			System.out.println("Gender : " + student.getsGender() + "\t");
			System.out.println("Major : " + student.getsMajor() + "\t");

		}
		System.out.println("종료 -----------------------------");
	}
}
