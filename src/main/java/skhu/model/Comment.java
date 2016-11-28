package skhu.model;

public class Comment {
   int c_id;
   public int getC_id() {
      return c_id;
   }
   public void setC_id(int c_id) {
      this.c_id = c_id;
   }
   Integer b_id;
   Integer n_id;
   String c_writerId;
   String c_writerName;
   String c_content;
   String c_writeTime;
   int u_cNumber;
   public int getU_cNumber() {
      return u_cNumber;
   }
   public void setU_cNumber(int u_cNumber) {
      this.u_cNumber = u_cNumber;
   }
   public int getB_id() {
      return b_id;
   }
   public void setB_id(Integer b_id) {
      this.b_id = b_id;
   }
   public int getN_id() {
      return n_id;
   }
   public void setN_id(Integer n_id) {
      this.n_id = n_id;
   }
   public String getC_writerId() {
      return c_writerId;
   }
   public void setC_writerId(String c_writerId) {
      this.c_writerId = c_writerId;
   }
   public String getC_writerName() {
      return c_writerName;
   }
   public void setC_writerName(String c_writerName) {
      this.c_writerName = c_writerName;
   }
   public String getC_content() {
      return c_content;
   }
   public void setC_content(String c_content) {
      this.c_content = c_content;
   }
   public String getC_writeTime() {
      return c_writeTime;
   }
   public void setC_writeTime(String c_writeTime) {
      this.c_writeTime = c_writeTime;
   }
}