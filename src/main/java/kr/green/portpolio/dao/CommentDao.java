package kr.green.portpolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portpolio.vo.CommentFileVo;
import kr.green.portpolio.vo.CommentVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;

public interface CommentDao {


	void commentFileRegis(@Param("comment_num")int comment_num, @Param("oriFileName")String oriFileName, @Param("fileName")String fileName);

	void commentRegis(@Param("product_num")Integer product_num, @Param("user")UserVo user, @Param("comment")String comment, @Param("star")Integer star);

	CommentVo commentGet(@Param("product_num")Integer product_num, @Param("user")UserVo user);

	CommentFileVo getCommentFile(@Param("comment_num")int comment_num);

	ArrayList<CommentVo> getCommentList(@Param("product_num")Integer product_num);

}
