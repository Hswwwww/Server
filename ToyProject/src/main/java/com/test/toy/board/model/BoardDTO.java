package com.test.toy.board.model;

import lombok.Data;

@Data

public class BoardDTO {
	
	private String seq;
	private String subject;
	private String content;
	private String id;
	private String regdate;
	private String readcount;
	
	private String name; // 작성자
	private double isnew; //최신글
	// 해당 컬럽에 없더라도 그냥 넣어줘도 됨.. 너무 이상하지만 않다면

}
