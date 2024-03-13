package day2;

public class Score {
	
	String name;
	int kor;
	int eng;
	double avg;
	char grade;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	public char getGrade() {
		return grade;
	}
	public void setGrade(char grade) {
		this.grade = grade;
	}
	public Score(String name, int kor, int eng ) {
		super();
		this.name = name;
		this.kor = kor;
		this.eng = eng;	 
		calcGrade();
		 
	}
	
	public Score() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Score [name=" + name + ", kor=" + kor + ", eng=" + eng + ", avg=" + avg + ", grade=" + grade + "]";
	} 
	
	
	private void calcAvg() {		
	  int sum  = kor+eng;
	  avg = sum/2.0;		
		
	}
	
	private void calcGrade() {		
		//평균에 따른 학점
		calcAvg();
		
		
		if( avg >=90) {
			grade='A';
		}else  if( avg>=80) {
			grade='B';
		}else if( avg >=70) {
			grade='C';
		}else {
			grade='F';
		} 		
		
	}
	
	 

}
