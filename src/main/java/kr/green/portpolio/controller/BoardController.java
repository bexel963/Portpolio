package kr.green.portpolio.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portpolio.pagination.Criteria;
import kr.green.portpolio.pagination.PageMaker;
import kr.green.portpolio.service.BoardService;
import kr.green.portpolio.service.UserService;
import kr.green.portpolio.vo.BoardVo;
import kr.green.portpolio.vo.LikeVo;
import kr.green.portpolio.vo.UserVo;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	UserService userService;
	
	/* Board 리스트 */
	@RequestMapping(value= "/boardList", method = RequestMethod.GET)
	public ModelAndView boardGet(ModelAndView mv, Criteria cri){
		System.out.println("화면에서 가져온 정보 : " + cri);
		ArrayList<BoardVo> boardList = boardService.getBoardList(cri);
		
		int totalCount = boardService.getTotalCount(cri);
		PageMaker pm = new PageMaker(cri, 3, totalCount);
		System.out.println("현재 페이지 메이커 : " + pm);
		mv.addObject("pm", pm);
		mv.addObject("boardList", boardList);
	    mv.setViewName("/menu/boardList");
	    return mv;
	}
	/* Board 상세 */
	@RequestMapping(value= "/boardDetail", method = RequestMethod.GET)
	public ModelAndView boardDetailGet(Locale locale, ModelAndView mv, Integer num, HttpServletRequest request){
		System.out.println("화면에서 받은 번호 : " + num);
		boardService.views(num);
		BoardVo board = boardService.getBoardDetail(num);
		UserVo user = userService.getUser(request);
		LikeVo like = boardService.getLike(num, user);
		
		mv.addObject("like",like);
		mv.addObject("board", board);
	    mv.setViewName("/menu/boardDetail");
	    return mv;
	}
	
	
	/* Board 글쓰기 Get */
	@RequestMapping(value= "/boardRegis", method = RequestMethod.GET)
	public ModelAndView boardRegisGet(Locale locale, ModelAndView mv){
		
	    mv.setViewName("/menu/boardRegis");
	    return mv;
	}
	/* Board 글쓰기 POST */
	@RequestMapping(value= "/boardRegis", method = RequestMethod.POST)
	public ModelAndView boardRegisPost(ModelAndView mv, BoardVo board){
		boardService.boardRegis(board);
	    mv.setViewName("redirect:/boardList");
	    return mv;
	}
	
	/* Board 수정 Get */
	@RequestMapping(value= "/boardModify", method = RequestMethod.GET)
	public ModelAndView boardModifyGet(Locale locale, ModelAndView mv, Integer num){
		System.out.println("수정할 게시글 번호 : " + num);
		BoardVo board = boardService.getBoardDetail(num);
		mv.addObject("board", board);
	    mv.setViewName("/menu/boardModify");
	    return mv;
	}
	/* Board 수정 Post */
	@RequestMapping(value= "/boardModify", method = RequestMethod.POST)
	public ModelAndView boardModifyPost(Locale locale, ModelAndView mv, HttpServletRequest request, BoardVo board){
		UserVo user = userService.getUser(request);
		System.out.println("수정할 게시물 : " + board);
		System.out.println("사용자 정보 : " + user);
		boardService.boardModify(user, board);
	    mv.setViewName("redirect:/boardList");
	    return mv;
	}
	
	/* Board 삭제 Get */
	@RequestMapping(value= "/boardDelete", method = RequestMethod.GET)
	public ModelAndView boardDeleteGet(Locale locale, ModelAndView mv, HttpServletRequest request, Integer num){
		UserVo user = userService.getUser(request);
		System.out.println("삭제할 게시글 번호 : " + num);
		System.out.println("사용자 정보 : " + user);
		boardService.boardDelete(user, num);
	    mv.setViewName("redirect:/boardList");
	    return mv;
	}
	
	/* like기능 */
	@RequestMapping(value = "/boardLike", method = RequestMethod.POST)		
	@ResponseBody
	public Object authorModifyPost(@RequestBody LikeVo likeVo) {
		System.out.println("/boardLike : " + likeVo);
		boardService.like(likeVo);
		HashMap<String, Object> map = new HashMap<String, Object>();	// json형태로 보내준다는 말은 map으로 보내주는거다.
		return map;
	}
}
