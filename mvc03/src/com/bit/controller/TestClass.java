package com.bit.controller;

class Test{
	public TestClass getObject(){
		return new TestClass();
	}
}

public class TestClass {
	
	TestClass() {
	}
	
	public static TestClass getObject(){
		return new TestClass();
	}

	public void forward(){
		System.out.println("��ɽ����մϴ�");
	}
}
