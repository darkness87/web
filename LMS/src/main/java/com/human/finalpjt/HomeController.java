package com.human.finalpjt;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Locale;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
//import javax.xml.ws.Response;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.human.finalpjt.dao.EnrollDao;
import com.human.finalpjt.dao.InterDao;
import com.human.finalpjt.dao.SDao;
import com.human.finalpjt.dto.EnrollDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );

		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest hsr, Model model) {
		String userID = hsr.getParameter("userID");
		String userPassword = hsr.getParameter("userPassword");
		model.addAttribute("userID", userID);
		model.addAttribute("userPassword", userPassword);
		return "login";
	}

	@RequestMapping("/main")
	public String main(HttpServletRequest hsr, Model model) {

		String userID = hsr.getParameter("userID");
		String userPassword = hsr.getParameter("userPassword");
		String splitID = userID.substring(0, 2);
		try {
			Double.parseDouble(splitID);
			splitID = "no";
		} catch (NumberFormatException e) {
		}

		SDao sdao = new SDao();
		ArrayList<String> list = sdao.login_verify(splitID, userID, userPassword);

		try {
			model.addAttribute("userName", list.get(1));

		} catch (Exception e) {
			model.addAttribute("userName", "alert");
		}

		if (list.get(0).equals("alert")) {
			return "home";
		} else if (list.get(0).equals("s")) {
			model.addAttribute("s_id", userID);
			return "student_main";
		} else if (list.get(0).equals("p")) {
			model.addAttribute("p_id", userID);
			return "professor_main";
		} else if (list.get(0).equals("a")) {
			model.addAttribute("a_id", userID);
			return "admin_main";
		}

		return "home";
	}

	/************************************************************************************************************/
	/*
	 * @RequestMapping("/list") // �Խñ� ���(select) public String list(Model model)
	 * { InterDao dao = sqlSession.getMapper(InterDao.class);
	 * model.addAttribute("list", dao.Interlist()); return "list"; }
	 */

	/************************************************************************************************************/
	/*
	 * @RequestMapping("/writer_page") // �Խñ� ����ϱ� ������ public String
	 * writer_page() { return "/writer_page"; }
	 * 
	 * @RequestMapping("/write") // �Խñ� ���(insert) public String
	 * write(MultipartHttpServletRequest mtfRequest, HttpServletRequest req, Model
	 * model) { model.addAttribute("request", req); List<MultipartFile> fileList =
	 * mtfRequest.getFiles("bfile"); String src = mtfRequest.getParameter("src");
	 * String safeFile = null; String originFileName = null; String path =
	 * "D:/springboard/src/main/webapp/resources/file/"; for (MultipartFile mf :
	 * fileList) { originFileName = mf.getOriginalFilename(); // ���� ���� �� long
	 * fileSize = mf.getSize(); // ���� ������
	 * 
	 * System.out.println("originFileName : " + originFileName);
	 * System.out.println("fileSize : " + fileSize);
	 * 
	 * safeFile = path + System.currentTimeMillis() + originFileName;
	 * 
	 * try { mf.transferTo(new File(safeFile)); } catch (IllegalStateException e) {
	 * // TODO Auto-generated catch block e.printStackTrace(); } catch (IOException
	 * e) { // TODO Auto-generated catch block e.printStackTrace(); } } noticeDao
	 * dao = sqlSession.getMapper(noticeDao.class);
	 * dao.write(req.getParameter("btitle"), req.getParameter("bcontent"), safeFile,
	 * originFileName, req.getParameter("bname")); return "redirect:list"; }
	 */

	/************************************************************************************************************/

	@RequestMapping("/p_score") // ������ �󼼺��� (select)
	public String p_score(HttpServletRequest hsr, Model model) {
		model.addAttribute("request", hsr);
		InterDao dao = sqlSession.getMapper(InterDao.class);
		String p_id = hsr.getParameter("p_id");
		InterDao dao2 = dao; // insert
		model.addAttribute("ps", dao.viewDao(p_id));
		model.addAttribute("se", dao.searchDao(p_id));
		return "professor_score";
	}

	// 회원가입
	@ResponseBody // 아작스에서 인설트로 보내는거
	@RequestMapping(value = "/insert.do", method = RequestMethod.POST)
	public void sign(HttpServletRequest request, HttpServletResponse response) {
		InterDao dao = sqlSession.getMapper(InterDao.class);
		dao.InsertDao(request.getParameter("s_id"), request.getParameter("s_name"), request.getParameter("c_name"),request.getParameter("s_major"));

	}

	/************************************************************************************************************/
	/*
	 * @RequestMapping("/modify_page") //�Խ��� ���� public String
	 * modify_page(HttpServletRequest hsr, Model model) { int bno =
	 * Integer.parseInt(hsr.getParameter("bno")); noticeDao dao =
	 * sqlSession.getMapper(noticeDao.class); model.addAttribute("modify",
	 * dao.viewDao(bno)); return "/modify_page"; }
	 * 
	 * @RequestMapping("/modify") public String modify(HttpServletRequest hsr, Model
	 * model) { model.addAttribute("request", hsr); noticeDao dao =
	 * sqlSession.getMapper(noticeDao.class); int bno =
	 * Integer.parseInt(hsr.getParameter("bno")); dao.modify(bno,
	 * hsr.getParameter("btitle"), hsr.getParameter("bcontent"),
	 * hsr.getParameter("bfilename"), hsr.getParameter("bname"));
	 * 
	 * return "redirect:list"; }
	 */

	@RequestMapping(value = "/admin_stinfo", method = RequestMethod.GET)
	public String admin_stinfo(HttpServletRequest request, HttpServletResponse response) {
		return "admin_stinfo";
	}

	@Responsebody
	@RequestMapping(value = "/admin_stinfo1", method = RequestMethod.GET)
	public void admin_stinfo1(HttpServletRequest request, HttpServletResponse response)
			throws IOException, NamingException, SQLException {
		System.out.println("depart [" + request.getParameter("sdepartment") + "]");
		System.out.println("year [" + request.getParameter("year") + "]");

		String depart = request.getParameter("sdepartment");
		String year = request.getParameter("year");
		PrintWriter out = response.getWriter();
		String data = null;
		SDao sdao = new SDao();
		int count = 0;
		ArrayList<Integer> Infolist = sdao.stdInfoInput(count);
		int counts1 = Infolist.get(0) + 1;

		System.out.println("counts " + counts1);

		if (counts1 < 10) {
			System.out.println("depart1 " + depart);
			System.out.println("year1 " + year);
			data = year + depart + 0 + counts1;
			System.out.print("data1 : " + data);
		} else if (counts1 >= 10) {
			System.out.println("depart2 " + depart);
			System.out.println("year2 " + year);
			data = year + depart + counts1;
			System.out.print("data2 : " + data);

		}
		out.print(data);
	}
	
	@RequestMapping("/student_enroll_main") // 
	public String student_enroll_main(HttpServletRequest hsr, Model model) {
	
		return "student_enroll_main";
	}
	
	@RequestMapping("/student_enroll_apply") // 
	public String student_enroll_apply(HttpServletRequest hsr, Model model) {
		HttpSession session = hsr.getSession();
		String sid = (String) session.getAttribute("userID");
		System.out.println("세션에서 받아온 sid :"+sid);
		
		String completion = hsr.getParameter("completion");
		String depart=null;
		int grade=0;
		if(completion==null) {
			completion="";
			depart="";
		}else {
			depart = hsr.getParameter("depart");
			grade= Integer.parseInt(hsr.getParameter("grade"));
		}
		System.out.println(completion+"/"+depart+"/"+grade);
		System.out.println(completion);
		EnrollDao dao = sqlSession.getMapper(EnrollDao.class);
		ArrayList<EnrollDto> edto = dao.showList(2019,2,completion,depart,grade);
		ArrayList<EnrollDto> edto2 = dao.showMyApply(sid,2019,2);
		System.out.println("강의 갯수"+edto.size());
		
		model.addAttribute("teachList",edto);
		model.addAttribute("howmanyTeach",edto.size());
		model.addAttribute("possibleMajor",dao.possibleMajor());
		model.addAttribute("applyList",edto2);
		model.addAttribute("howmanyApply",edto2.size());
		model.addAttribute("sumMyApplyUnit",dao.sumMyApplyUnit(sid, 2019, 2));
		return "student_enroll_apply";
	}
	@RequestMapping("/insertMyApply")
	public String insertMyApply(HttpServletRequest hsr, Model model) {
		HttpSession session = hsr.getSession();
		String sid = (String) session.getAttribute("userID");
		
		EnrollDao dao = sqlSession.getMapper(EnrollDao.class);
		try {
			dao.insertMyApply(sid,hsr.getParameter("cid"),1,2019,2);
		}catch(Exception e) {}
		
		return "redirect:../student_enroll_apply";
	}
	
	@RequestMapping("/deleteMyApply")
	public String deleteMyApply(HttpServletRequest hsr, Model model) {
		HttpSession session = hsr.getSession();
		String sid = (String) session.getAttribute("userID");
		
		EnrollDao dao = sqlSession.getMapper(EnrollDao.class);
		dao.deleteMyApply(sid,2019,2,hsr.getParameter("cid"));
		
		return "redirect:../student_enroll_apply";
	}
	
	@RequestMapping("/student_enroll_view") 
	public String student_enroll_view(HttpServletRequest hsr, Model model) {
		
		return "student_enroll_view";
	}
	@RequestMapping("/student_evaluation") 
	public String student_evaluation(HttpServletRequest hsr, Model model) {	
		return "student_evaluation";
	}
	@RequestMapping("/student_grade") 
	public String student_grade(HttpServletRequest hsr, Model model) {	
		return "student_grade";
	}
	@RequestMapping("/student_info") 
	public String student_info(HttpServletRequest hsr, Model model) {	
		return "student_info";
	}
	@RequestMapping("/student_last") 
	public String student_last(HttpServletRequest hsr, Model model) {	
		return "student_last";
	}
	@RequestMapping("/student_timetable") 
	public String student_timetable(HttpServletRequest hsr, Model model) {	
		return "student_timetable";
	}
	@Responsebody
	@RequestMapping("/searchTimetable") 
	public void searchTimetable(HttpServletRequest hsr, HttpServletResponse response) throws IOException {	
		System.out.println("searchTimetable()");
		HttpSession session = hsr.getSession();
		String sid = (String) session.getAttribute("userID");
		EnrollDao dao = sqlSession.getMapper(EnrollDao.class);
		ArrayList<EnrollDto> edto = dao.showMyApply(sid,Integer.parseInt(hsr.getParameter("year")),Integer.parseInt(hsr.getParameter("semester")));
		
		Gson gson = new Gson();
		String jsonPlace = gson.toJson(edto);
		
		PrintWriter out = response.getWriter();
		out.print(jsonPlace);
	}
