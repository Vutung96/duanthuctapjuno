<ul style="height: 500px" id="lightSlider">
@foreach($product->gallery as $img)
<li data-thumb="{{ asset("/storage/avatar/".$img->img_name)}}"
	data-src="{{ asset("/storage/avatar/".$img->img_name)}}">
    <img src="{{ asset("/storage/avatar/".$img->img_name)}}" />
</li>
@endforeach
</ul>
<script>
	 $(document).ready(function() {
	    $('#lightSlider').lightSlider({
	        gallery:true,
	        item:1,
	        loop:true,
	        thumbItem:9,
	        slideMargin:0,
	        enableDrag: false,
	        currentPagerPosition:'left',
	        onSliderLoad: function(el) {
	            el.lightGallery({
	                selector: '#imageGallery .lslide'
	            });
	        }   
	    });  
	  });
</script>