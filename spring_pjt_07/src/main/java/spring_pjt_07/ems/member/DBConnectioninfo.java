package spring_pjt_07.ems.member;

// 데이터베이스 연결에 필요한 정보(url, userid, userpw)
public class DBConnectioninfo {
	private String url;
	private String userId;
	private String userPw;
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
}
