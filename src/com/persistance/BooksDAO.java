package com.persistance;

import java.util.*;
import com.domain.Books;

//����(books) �����ͺ��̽� ����� � Ŭ����
public interface BooksDAO {

	// ���� �Է¸޼ҵ�
	public int insert(Books b);

	// ���� ��¸޼ҵ�1
	// ������̵� | ����� | ���ǻ��
	public List<Books> print1(Books b);

	// ���� ��¸޼ҵ�2
	// ������̵� | ����� | ���ǻ�� | �������ɿ���
	public List<Books> print2(Books b);
	
	// ���� ��¸޼ҵ�3
	// ������̵� | �����
	public List<Books> print3(Books b);

	// ���� �����޼ҵ�
	public int remove(Books b);

}
