/* This file is generated, do not edit! */
package numpy.core._dtype;
@:pythonImport("numpy.core._dtype") extern class _Dtype_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __repr__(dtype:Dynamic):Dynamic;
	static public var __spec__ : Dynamic;
	static public function __str__(dtype:Dynamic):Dynamic;
	/**
		Normalize byteorder to '<' or '>' 
	**/
	static public function _byte_order_str(dtype:Dynamic):Dynamic;
	/**
		Creates a string repr of the dtype, excluding the 'dtype()' part
		surrounding the object. This object may be a string, a list, or
		a dict depending on the nature of the dtype. This
		is the object passed as the first parameter to the dtype
		constructor, and if no additional constructor parameters are
		given, will reproduce the exact memory layout.
		
		Parameters
		----------
		short : bool
		    If true, this creates a shorter repr using 'kind' and 'itemsize', instead
		    of the longer type name.
		
		include_align : bool
		    If true, this includes the 'align=True' parameter
		    inside the struct dtype construction dict when needed. Use this flag
		    if you want a proper repr string without the 'dtype()' part around it.
		
		    If false, this does not preserve the
		    'align=True' parameter or sticky NPY_ALIGNED_STRUCT flag for
		    struct arrays like the regular repr does, because the 'align'
		    flag is not part of first dtype constructor parameter. This
		    mode is intended for a full 'repr', where the 'align=True' is
		    provided as the second parameter.
	**/
	static public function _construction_repr(dtype:Dynamic, ?include_align:Dynamic, ?short:Dynamic):Dynamic;
	static public function _datetime_metadata_str(dtype:Dynamic):Dynamic;
	/**
		Checks whether the structured data type in 'dtype'
		has a simple layout, where all the fields are in order,
		and follow each other with no alignment padding.
		
		When this returns true, the dtype can be reconstructed
		from a list of the field names and dtypes with no additional
		dtype parameters.
		
		Duplicates the C `is_dtype_struct_simple_unaligned_layout` functio.
	**/
	static public function _is_packed(dtype:Dynamic):Dynamic;
	static public function _isunsized(dtype:Dynamic):Dynamic;
	static public function _kind_name(dtype:Dynamic):Dynamic;
	static public var _kind_to_stem : Dynamic;
	static public function _name_get(dtype:Dynamic):Dynamic;
	static public function _scalar_str(dtype:Dynamic, short:Dynamic):Dynamic;
	static public function _struct_dict_str(dtype:Dynamic, includealignedflag:Dynamic):Dynamic;
	static public function _struct_list_str(dtype:Dynamic):Dynamic;
	static public function _struct_str(dtype:Dynamic, include_align:Dynamic):Dynamic;
	static public function _subarray_str(dtype:Dynamic):Dynamic;
	/**
		Helper function to normalize the items in dtype.fields.
		
		Call as:
		
		dtype, offset, title = _unpack_field(*dtype.fields[name])
	**/
	static public function _unpack_field(dtype:Dynamic, offset:Dynamic, ?title:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}