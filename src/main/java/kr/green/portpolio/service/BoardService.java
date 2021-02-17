package kr.green.portpolio.service;

import java.util.ArrayList;

import kr.green.portpolio.pagination.Criteria;
import kr.green.portpolio.vo.BoardVo;
import kr.green.portpolio.vo.LikeVo;
import kr.green.portpolio.vo.UserVo;

public interface BoardService {

	void boardRegis(BoardVo board);

	ArrayList<BoardVo> getBoardList(Criteria cri);

	BoardVo getBoardDetail(Integer num);

	void boardModify(UserVo user, BoardVo board);

	void boardDelete(UserVo user, Integer num);

	int getTotalCount(Criteria cri);

	void views(Integer num);

	void like(LikeVo likeVo);

	LikeVo getLike(Integer num, UserVo user);

	

}
