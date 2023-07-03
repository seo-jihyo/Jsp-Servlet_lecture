package com.kosa.hrsystem.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AttendanceDTO {
	private int att_num; // 근태일련번호
	private int emp_num; // 사원번호
	private int bsns_num; // 사업자번호
	private String att_status; // 근무상태
	private Date att_date; // 근태일자
	private char apr_work; // 승인상태
	private Date go_work; // 출근시간
	private Date leave_work; // 퇴근시간
}
