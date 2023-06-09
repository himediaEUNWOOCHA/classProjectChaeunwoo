package com.hi.board.service.member;

import com.hi.board.domain.member.MemberDTO;
import com.hi.board.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class MemberLoginService {

    @Autowired
    private MemberMapper memberMapper;

    public boolean login(
            String uid,
            String pw,
            HttpSession session
    ){

        // uid, pw
        // selectByUidPw(uid, pw) => null, MemberDTO
        MemberDTO member = memberMapper.selectByUidPw(uid, pw);

        if (member != null){
            // 회원이다!!! -> 로그인 처리
            session.setAttribute("loginInfo", member);
            // interceptor -> session의 속성에 "loginInfo" 값의 유무에 따라 로그인 체크

            return true;
        }

        return false;

    }


}
