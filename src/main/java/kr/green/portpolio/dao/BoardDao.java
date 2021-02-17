package kr.green.portpolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portpolio.pagination.Criteria;
import kr.green.portpolio.vo.BoardVo;
import kr.green.portpolio.vo.LikeVo;

public interface BoardDao {

	void boardRegis(@Param("board")BoardVo board);

	ArrayList<BoardVo> getBoardList(@Param("cri")Criteria cri);

	BoardVo getBoardDetail(@Param("num")Integer num);

	void boardModify(@Param("board")BoardVo board);

	int getTotalCount(@Param("cri")Criteria cri);

	void updateViews(@Param("num")Integer num);

	LikeVo getLike(@Param("like")LikeVo likeVo);

	void insertLike(@Param("like")LikeVo likeVo);

	void updateLike(@Param("like")LikeVo likeVo);

}
