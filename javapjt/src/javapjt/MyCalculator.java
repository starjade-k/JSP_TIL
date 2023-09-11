package javapjt;

public class MyCalculator {
	public void calAdd(int fNum, int sNum) {
		ICalculator calculator = new CalAdd(); //CalAdd 객체 생성
		int value = calculator.doOperation(fNum,sNum);// 덧셈 연산
		System.out.println("result = " + value);
	}

	public void calSub(int fNum, int sNum) {
		ICalculator calculator = new CalSub(); //CalAdd 객체 생성
		int value = calculator.doOperation(fNum,sNum);// 뺄셈 연산
		System.out.println("result = " + value);
	}

	public void calMul(int fNum, int sNum) {
		ICalculator calculator = new CalMul(); //CalAdd 객체 생성
		int value = calculator.doOperation(fNum,sNum);// 곱셈 연산
		System.out.println("result = " + value);
	}

	public void calDiv(int fNum, int sNum) {
		ICalculator calculator = new CalDiv(); //CalAdd 객체 생성
		int value = calculator.doOperation(fNum,sNum);// 나눗셈 연산
		System.out.println("result = " + value);
	}
}
