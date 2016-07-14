<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:url value="/gis/records" var="recordsUrl"/>

<!DOCTYPE html>
<html>
<head>
	<link rel='stylesheet' type='text/css' media='screen' href='<c:url value="/resources/css/style.css"/>'/>	
	<script type='text/javascript' src='<c:url value="/resources/js/custom.js"/>'></script>
	<script type='text/javascript' src='<c:url value="/resources/js/jquery-2.1.3.min.js"/>'></script>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
	<script src='https://www.google.com/recaptcha/api.js'></script>
	
	<title>User Records</title>
	
	<script type='text/javascript'>
	$(function() {
		// init
		urlHolder.records = '${recordsUrl}';
		loadTable();
	});
	</script>
</head>

<body>
<div class="container">
	<h1>User Records</h1>
	<hr/>
	
	<table id='tableStocks' class="table table-hover">
    <thead>
        <tr>
        	<th>MaCK</th>
			<th>TenCty</th>
			<th>NgayGDDT</th>
			<th>KLNYLanDau</th>
			<th>GiaNY</th>
			<th>NNDcSoHuu</th>
			<th>Nganh</th>
			<th>SanGD</th>
			<th>GiaHienTai</th>
			<th>GiaSoSach</th>
			<th>P/B</th>
			<th>CaoNhat52Tuan</th>
			<th>ThapNhat52Tuan</th>
			<th>EPS</th>
			<th>PE</th>
			<th>ROA</th>
			<th>ROE</th>
			<th>Beta</th>
			<th>KLLuuHanh</th>
			<th>KLNiemYet</th>
			<th>CoPhieuQuy</th>
			<th>VonThiTruong</th>
			<th>DoanhThu</th>
			<th>LNST</th>
			<th>VonCSH</th>
			<th>TongNo</th>
			<th>TongTaiSan</th>
			<th>TenQuocTe</th>
			<th>DiaChi</th>
			<th>DienThoai</th>
			<th>Fax</th>
			<th>Website</th>
        </tr>
    </thead>
    <tbody>
		<c:forEach var="stock" items="${gis}">
			<tr>
				<td>${stock.maCK}</td>
				<td>${stock.tenCty}</td>
				<td>${stock.ngayGDDT}</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.klnyLanDau}" />
				</td>
				<td>${stock.giaNY}</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.nnDcSoHuu}" />
				</td>
				<td>${stock.nganh}</td>
				<td>${stock.sanGD}</td>
				<td>${stock.giaHienTai}</td>
				<td>${stock.giaSoSach}</td>
				<td>${stock.PB}</td>
				<td>${stock.caoNhat52Tuan}</td>
				<td>${stock.thapNhat52Tuan}</td>
				<td>${stock.EPS}</td>
				<td>${stock.PE}</td>
				<td>${stock.ROA}</td>
				<td>${stock.ROE}</td>
				<td>${stock.beta}</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.klLuuHanh}" />
				</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.klNiemYet}" />
				</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.coPhieuQuy}" />
				</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.vonThiTruong}" />
				</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.doanhThu}" />
				</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.LNST}" />
				</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.vonCSH}" />
				</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.tongNo}" />
				</td>
				<td>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${stock.tongTaiSan}" />
				</td>
				<td>${stock.tenQuocTe}</td>
				<td>${stock.diaChi}</td>
				<td>${stock.dienThoai}</td>
				<td>${stock.fax}</td>
				<td>${stock.website}</td>
			</tr>
		</c:forEach>
		<c:if test="${empty gis}">
			<tr>
				<td colspan="6">There is not any information</td>
			</tr>
		</c:if>
	</tbody>
</table>
</div>
</body>
</html>