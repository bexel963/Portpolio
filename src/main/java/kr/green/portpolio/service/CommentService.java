package kr.green.portpolio.service;

import kr.green.portpolio.vo.CommentVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;

public interface CommentService {

	void commentFileRegis(int comment_num, String oriFileName, String fileName);

	void commentRegis(Integer product_num, UserVo user, String comment, Integer star);

	CommentVo commentGet(Integer product_num, UserVo user);

}
