package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.BoardDTO;
import dto.UserDTO;

public class BoardDAO {

// 이 DAO는 복사해서 사용하기 위한 예시입니다!!!!!!!!!!!
// 이 DAO는 복사해서 사용하기 위한 예시입니다!!!!!!!!!!!
// 이 DAO는 복사해서 사용하기 위한 예시입니다!!!!!!!!!!!
// 이 DAO는 복사해서 사용하기 위한 예시입니다!!!!!!!!!!!
// 이 DAO는 복사해서 사용하기 위한 예시입니다!!!!!!!!!!!
// 이 DAO는 복사해서 사용하기 위한 예시입니다!!!!!!!!!!!
// 이 DAO는 복사해서 사용하기 위한 예시입니다!!!!!!!!!!!
// 지금 쓰면 오류납니다!!!!!!!!!!!
// 지금 쓰면 오류납니다!!!!!!!!!!!
// 자기거 한두개 만들고 지우고 실행해야 실행돼요
// 자기거 한두개 만들고 지우고 실행해야 실행돼요
// 자기거 한두개 만들고 지우고 실행해야 실행돼요
// 자기거 한두개 만들고 지우고 실행해야 실행돼요


	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public BoardDAO() {
		try {

			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/mysqlDB");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//1. 메인페이지 공지 board
	public List<BoardDTO> selectNoticeBoard() {
		
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		
		try {
			con = dataFactory.getConnection();
			
			if(con != null) {
				System.out.println("mysql 커넥션풀 성공");
			}else {
				System.out.println("접속fail");
			}
			
			String query = "";
			query += "SELECT * FROM TB_BOARD ";
			query += "WHERE CAT_ID = 1 ";
			
			pstmt = con.prepareStatement(query);
			pstmt.execute();
			
			System.out.println("쿼리 : "+query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int board_id =  rs.getInt("board_id");
				int cat_id =  rs.getInt("cat_id");
				String user_id =  rs.getString("user_id");
				String board_title =  rs.getString("board_title");
				String board_contents =  rs.getString("board_contents");
				//String board_img =  rs.getString("board_img");
				Date board_date =  rs.getDate("board_date");
				
				BoardDTO dto = new BoardDTO();
				
				dto.setBoard_id(board_id);
				dto.setCat_id(cat_id);
				dto.setUser_id(user_id);
				dto.setBoard_title(board_title);
				dto.setBoard_contents(board_contents);
				//dto.setBoard_img(board_img);
				dto.setBoard_date(board_date);
				
				list.add(dto);

			}
			
			if(rs !=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if (con != null) {
				con.close();
			}
			
					
		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println(list.size());
		return list;
		
	}
	

	
	//2. 댓글 개수
public int select_commentCount(int board_id) {
		
		int cnt = 0;
		
		try {
			con = dataFactory.getConnection();
			
			if(con != null) {
				System.out.println("mysql 커넥션풀 성공");
			}else {
				System.out.println("접속fail");
			}
			
			String query = "";
			query += "SELECT COUNT(C.COMMENT_ID) AS cnt FROM TB_BOARD B ";
			query += "LEFT OUTER JOIN TB_COMMENT C ";
			query += "ON B.BOARD_ID = C.BOARD_ID ";
			query += "WHERE B.BOARD_ID = ? ";
			query += "GROUP BY B.BOARD_ID ";

		
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, board_id);
			ResultSet rs = pstmt.executeQuery();
			
			System.out.println("쿼리 : "+query);
		
			
			while(rs.next()) {
				cnt =  rs.getInt("cnt");		
			}
			
			if(rs !=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if (con != null) {
				con.close();
			}
			
					
		} catch (Exception e) {
			// TODO: handle exception
		}
		return cnt;
		
	}
	

	

}
