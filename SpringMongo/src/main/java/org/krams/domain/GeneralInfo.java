package org.krams.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class GeneralInfo {
	
	@Id
	private String id;
	
	private String maCK;
	private String tenCty;
	private String ngayGDDT;
	private Long klnyLanDau;
	private Double giaNY;
	private Integer nnDcSoHuu;
	private String nganh;
	private String sanGD;
	private Double giaHienTai;
	private Double giaSoSach;
	private String PB;
	private Double caoNhat52Tuan;
	private Double thapNhat52Tuan;
	private Integer EPS;
	private Double PE;
	private String ROA;
	private String ROE;
	private Double beta;
	private Long klLuuHanh;
	private Long klNiemYet;
	private Integer coPhieuQuy;
	private Integer vonThiTruong;
	private Integer doanhThu;
	private Integer LNST;
	private Integer vonCSH;
	private Integer tongNo;
	private Integer tongTaiSan;
	private String tenQuocTe;
	private String diaChi;
	private String dienThoai;
	private String fax;
	private String website;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getMaCK() {  
		return maCK; 
	} 
	
	public void setMaCK(String maCK) {  
		this.maCK = maCK; 
	}
	
	public String getTenCty() {  
		return tenCty; 
	} 
	
	public void setTenCty(String tenCty) {  
		this.tenCty = tenCty; 
	}
	
	public String getNgayGDDT() {  
		return ngayGDDT; 
	} 
	
	public void setNgayGDDT(String ngayGDDT) {  
		this.ngayGDDT = ngayGDDT; 
	}
	
	public Long getKlnyLanDau() {  
		return klnyLanDau; 
	} 
	
	public void setKlnyLanDau(Long klnyLanDau) {  
		this.klnyLanDau = klnyLanDau; 
	}
	
	public Double getGiaNY() { 
		return giaNY; 
	} 
	
	public void setGiaNY(Double giaNY) {  
		this.giaNY = giaNY; 
	}
	
	public Integer getNnDcSoHuu() {  
		return nnDcSoHuu; 
	} 
	
	public void setNnDcSoHuu(Integer nnDcSoHuu) {  
		this.nnDcSoHuu = nnDcSoHuu; 
	}
	
	public String getNganh() {  
		return nganh; 
	} 
	
	public void setNganh(String nganh) {  
		this.nganh = nganh; 
	}
	
	public String getSanGD() {  
		return sanGD; 
	} 
	
	public void setSanGD(String sanGD) {  
		this.sanGD = sanGD; 
	}
	
	public Double getGiaHienTai() {  
		return giaHienTai; 
	} 
	
	public void setGiaHienTai(Double giaHienTai) {  
		this.giaHienTai = giaHienTai; 
	}
	
	public Double getGiaSoSach() {  
		return giaSoSach; 
	} 
	
	public void setGiaSoSach(Double giaSoSach) {  
		this.giaSoSach = giaSoSach; 
	}
	
	public String getPB() {  
		return PB; 
	} 
	
	public void setPB(String PB) {  
		this.PB = PB; 
	}
	
	public Double getCaoNhat52Tuan() {  
		return caoNhat52Tuan; 
	} 
	
	public void setCaoNhat52Tuan(Double caoNhat52Tuan) {  
		this.caoNhat52Tuan = caoNhat52Tuan; 
	}
	
	public Double getThapNhat52Tuan() {  
		return thapNhat52Tuan; 
	} 
	
	public void setThapNhat52Tuan(Double thapNhat52Tuan) {  
		this.thapNhat52Tuan = thapNhat52Tuan; 
	}
	
	public Integer getEPS() {  
		return EPS; 
	} 
	
	public void setEPS(Integer EPS) {  
		this.EPS = EPS; 
	}
	
	public Double getPE() {  
		return PE; 
	} 
	
	public void setPE(Double PE) {  
		this.PE = PE; 
	}
	
	public String getROA() {  
		return ROA; 
	} 
	
	public void setROA(String ROA) {  
		this.ROA = ROA; 
	}
	
	public String getROE() {  
		return ROE; 
	} 
	
	public void setROE(String ROE) {  
		this.ROE = ROE; 
	}
	
	public Double getBeta() {  
		return beta; 
	} 
	
	public void setBeta(Double beta) {  
		this.beta = beta; 
	}
	
	public Long getKlLuuHanh() {  
		return klLuuHanh; 
	} 
	
	public void setKlLuuHanh(Long klLuuHanh) {  
		this.klLuuHanh = klLuuHanh; 
	}
	
	public Long getKlNiemYet() {  
		return klNiemYet; 
	} 
	
	public void setKlNiemYet(Long klNiemYet) {  
		this.klNiemYet = klNiemYet; 
	}
	
	public Integer getCoPhieuQuy() {  
		return coPhieuQuy; 
	} 
	
	public void setCoPhieuQuy(Integer coPhieuQuy) {  
		this.coPhieuQuy = coPhieuQuy; 
	}
	
	public Integer getVonThiTruong() {  
		return vonThiTruong; 
	} 
	
	public void setVonThiTruong(Integer vonThiTruong) {  
		this.vonThiTruong = vonThiTruong; 
	}
	
	public Integer getDoanhThu() {  
		return doanhThu; 
	} 
	
	public void setDoanhThu(Integer doanhThu) {  
		this.doanhThu = doanhThu; 
	}
	
	public Integer getLNST() {  
		return LNST; 
	} 
	
	public void setLNST(Integer LNST) {  
		this.LNST = LNST; 
	}
	
	public Integer getVonCSH() {  
		return vonCSH; 
	} 
	
	public void setVonCSH(Integer vonCSH) {  
		this.vonCSH = vonCSH; 
	}
	
	public Integer getTongNo() {  
		return tongNo; 
	} 
	
	public void setTongNo(Integer tongNo) {  
		this.tongNo = tongNo; 
	}
	
	public Integer getTongTaiSan() {  
		return tongTaiSan; 
	} 
	
	public void setTongTaiSan(Integer tongTaiSan) {  
		this.tongTaiSan = tongTaiSan; 
	}
	
	public String getTenQuocTe() {  
		return tenQuocTe; 
	} 
	
	public void setTenQuocTe(String tenQuocTe) {  
		this.tenQuocTe = tenQuocTe; 
	}
	
	public String getDiaChi() {  
		return diaChi; 
	} 
	
	public void setDiaChi(String diaChi) { 
		this.diaChi = diaChi; 
	}
	
	public String getDienThoai() {  
		return dienThoai; 
	} 
	
	public void setDienThoai(String dienThoai) {  
		this.dienThoai = dienThoai; 
	}
	
	public String getFax() {  
		return fax; 
	} 
	
	public void setFax(String fax) {  
		this.fax = fax; 
	}
	
	public String getWebsite() {  
		return website; 
	} 
	
	public void setWebsite(String website) {  
		this.website = website; 
	}
}