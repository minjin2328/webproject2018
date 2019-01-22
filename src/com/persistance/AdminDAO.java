package com.persistance;

import com.domain.Admin;

//관리자(Admin) 데이터베이스 저장소 운영 클래스
public interface AdminDAO {

	// 관리자 로그인 메소드
	public int login(Admin a);


	// 관리자 패스워드 변경 메소드
	public int Modify(Admin a);
	
}
