/* This file is generated, do not edit! */
package scipy.io.matlab.mio5_utils;
@:pythonImport("scipy.io.matlab.mio5_utils", "VarReader5") extern class VarReader5 {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read array of any class, given matrix `header`
		
		Parameters
		----------
		header : VarHeader5
		   array header object
		process : int, optional
		   If not zero, apply post-processing on returned array
		   
		Returns
		-------
		arr : array or sparse array
		   read array
	**/
	public function array_from_header(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var is_swapped : Dynamic;
	public var little_endian : Dynamic;
	/**
		Read cell array from stream 
	**/
	public function read_cells(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read char matrices from stream as arrays
		
		Matrices of char are likely to be converted to matrices of
		string by later processing in ``array_from_header``
	**/
	public function read_char(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read fieldnames for struct-like matrix.
	**/
	public function read_fieldnames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Python method for reading full u4, u4 tag from stream
		
		Returns
		-------
		mdtype : int32
		   matlab data type code
		byte_count : int32
		   number of data bytes following
		
		Notes
		-----
		Assumes tag is in fact full, that is, is not a small data
		element.  This means it can skip some checks and makes it
		slightly faster than ``read_tag``
	**/
	public function read_full_tag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return matrix header for current stream position
		
		Returns matrix headers at top level and sub levels
		
		Parameters
		----------
		check_stream_limit : if True, then if the returned header
		is passed to array_from_header, it will be verified that
		the length of the uncompressed data is not overlong (which
		can indicate .mat file corruption)
	**/
	public function read_header(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read numeric data element into ndarray
		
		Reads element, then casts to ndarray.
		
		The type of the array is usually given by the ``mdtype`` returned via
		``read_element``.  Sparse logical arrays are an exception, where the
		type of the array may be ``np.bool`` even if the ``mdtype`` claims the
		data is of float64 type.
		
		Parameters
		----------
		copy : bool, optional
		    Whether to copy the array before returning.  If False, return array
		    backed by bytes read from file.
		nnz : int, optional
		    Number of non-zero values when reading numeric data from sparse
		    matrices.  -1 if not reading sparse matrices, or to disable check
		    for bytes data instead of declared data type (see Notes).
		
		Returns
		-------
		arr : array
		    Numeric array
		
		Notes
		-----
		MATLAB apparently likes to store sparse logical matrix data as bytes
		instead of miDOUBLE (float64) data type, even though the data element
		still declares its type as miDOUBLE.  We can guess this has happened by
		looking for the length of the data compared to the expected number of
		elements, using the `nnz` input parameter.
	**/
	public function read_numeric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read opaque (function workspace) type
		
		Looking at some mat files, the structure of this type seems to
		be:
		
		* array flags as usual (already read into `hdr`)
		* 3 int8 strings
		* a matrix
		
		Then there's a matrix at the end of the mat file that seems have
		the anonymous founction workspaces - we load it as
		``__function_workspace__``
		
		See the comments at the beginning of ``mio5.py``
	**/
	public function read_opaque(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read real / complex matrices from stream 
	**/
	public function read_real_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read struct or object array from stream
		
		Objects are just structs with an extra field *classname*,
		defined before (this here) struct format structure
	**/
	public function read_struct(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read tag mdtype and byte_count
		
		Does necessary swapping and takes account of SDE formats.
		
		See also ``read_full_tag`` method.
		
		Returns
		-------
		mdtype : int
		   matlab data type code
		byte_count : int
		   number of bytes following that comprise the data
		tag_data : None or str
		   Any data from the tag itself.  This is None for a full tag,
		   and string length `byte_count` if this is a small data
		   element.
	**/
	public function read_tag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Set stream of best type from file-like `fobj`
		
		Called from Python when initiating a variable read
	**/
	public function set_stream(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function shape_from_header(args:haxe.extern.Rest<Dynamic>):Dynamic;
}