/* This file is generated, do not edit! */
package scipy.io.idl;
@:pythonImport("scipy.io.idl") extern class Idl_Module {
	static public var DTYPE_DICT : Dynamic;
	static public var RECTYPE_DICT : Dynamic;
	static public var STRUCT_DICT : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Align to the next 32-bit position in a file
	**/
	static public function _align_32(f:Dynamic):Dynamic;
	/**
		Read an array of type `typecode`, with the array descriptor given as
		`array_desc`.
	**/
	static public function _read_array(f:Dynamic, typecode:Dynamic, array_desc:Dynamic):Dynamic;
	/**
		Function to read in an array descriptor
	**/
	static public function _read_arraydesc(f:Dynamic):Dynamic;
	/**
		Read a single byte
	**/
	static public function _read_byte(f:Dynamic):Dynamic;
	/**
		Read the next `n` bytes
	**/
	static public function _read_bytes(f:Dynamic, n:Dynamic):Dynamic;
	/**
		Read a variable with a specified data type
	**/
	static public function _read_data(f:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Read a 32-bit float
	**/
	static public function _read_float32(f:Dynamic):Dynamic;
	/**
		Read a 64-bit float
	**/
	static public function _read_float64(f:Dynamic):Dynamic;
	/**
		Read a signed 16-bit integer
	**/
	static public function _read_int16(f:Dynamic):Dynamic;
	/**
		Read a signed 32-bit integer
	**/
	static public function _read_int32(f:Dynamic):Dynamic;
	/**
		Read a signed 64-bit integer
	**/
	static public function _read_int64(f:Dynamic):Dynamic;
	/**
		Read a signed 32-bit integer
	**/
	static public function _read_long(f:Dynamic):Dynamic;
	/**
		Function to read in a full record
	**/
	static public function _read_record(f:Dynamic):Dynamic;
	/**
		Read a string
	**/
	static public function _read_string(f:Dynamic):Dynamic;
	/**
		Read a data string (length is specified twice)
	**/
	static public function _read_string_data(f:Dynamic):Dynamic;
	/**
		Function to read in a structure descriptor
	**/
	static public function _read_structdesc(f:Dynamic):Dynamic;
	/**
		Read a structure, with the array and structure descriptors given as
		`array_desc` and `structure_desc` respectively.
	**/
	static public function _read_structure(f:Dynamic, array_desc:Dynamic, struct_desc:Dynamic):Dynamic;
	/**
		Function to read in a tag descriptor
	**/
	static public function _read_tagdesc(f:Dynamic):Dynamic;
	/**
		Function to read in a type descriptor
	**/
	static public function _read_typedesc(f:Dynamic):Dynamic;
	/**
		Read an unsigned 16-bit integer
	**/
	static public function _read_uint16(f:Dynamic):Dynamic;
	/**
		Read an unsigned 32-bit integer
	**/
	static public function _read_uint32(f:Dynamic):Dynamic;
	/**
		Read an unsigned 64-bit integer
	**/
	static public function _read_uint64(f:Dynamic):Dynamic;
	static public function _replace_heap(variable:Dynamic, heap:Dynamic):Dynamic;
	/**
		Skip `n` bytes
	**/
	static public function _skip_bytes(f:Dynamic, n:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function asstr(s:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Read an IDL .sav file.
		
		Parameters
		----------
		file_name : str
		    Name of the IDL save file.
		idict : dict, optional
		    Dictionary in which to insert .sav file variables.
		python_dict : bool, optional
		    By default, the object return is not a Python dictionary, but a
		    case-insensitive dictionary with item, attribute, and call access
		    to variables. To get a standard Python dictionary, set this option
		    to True.
		uncompressed_file_name : str, optional
		    This option only has an effect for .sav files written with the
		    /compress option. If a file name is specified, compressed .sav
		    files are uncompressed to this file. Otherwise, readsav will use
		    the `tempfile` module to determine a temporary filename
		    automatically, and will remove the temporary file upon successfully
		    reading it in.
		verbose : bool, optional
		    Whether to print out information about the save file, including
		    the records read, and available variables.
		
		Returns
		-------
		idl_dict : AttrDict or dict
		    If `python_dict` is set to False (default), this function returns a
		    case-insensitive dictionary with item, attribute, and call access
		    to variables. If `python_dict` is set to True, this function
		    returns a Python dictionary with all variable names in lowercase.
		    If `idict` was specified, then variables are written to the
		    dictionary specified, and the updated dictionary is returned.
	**/
	static public function readsav(file_name:Dynamic, ?idict:Dynamic, ?python_dict:Dynamic, ?uncompressed_file_name:Dynamic, ?verbose:Dynamic):Dynamic;
}