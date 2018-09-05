/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	 config.filebrowserBrowseUrl = '/ckeditor/ckfinder/ckfinder.html';
     config.filebrowserImageBrowseUrl = '/ckeditor/ckfinder/ckfinder.html?type=Images';
     config.filebrowserUploadUrl = '/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
     config.filebrowserImageUploadUrl = '/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
};
