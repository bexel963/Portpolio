package kr.green.portpolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portpolio.dao.CommentDao;
import kr.green.portpolio.vo.CommentFileVo;
import kr.green.portpolio.vo.CommentVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;

@Service
public class CommentServiceImp implements CommentService {
	
	@Autowired
	CommentDao commentDao;
	

	@Override
	public void commentFileRegis(int comment_num, String oriFileName, String fileName) {
		commentDao.commentFileRegis(comment_num, oriFileName, fileName);
	}

	@Override
	public void commentRegis(Integer product_num, UserVo user, String comment, Integer star) {
		commentDao.commentRegis(product_num, user, comment, star);
		
	}

	@Override
	public CommentVo commentGet(Integer product_num, UserVo user) {
		return commentDao.commentGet(product_num, user);
	}

	@Override
	public CommentFileVo getCommentFile(int comment_num) {
		return commentDao.getCommentFile(comment_num);
	}

	@Override
	public ArrayList<CommentVo> getCommentList(Integer product_num) {
		return commentDao.getCommentList(product_num);
	}

	

}
