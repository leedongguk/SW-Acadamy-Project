package com.example.demo;

public class Map {
	
	private String statNm;
	private String statId;
	private String chgerId;
	private String chgerType;
	private String addr;
	private String location;
	private String lat;
	private String lng;
	private String useTime;
	private String bnm;
	private String busiNm;
	private String busiCall;
	private String stat;
	private String lastTsdt;
	private String nowTsdt;
	private String output;
	private String method;
	private String zcode;
	private String zscode;
	private String kind;
	private String kindDetail;
	private String parkingFree;
	private String note;
	private String limitYn;
	private String limitDetail;

	
	
	
	
	@Override
	public String toString() {
		return "Map [statNm=" + statNm + ", statId=" + statId + ", chgerId=" + chgerId + ", chgerType=" + chgerType
				+ ", addr=" + addr + ", location=" + location + ", lat=" + lat + ", lng=" + lng + ", useTime=" + useTime
				+ ", bnm=" + bnm + ", busiNm=" + busiNm + ", busiCall=" + busiCall + ", stat=" + stat + ", lastTsdt="
				+ lastTsdt +  ", nowTsdt=" + nowTsdt + ", output=" + output + ", method="
				+ method + ", zcode=" + zcode + ", zscode=" + zscode + ", kind=" + kind + ", kindDetail=" + kindDetail
				+ ", parkingFree=" + parkingFree + ", note=" + note + ", limitYn=" + limitYn + ", limitDetail="
				+ limitDetail + "]";
	}



	public Map(String statNm, String statId, String chgerId, String chgerType, String addr, String location, String lat,
			String lng, String useTime, String bnm, String busiNm, String busiCall, String stat, String lastTsdt,
		    String nowTsdt, String output, String method, String zcode, String zscode, String kind,
			String kindDetail, String parkingFree, String note, String limitYn, String limitDetail) {
		super();
		this.statNm = statNm;
		this.statId = statId;
		this.chgerId = chgerId;
		this.chgerType = chgerType;
		this.addr = addr;
		this.location = location;
		this.lat = lat;
		this.lng = lng;
		this.useTime = useTime;
		this.bnm = bnm;
		this.busiNm = busiNm;
		this.busiCall = busiCall;
		this.stat = stat;
		this.lastTsdt = lastTsdt;
		this.nowTsdt = nowTsdt;
		this.output = output;
		this.method = method;
		this.zcode = zcode;
		this.zscode = zscode;
		this.kind = kind;
		this.kindDetail = kindDetail;
		this.parkingFree = parkingFree;
		this.note = note;
		this.limitYn = limitYn;
		this.limitDetail = limitDetail;
	}



	public String getStatNm() {
		return statNm;
	}



	public void setStatNm(String statNm) {
		this.statNm = statNm;
	}



	public String getStatId() {
		return statId;
	}



	public void setStatId(String statId) {
		this.statId = statId;
	}



	public String getChgerId() {
		return chgerId;
	}



	public void setChgerId(String chgerId) {
		this.chgerId = chgerId;
	}



	public String getChgerType() {
		return chgerType;
	}



	public void setChgerType(String chgerType) {
		this.chgerType = chgerType;
	}



	public String getAddr() {
		return addr;
	}



	public void setAddr(String addr) {
		this.addr = addr;
	}



	public String getLocation() {
		return location;
	}



	public void setLocation(String location) {
		this.location = location;
	}



	public String getLat() {
		return lat;
	}



	public void setLat(String lat) {
		this.lat = lat;
	}



	public String getLng() {
		return lng;
	}



	public void setLng(String lng) {
		this.lng = lng;
	}



	public String getUseTime() {
		return useTime;
	}



	public void setUseTime(String useTime) {
		this.useTime = useTime;
	}



	public String getBnm() {
		return bnm;
	}



	public void setBnm(String bnm) {
		this.bnm = bnm;
	}



	public String getBusiNm() {
		return busiNm;
	}



	public void setBusiNm(String busiNm) {
		this.busiNm = busiNm;
	}



	public String getBusiCall() {
		return busiCall;
	}



	public void setBusiCall(String busiCall) {
		this.busiCall = busiCall;
	}



	public String getStat() {
		return stat;
	}



	public void setStat(String stat) {
		this.stat = stat;
	}



	public String getLastTsdt() {
		return lastTsdt;
	}



	public void setLastTsdt(String lastTsdt) {
		this.lastTsdt = lastTsdt;
	}




	public String getNowTsdt() {
		return nowTsdt;
	}



	public void setNowTsdt(String nowTsdt) {
		this.nowTsdt = nowTsdt;
	}



	public String getOutput() {
		return output;
	}



	public void setOutput(String output) {
		this.output = output;
	}



	public String getMethod() {
		return method;
	}



	public void setMethod(String method) {
		this.method = method;
	}



	public String getZcode() {
		return zcode;
	}



	public void setZcode(String zcode) {
		this.zcode = zcode;
	}



	public String getZscode() {
		return zscode;
	}



	public void setZscode(String zscode) {
		this.zscode = zscode;
	}



	public String getKind() {
		return kind;
	}



	public void setKind(String kind) {
		this.kind = kind;
	}



	public String getKindDetail() {
		return kindDetail;
	}



	public void setKindDetail(String kindDetail) {
		this.kindDetail = kindDetail;
	}



	public String getParkingFree() {
		return parkingFree;
	}



	public void setParkingFree(String parkingFree) {
		this.parkingFree = parkingFree;
	}



	public String getNote() {
		return note;
	}



	public void setNote(String note) {
		this.note = note;
	}



	public String getLimitYn() {
		return limitYn;
	}



	public void setLimitYn(String limitYn) {
		this.limitYn = limitYn;
	}



	public String getLimitDetail() {
		return limitDetail;
	}



	public void setLimitDetail(String limitDetail) {
		this.limitDetail = limitDetail;
	}
	
	
	
}