//	@RequestMapping("/admin_schedule") 
//	public String admin_schedule(HttpServletRequest hsr, Model model) {	
//		return "admin_schedule";
//	}
	@RequestMapping("/admin_schedule")
	   public String admin_scheduleform(Model model){
	      InterDao dao = sqlSession.getMapper(InterDao.class);
	      model.addAttribute("count",dao.count());
	      System.out.println("count["+ dao.count() + "]");
	      model.addAttribute("schlist",dao.schlist());
	      return "admin_schedule";
	   }
	   
	   @RequestMapping("/schinsert")
	   public String schinsert(HttpServletRequest req, Model model){
	      InterDao dao = sqlSession.getMapper(InterDao.class);
	      String fromDate = req.getParameter("sch_fromdate");
	      String toDate = req.getParameter("sch_todate");
	      String schContent = req.getParameter("sch_content");
	      System.out.println("schedule info check : fromDate [ "+fromDate+" ], toDate [ "+toDate+" ]");
	      if(fromDate.equals("") || toDate.equals("")) {
	         System.out.println("Pass~");
	      }else {
	         dao.schInsert(fromDate,toDate,schContent);
	      }
	      return "redirect:admin_schedule";
	   }
	
	@RequestMapping("/logout") 
	public String logout(HttpServletRequest hsr, Model model) {	
		return "logout";
	}

	

}
