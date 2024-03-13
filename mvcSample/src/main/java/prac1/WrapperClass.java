package prac1;

import java.util.ArrayList;

public class WrapperClass {

	public static void main(String[] args) { 
		//■ 오토박싱, 언박싱
		 
	 
		
		
		//int  => Integer  // auto boxing  
		//Integer => int   // auto unboxing
		
		
		Integer i1 = new Integer(3);
		Integer i2 = 3; 		
		int sum2 = i1.intValue() + i2.intValue();
		
		// auto unboxing
		int sum = i1 +i2;
		System.out.println("sum=" + sum + "sum2=" + sum2);
		 
				 
		//Wrapper 클래스
		//기본자료형 => 객체형으로 제공함 
		//자바는 대부분 Object로 다루는데 기본자료형은 객체타입이 아니므로 다룰 수가 없다
		//그래서 기본자료형을 객체타입으로 만들어주는 Wrapper 클래스가 존재한다. = > 단순히 객체로 만들기 위해 존재하는 클래스이다. 그래서 이름도 감싼다는  Wrapper클래스 라고 한다.
		Integer i=10;
		Double d =223.45;
		Boolean b = false;
		
		int su=10;
		
		ArrayList list = new ArrayList();		
		list.add(1);
		list.add( i);
		list.add( su);
		list.add( d);
		list.add(b);
		  
		
		for( Object o :  list) {
			System.out.println( o);
		}
		
	}

}
