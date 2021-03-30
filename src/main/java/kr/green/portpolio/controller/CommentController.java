package kr.green.portpolio.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.green.portpolio.service.CommentService;
import kr.green.portpolio.service.ProductService;
import kr.green.portpolio.service.UserService;
import kr.green.portpolio.utils.UploadFileUtils;
import kr.green.portpolio.vo.CommentFileVo;
import kr.green.portpolio.vo.CommentVo;
import kr.green.portpolio.vo.UserVo;

@Controller
public class CommentController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	CommentService commentService;
	
	private String uploadPath = "D:\\digit\\a\\digital\\Portpolio\\src\\main\\webapp\\resources\\img";
	//private String uploadPath = "C:\\users\\PC\\Desktop\\Git\\digital\\Portpolio\\src\\main\\webapp\\resources\\img";
	
	/* 후기 등록 POST */
	@RequestMapping(value="/commentRegis", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> commentRegisPost(@RequestBody @RequestParam String comment, @RequestParam MultipartFile oriFileName, @RequestParam Integer product_num, @RequestParam Integer star, HttpServletRequest request) throws Exception{
		HashMap<String, Object> map = new HashMap<String, Object>();
		UserVo user = userService.getUser(request);
		
		commentService.commentRegis(product_num, user, comment, star);
		CommentVo getComment = commentService.commentGet(product_num, user);
		
		if(oriFileName != null && oriFileName.getOriginalFilename().length() != 0) {
			String fileName = UploadFileUtils.uploadFile(uploadPath, oriFileName.getOriginalFilename(), oriFileName.getBytes());		
			commentService.commentFileRegis(getComment.getComment_num(), oriFileName.getOriginalFilename(), fileName);
		}
		CommentFileVo file = commentService.getCommentFile(getComment.getComment_num());
		
		map.put("comment", getComment);
		map.put("file", file);
		
	    return map;
	}
}
