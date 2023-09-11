package javapjt;

public class MainClass {
	public static void main(String[] args) {
		MyCalculator calculator = new MyCalculator();
		calculator.calculate(10,5,new CalAdd()); //객체 주입(삽입)
		calculator.calculate(10,5,new CalSub());
		calculator.calculate(10,5,new CalMul());
		calculator.calculate(10,5,new CalDiv());
	}

}
