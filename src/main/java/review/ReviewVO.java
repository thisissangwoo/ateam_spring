package review;

public class ReviewVO {
			int rev_num,rev_text1,rev_text2,rev_text3;
			double rev_grade;
			String user_id, rev_date;
			
			public int getRev_num() {
				return rev_num;
			}
			public void setRev_num(int rev_num) {
				this.rev_num = rev_num;
			}
			public int getRev_text1() {
				return rev_text1;
			}
			public void setRev_text1(int rev_text1) {
				this.rev_text1 = rev_text1;
			}
			public int getRev_text2() {
				return rev_text2;
			}
			public void setRev_text2(int rev_text2) {
				this.rev_text2 = rev_text2;
			}
			public int getRev_text3() {
				return rev_text3;
			}
			public void setRev_text3(int rev_text3) {
				this.rev_text3 = rev_text3;
			}
			public double getRev_grade() {
				return rev_grade;
			}
			public void setRev_grade(double rev_grade) {
				this.rev_grade = rev_grade;
			}
			public String getUser_id() {
				return user_id;
			}
			public void setUser_id(String user_id) {
				this.user_id = user_id;
			}
			public String getRev_date() {
				return rev_date;
			}
			public void setRev_date(String rev_date) {
				this.rev_date = rev_date;
			}
}
