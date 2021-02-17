package kr.green.portpolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portpolio.dao.BoardDao;
import kr.green.portpolio.pagination.Criteria;
import kr.green.portpolio.vo.BoardVo;
import kr.green.portpolio.vo.LikeVo;
import kr.green.portpolio.vo.UserVo;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
	BoardDao boardDao;
	
	@Override
	public void boardRegis(BoardVo board) {
		boardDao.boardRegis(board);
	}

	@Override
	public ArrayList<BoardVo> getBoardList(Criteria cri) {
		return boardDao.getBoardList(cri);
	}

	@Override
	public BoardVo getBoardDetail(Integer num) {
		return boardDao.getBoardDetail(num);
	}

	@Override
	public void boardModify(UserVo user, BoardVo board) {
		if(user==null || !user.getUser_id().equals(board.getWriter())) {
			System.out.println("사용자 정보가 일치하지 앖습니다.");
			return;
		}
		board.setIsDel("N");
		boardDao.boardModify(board);
	}

	@Override
	public void boardDelete(UserVo user, Integer num) {
		BoardVo board = boardDao.getBoardDetail(num);
		if(user==null || !user.getUser_id().equals(board.getWriter())) {
			System.out.println("사용자 정보가 일치하지 앖습니다.");
			return;
		}
		board.setIsDel("Y");
		boardDao.boardModify(board);
		
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return boardDao.getTotalCount(cri);
	}

	@Override
	public void views(Integer num) {
		boardDao.updateViews(num);
	}

	@Override
	public void like(LikeVo likeVo) {
		LikeVo tmp = boardDao.getLike(likeVo);
		if(tmp == null) {
			boardDao.insertLike(likeVo);
		}else {
			boardDao.updateLike(likeVo);
		}
	}

	@Override
	public LikeVo getLike(Integer num, UserVo user) {
		if(user == null || num == null)
			return null;
		LikeVo tmp = new LikeVo(num, user.getUser_id());
		return boardDao.getLike(tmp);
	}

	

}
