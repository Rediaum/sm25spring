package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/jq")
@Slf4j
public class JQueryController {

    String dir = "jq/";

    @RequestMapping("")
    public String JQuery(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }

    @RequestMapping("/jq1")
    public String jq1(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "jq1");
        return "index";
    }

    @RequestMapping("/jq2")
    public String jq2(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "jq2");
        return "index";
    }

    @RequestMapping("/jq3")
    public String jq3(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "jq3");
        return "index";
    }

    // 회원가입 정보 처리하는 매핑 추가
    @RequestMapping("/formtestimpl")
    public String formtestimpl(Model model,
                               @RequestParam("id") String id,
                               @RequestParam("pwd") String pwd,
                               @RequestParam("confirmPwd") String confirmPwd,
                               @RequestParam("name") String name,
                               @RequestParam("email") String email,
                               @RequestParam("sex") String sex,
                               @RequestParam("job") String job,
                               @RequestParam(value = "earningLevel", required = false) String[] earningLevel,
                               @RequestParam("birth") String birth,
                               @RequestParam(value = "agree", required = false) String agree) {

        // 받아온 데이터를 로그로 출력해서 확인
        log.info("=== 회원가입 정보 확인 ===");
        log.info("ID: {}", id);
        log.info("Password: {}", pwd);
        log.info("Confirm Password: {}", confirmPwd);
        log.info("Name: {}", name);
        log.info("Email: {}", email);
        log.info("Sex: {}", sex);
        log.info("Job: {}", job);

        // 수입 수준 배열 처리
        if (earningLevel != null) {
            log.info("Earning Level:");
            for (String level : earningLevel) {
                log.info("  - {}", level);
            }
        } else {
            log.info("Earning Level: 선택 안함");
        }

        log.info("Birth: {}", birth);
        log.info("Agreement: {}", (agree != null ? "동의함" : "동의 안함"));
        log.info("========================");

        // 비밀번호 확인 검증
        boolean passwordMatch = pwd.equals(confirmPwd);

        // Model에 데이터 담기
        model.addAttribute("id", id);
        model.addAttribute("name", name);
        model.addAttribute("email", email);
        model.addAttribute("sex", sex);
        model.addAttribute("job", job);
        model.addAttribute("earningLevel", earningLevel);
        model.addAttribute("birth", birth);
        model.addAttribute("passwordMatch", passwordMatch);
        model.addAttribute("agree", agree != null);

        // 기존 구조에 맞게 레이아웃 설정
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "jq2");
        model.addAttribute("message", "회원가입이 완료되었습니다.");

        return "index";
    }
}