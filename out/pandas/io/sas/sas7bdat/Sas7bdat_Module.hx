/* This file is generated, do not edit! */
package pandas.io.sas.sas7bdat;
@:pythonImport("pandas.io.sas.sas7bdat") extern class Sas7bdat_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _align_1_checker_value : Dynamic;
	static public var _align_1_length : Dynamic;
	static public var _align_1_offset : Dynamic;
	static public var _align_1_value : Dynamic;
	static public var _align_2_length : Dynamic;
	static public var _align_2_offset : Dynamic;
	static public var _align_2_value : Dynamic;
	static public var _block_count_length : Dynamic;
	static public var _block_count_offset : Dynamic;
	static public var _col_count_p1_multiplier : Dynamic;
	static public var _col_count_p2_multiplier : Dynamic;
	static public var _column_data_length_length : Dynamic;
	static public var _column_data_length_offset : Dynamic;
	static public var _column_data_offset_offset : Dynamic;
	static public var _column_format_length_length : Dynamic;
	static public var _column_format_length_offset : Dynamic;
	static public var _column_format_offset_length : Dynamic;
	static public var _column_format_offset_offset : Dynamic;
	static public var _column_format_text_subheader_index_length : Dynamic;
	static public var _column_format_text_subheader_index_offset : Dynamic;
	static public var _column_label_length_length : Dynamic;
	static public var _column_label_length_offset : Dynamic;
	static public var _column_label_offset_length : Dynamic;
	static public var _column_label_offset_offset : Dynamic;
	static public var _column_label_text_subheader_index_length : Dynamic;
	static public var _column_label_text_subheader_index_offset : Dynamic;
	static public var _column_name_length_length : Dynamic;
	static public var _column_name_length_offset : Dynamic;
	static public var _column_name_offset_length : Dynamic;
	static public var _column_name_offset_offset : Dynamic;
	static public var _column_name_pointer_length : Dynamic;
	static public var _column_name_text_subheader_length : Dynamic;
	static public var _column_name_text_subheader_offset : Dynamic;
	static public var _column_type_length : Dynamic;
	static public var _column_type_offset : Dynamic;
	static public var _compressed_subheader_id : Dynamic;
	static public var _compressed_subheader_type : Dynamic;
	static public var _compression_literals : Dynamic;
	static public var _dataset_length : Dynamic;
	static public var _dataset_offset : Dynamic;
	static public var _date_created_length : Dynamic;
	static public var _date_created_offset : Dynamic;
	static public var _date_modified_length : Dynamic;
	static public var _date_modified_offset : Dynamic;
	static public var _encoding_length : Dynamic;
	static public var _encoding_names : Dynamic;
	static public var _encoding_offset : Dynamic;
	static public var _endianness_length : Dynamic;
	static public var _endianness_offset : Dynamic;
	static public var _file_type_length : Dynamic;
	static public var _file_type_offset : Dynamic;
	static public var _header_size_length : Dynamic;
	static public var _header_size_offset : Dynamic;
	static public var _magic : Dynamic;
	static public var _os_maker_length : Dynamic;
	static public var _os_maker_offset : Dynamic;
	static public var _os_name_length : Dynamic;
	static public var _os_name_offset : Dynamic;
	static public var _os_version_number_length : Dynamic;
	static public var _os_version_number_offset : Dynamic;
	static public var _page_amd_type : Dynamic;
	static public var _page_bit_offset_x64 : Dynamic;
	static public var _page_bit_offset_x86 : Dynamic;
	static public var _page_comp_type : Dynamic;
	static public var _page_count_length : Dynamic;
	static public var _page_count_offset : Dynamic;
	static public var _page_data_type : Dynamic;
	static public var _page_meta_type : Dynamic;
	static public var _page_metc_type : Dynamic;
	static public var _page_mix_types : Dynamic;
	static public var _page_size_length : Dynamic;
	static public var _page_size_offset : Dynamic;
	static public var _page_type_length : Dynamic;
	static public var _page_type_offset : Dynamic;
	static public var _platform_length : Dynamic;
	static public var _platform_offset : Dynamic;
	static public var _rdc_compression : Dynamic;
	static public function _rdc_decompress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _rle_compression : Dynamic;
	static public function _rle_decompress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _row_count_offset_multiplier : Dynamic;
	static public var _row_count_on_mix_page_offset_multiplier : Dynamic;
	static public var _row_length_offset_multiplier : Dynamic;
	static public var _sas_release_length : Dynamic;
	static public var _sas_release_offset : Dynamic;
	static public var _sas_server_type_length : Dynamic;
	static public var _sas_server_type_offset : Dynamic;
	static public var _subheader_count_length : Dynamic;
	static public var _subheader_count_offset : Dynamic;
	static public var _subheader_pointer_length_x64 : Dynamic;
	static public var _subheader_pointer_length_x86 : Dynamic;
	static public var _subheader_pointers_offset : Dynamic;
	static public var _subheader_signature_to_index : Dynamic;
	static public var _text_block_size_length : Dynamic;
	static public var _truncated_subheader_id : Dynamic;
	static public var _u64_byte_checker_value : Dynamic;
	/**
		If the filepath_or_buffer is a url, translate and return the buffer
		passthru otherwise.
		
		Parameters
		----------
		filepath_or_buffer : a url, filepath (str, py.path.local or pathlib.Path),
		                     or buffer
		encoding : the encoding to use to decode py3 bytes, default is 'utf-8'
		
		Returns
		-------
		a filepath_or_buffer, the encoding, the compression
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic):Dynamic;
	static public function process_byte_array_with_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
}