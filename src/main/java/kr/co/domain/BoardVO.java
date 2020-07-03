package kr.co.domain;

import java.io.Serializable;

public class BoardVO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
		private int bno;
		private String title; 
		private String content;
		private String writer;
		private int wiewcnt;
		private String regDate;
		private String updateDate;
	
		public BoardVO() {
			// TODO Auto-generated constructor stub
		}

		public BoardVO(int bno, String title, String content, String writer, int wiewcnt, String regDate,
				String updateDate) {
			super();
			this.bno = bno;
			this.title = title;
			this.content = content;
			this.writer = writer;
			this.wiewcnt = wiewcnt;
			this.regDate = regDate;
			this.updateDate = updateDate;
		}

		public int getBno() {
			return bno;
		}

		public void setBno(int bno) {
			this.bno = bno;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public String getWriter() {
			return writer;
		}

		public void setWriter(String writer) {
			this.writer = writer;
		}

		public int getWiewcnt() {
			return wiewcnt;
		}

		public void setWiewcnt(int wiewcnt) {
			this.wiewcnt = wiewcnt;
		}

		public String getRegDate() {
			return regDate;
		}

		public void setRegDate(String regDate) {
			this.regDate = regDate;
		}

		public String getUpdateDate() {
			return updateDate;
		}

		public void setUpdateDate(String updateDate) {
			this.updateDate = updateDate;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
		
}
