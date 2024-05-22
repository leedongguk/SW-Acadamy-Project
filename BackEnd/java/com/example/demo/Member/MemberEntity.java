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


@Table(name= "user")
@Getter
@Setter
@Entity
public class MemberEntity {

@Id
@Column(name = "id")
private String id;

@Column(name = "password")
private String password;

@Column(name = "name")
private String name;

@Column(name = "Birth")
private String Birth;

@Column(name = "phone")
private String phone;

@Column(name = "Businessman")
private String Buisnessman;

@Column(name = "car")
private String car;


public static MemberEntity toMemberEntity(MemberDTO memberDTO) {
	MemberEntity memberEntity = new MemberEntity();
	
	memberEntity.setId(memberDTO.getId());
	memberEntity.setPassword(memberDTO.getPassword());
	memberEntity.setName(memberDTO.getName());
	memberEntity.setBirth(memberDTO.getBirth());
	memberEntity.setPhone(memberDTO.getPhone());
	memberEntity.setBuisnessman(memberDTO.getBuisnessman());
	memberEntity.setCar(memberDTO.getCar());
	return memberEntity;
}

}