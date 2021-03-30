package kr.green.portpolio.service;

import java.util.ArrayList;

import kr.green.portpolio.vo.CommentFileVo;
import kr.green.portpolio.vo.CommentVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;

public interface CommentService {

	void commentFileRegis(int comment_num, String oriFileName, String fileName);	// 댓글 사진 등록

	void commentRegis(Integer product_num, UserVo user, String comment, Integer star);	// 댓글 등록

	CommentVo commentGet(Integer product_num, UserVo user);	// 해당 제품, 유저에 대한 댓글 가져오기

	CommentFileVo getCommentFile(int comment_num);	// 해당 댓글 번호에 대한 사진 가져오기

	ArrayList<CommentVo> getCommentList(Integer product_num);	// 해당 제품 번호에 대한 댓글들 가져오기


}
