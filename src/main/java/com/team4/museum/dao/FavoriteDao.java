package com.team4.museum.dao;

import static com.team4.museum.util.Db.executeCall;
import static com.team4.museum.util.Db.executeSelect;
import static com.team4.museum.util.Db.executeSelectOne;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;

import com.team4.museum.util.Pagination;
import com.team4.museum.vo.FavoriteVO;

public class FavoriteDao {

	private FavoriteDao() {
	}

	private static final FavoriteDao instance = new FavoriteDao();

	public static FavoriteDao getInstance() {
		return instance;
	}

	/**
	 * 주어진 회원 ID에 해당하는 즐겨찾기 목록을 조회한다.
	 * 
	 * @param memberId   회원 ID
	 * @param pagination 페이지 정보
	 * @return 즐겨찾기 목록
	 */
	public List<FavoriteVO> selectFavorite(String memberId, Pagination pagination) {
		return executeSelect(
				"SELECT * FROM favorite_view WHERE member_id = ? ORDER BY aseq DESC LIMIT ? OFFSET ?",
				pstmt -> {
					pstmt.setString(1, memberId);
					pagination.applyTo(pstmt, 2, 3);
				},
				FavoriteDao::extractFavoriteVO);
	}

	/**
	 * 주어진 회원 ID와 작품 번호에 해당하는 즐겨찾기 정보가 존재하면 제거, 존재하지 않으면 추가한다.
	 * 
	 * @param memberId 회원 ID
	 * @param aseq     작품 번호 (artwork sequence)
	 * @return 즐겨찾기 정보를 추가한 경우엔 true, 제거한 경우엔 false
	 */
	public Boolean toggleFavorite(String memberId, int aseq) {
		return executeCall(
				"{CALL toggle_favorite_artwork(?, ?, ?)}",
				cstmt -> {
					cstmt.setString(1, memberId);
					cstmt.setInt(2, aseq);
					cstmt.registerOutParameter(3, Types.BOOLEAN);
				},
				cstmt -> cstmt.getBoolean(3));
	}

	/**
	 * 주어진 회원 ID에 해당하는 즐겨찾기 목록의 총 개수를 조회한다.
	 * 
	 * @param memberId 회원 ID
	 */
	public int getCount(String memberId) {
		return executeSelectOne(
				"SELECT COUNT(*) AS cnt FROM favorite_view WHERE member_id = ?",
				pstmt -> pstmt.setString(1, memberId),
				rs -> rs.getInt("cnt"));
	}

	/**
	 * 즐겨찾기 정보를 ResultSet에서 추출한다.
	 * 
	 * @param rs ResultSet 객체
	 * @return FavoriteVO 즐겨찾기 정보 객체
	 */
	private static FavoriteVO extractFavoriteVO(ResultSet rs) throws SQLException {
		FavoriteVO fvo = FavoriteVO.fromArtwork(ArtworkDao.extractArtworkVO(rs));
		fvo.setMemberId(rs.getString("member_id"));
		return fvo;
	}

}