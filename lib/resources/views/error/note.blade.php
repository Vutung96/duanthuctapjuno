<script>
@if(Session::has('error'))
	new PNotify({
		    title: 'Lỗi!',
		    text: '{{ session('error') }}',
		    type: 'error'
		});
	{{-- <p class="alert alert-danger">{{ Session::get('error') }}</p> --}}
@endif
@if(Session::has('success'))
	new PNotify({
		    title: 'Thành công',
		    text: '{{ session('success') }}',
		    type: 'success'
		});
@endif
@if(Session::has('error'))
	new PNotify({
		    title: 'Lỗi!',
		    text: '{{ session('error') }}',
		    type: 'error'
		});
	{{-- <p class="alert alert-danger">{{ Session::get('error') }}</p> --}}
@endif
@foreach ($errors->all() as $error)
	{{-- <p class="alert alert-danger">{{ $error }}</p> --}}
	new PNotify({
		    title: 'Lỗi!',
		    text: '{{ $error }}',
		    type: 'error'
		});
@endforeach
</script>