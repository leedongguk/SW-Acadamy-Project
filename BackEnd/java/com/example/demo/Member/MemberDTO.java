package com.example.demo.Member;


import java.time.LocalDateTime;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import jakarta.persistence.Table;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import lombok.Builder;


@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Setter
@ToString
public class MemberDTO {


private String id;
private String password;
private String name;
private String Birth;
private String phone;
private String Buisnessman;
private String car;


public static MemberDTO toMemberDTO(MemberEntity memberEntity) {
	MemberDTO memberDTO = new MemberDTO();
	
	memberDTO.setId(memberEntity.getId());
	memberDTO.setPassword(memberEntity.getPassword());
	memberDTO.setName(memberEntity.getName());
	memberDTO.setBirth(memberEntity.getBirth());
	memberDTO.setPhone(memberEntity.getPhone());
	memberDTO.setBuisnessman(memberEntity.getBuisnessman());
	memberDTO.setCar(memberEntity.getCar());
	return memberDTO;
}

}
