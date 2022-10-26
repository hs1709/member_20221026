package com.its.member.service;

import com.its.member.dto.MemberDTO;
import com.its.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;
    public boolean save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }


    public boolean login(MemberDTO memberDTO) {
        boolean result = false;
        if () {
            result = true;
        } else {
            result = false;
        }
        return result;
    }

    public List<MemberDTO> members() {
        return memberRepository.members();
    }
}
