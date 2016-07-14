<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>

<c:url value="/users/records" var="recordsUrl"/>
<c:url value="/users/create" var="addUrl"/>
<c:url value="/users/update" var="editUrl"/>
<c:url value="/users/delete" var="deleteUrl"/>

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
		urlHolder.add = '${addUrl}';
		urlHolder.edit = '${editUrl}';
		urlHolder.del = '${deleteUrl}';
		loadTable();
		
		$('#newBtn').click(function() { 
			toggleForms('new');
		});
		
		$('#editBtn').click(function() { 
			if (hasSelected()) {
				toggleForms('edit');
				fillEditForm();
			}
		});
		
		$('#reloadBtn').click(function() { 
			loadTable();
		});

		$('#deleteBtn').click(function() {
			if (hasSelected()) { 
				submitDeleteRecord();
			}
		});
		
		$('#newForm').submit(function() {
			event.preventDefault();
			submitNewRecord();
		});
		
		$('#editForm').submit(function() {
			event.preventDefault();
			submitUpdateRecord();
		});

		$('#closeNewForm').click(function() { 
			toggleForms('hide'); 
			toggleCrudButtons('hide');
		});
		
		$('#closeEditForm').click(function() { 
			toggleForms('hide'); 
			toggleCrudButtons('show');
		});
	});
	</script>
</head>

<body>
<div class="container">
	<h1>User Records</h1>
	<hr/>
	
	<table id='tableUsers' class="table table-hover">
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
		<c:forEach var="book" items="${gis}">
			<tr>
				<td>${book.maCK}</td>
				<td>${book.tenCty}</td>
				<td>${book.ngayGDDT}</td>
				<td>${book.klnyLanDau}</td>
				<td>${book.giaNY}</td>
				<td>${book.nnDcSoHuu}</td>
				<td>${book.nganh}</td>
				<td>${book.sanGD}</td>
				<td>${book.giaHienTai}</td>
				<td>${book.giaSoSach}</td>
				<td>${book.PB}</td>
				<td>${book.caoNhat52Tuan}</td>
				<td>${book.thapNhat52Tuan}</td>
				<td>${book.EPS}</td>
				<td>${book.PE}</td>
				<td>${book.ROA}</td>
				<td>${book.ROE}</td>
				<td>${book.beta}</td>
				<td>${book.klLuuHanh}</td>
				<td>${book.klNiemYet}</td>
				<td>${book.cpQuy}</td>
				<td>${book.vonThiTruong}</td>
				<td>${book.doanhThu}</td>
				<td>${book.LNST}</td>
				<td>${book.vonCSH}</td>
				<td>${book.tongNo}</td>
				<td>${book.tongTaiSan}</td>
				<td>${book.tenQuocTe}</td>
				<td>${book.diaChi}</td>
				<td>${book.dienThoai}</td>
				<td>${book.fax}</td>
				<td>${book.website}</td>
			</tr>
		</c:forEach>
		<c:if test="${empty gis}">
			<tr>
				<td colspan="6">No users found</td>
			</tr>
		</c:if>
	</tbody>
</table>
	
	<div id='controlBar'>
	
			<button type="button" class="btn btn-success" id='newBtn' data-toggle="modal" data-target="#myModalC">New</button>
			<button role="button" class="btn btn-danger" id='deleteBtn' data-toggle="modal" data-target=".delete">Delete</button>
			<button type="button" class="btn btn-primary" id='editBtn' data-toggle="modal" data-target="#myModalE">Edit</button>
			<button role="button" class="btn btn-default" id='reloadBtn' data-toggle="modal" data-target=".reload">Reload</button>

	</div>
			
			<!-- Modal Create-->
			<div class="modal fade" id="myModalC" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">Create New Record</h4>
			      </div>
			      <div class="modal-body">
							
								<form>
									  <div class="form-group"  id='newForm'>
									    <label for="newUsername">Username</label>
									    <input type="text" class="form-control" id="newUsername" placeholder="Enter Username">
									  </div>
									  <div class="form-group">
									    <label for="newPhone">Phone</label>
									    <input type="text" class="form-control" id="newPhone">
									  </div>
									  <div class="form-group">
									    <label for="newFirstName">First Name</label>
									    <input type="text" class="form-control" id="newFirstName" placeholder="Enter First Name">
									  </div>
									  <div class="form-group">
									    <label for="newLastName">Last Name</label>
									    <input type="text" class="form-control" id="newLastName" placeholder="Enter First Name">
									  </div>
									  <div class="form-group">
									  	<label for='newRole'>Role</label>
									  	<select id='newRole' class="selectpicker">
											<option value='1'>Admin</option>
											<option value='2' selected='selected'>Regular</option>
										</select>
										<div class="g-recaptcha" data-sitekey="6LceNQYTAAAAAOtWaZyR8TKuEkxv0lBkkssOegLF"></div>
									  </div>
									<input type='button' value='Close' id='closeNewForm' class="btn btn-default"/>
						      		<input type='submit' value='Submit' class="btn btn-primary"/>
								</form>
						</div>			        		
			      </div>
			    </div>
			  </div>
			</div>
			
					<!-- Modal Edit-->
		<div class="modal fade" id="myModalE" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">Update Record</h4>
		      </div>
		      <div class="modal-body">
		        			<div id='editForm'>		
									
									   		 <form>
									    		<input type='hidden' id='editUsername'/>
											  <div class="form-group">
											    <label for="editFirstName">First Name</label>
											    <input type="text" class="form-control" id="editFirstName" placeholder="Enter First Name">
											  </div>
											  <div class="form-group">
											    <label for="editLastName">Last Name</label>
											    <input type="text" class="form-control" id="editLastName" placeholder="Enter Last Name">
											  </div>
											  <div class="form-group">
											    <label for="editPhone">Phone</label>
											    <input type="text" class="form-control" id="editPhone" placeholder="Enter Phone">
											  </div>
											  <div class="form-group">
											  	<label for='editRole'>Role</label>
											  	<select id='editRole' class="selectpicker">
													<option value='1'>Admin</option>
													<option value='2' selected='selected'>Regular</option>
												</select>
									 		 </div>
									 		 	<input type='button' value='Close' id='closeEditForm' class="btn btn-default"/>
												<input type='submit' value='Submit' class="btn btn-primary"/>
											</form>
								</div>
		      </div>
		    </div>
		  </div>
		</div>
</body>
</html>