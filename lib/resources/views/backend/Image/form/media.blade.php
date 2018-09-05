<div class="row-fluid" style="background:#fff;">
	<div class="modal-header">
		<ul class="nav nav-tabs">
			<li><a style="color: #000;" data-toggle="tab" href="#upload">Upload</a></li>
			<li class="active"><a style="color: #000;" data-toggle="tab" href="#tab2">Chọn hình ảnh</a></li>
		</ul>
	</div>
	<div class="tab-content">
		<div id="upload" class="tab-pane">
			@include('backend.Image.form.upload')
		</div>
		<div id="tab2" class="tab-pane active">
			<div class="modal-dialog" style="width: 100%;">
				<div class="modal-body">
					<div class="media">
						@include('backend.Image.component.gallery')
					</div>
				</div>
				<div class="modal-footer"> <a data-dismiss="modal" rel="confirm" class="btn btn-primary" href="#">Xác nhận</a> <a style="color: #000;" data-dismiss="modal" class="btn btn-default" href="#">Hủy</a>
				</div>
			</div>
		</div>
	</div>         
</div>

