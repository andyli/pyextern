/* This file is generated, do not edit! */
package scipy.io.matlab.mio4;
@:pythonImport("scipy.io.matlab.mio4", "MatFile4Reader") extern class MatFile4Reader {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
		Initialize matlab 4 file reader
		
		mat_stream : file-like
		   Object with file API, open for reading.
		byte_order : str or None, optional
		   None by default, implying byte order guessed from mat
		   file. Otherwise can be one of ('native', '=', 'little', '<',
		   'BIG', '>').
		mat_dtype : bool, optional
		   If True, return arrays in same dtype as would be loaded into
		   MATLAB (instead of the dtype with which they are saved).
		squeeze_me : bool, optional
		   Whether to squeeze unit matrix dimensions or not.
		chars_as_strings : bool, optional
		   Whether to convert char arrays to string arrays.
		matlab_compatible : bool, optional
		   Returns matrices as would be loaded by MATLAB (implies
		   squeeze_me=False, chars_as_strings=False, mat_dtype=True,
		   struct_as_record=True).
		    
	**/
	@:native("__init__")
	public function ___init__(mat_stream:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	public function end_of_stream():Dynamic;
	/**
		get variables from stream as dictionary
		
		Parameters
		----------
		variable_names : None or str or sequence of str, optional
		    variable name, or sequence of variable names to get from Mat file /
		    file stream.  If None, then get all variables in file
	**/
	public function get_variables(?variable_names:Dynamic):Dynamic;
	/**
		As we do not know what file type we have, assume native 
	**/
	public function guess_byte_order():Dynamic;
	/**
		Run when beginning read of variables
		
		Sets up readers from parameters in `self`
	**/
	public function initialize_read():Dynamic;
	/**
		list variables from stream 
	**/
	public function list_variables():Dynamic;
	/**
		Read array, given `header`
		
		Parameters
		----------
		header : header object
		   object with fields defining variable header
		process : {True, False}, optional
		   If True, apply recursive post-processing during loading of array.
		
		Returns
		-------
		arr : array
		   array with post-processing applied or not according to
		   `process`.
	**/
	public function read_var_array(header:Dynamic, ?process:Dynamic):Dynamic;
	/**
		Read and return header, next position
		
		Parameters
		----------
		None
		
		Returns
		-------
		header : object
		   object that can be passed to self.read_var_array, and that
		   has attributes ``name`` and ``is_global``
		next_position : int
		   position in stream of next variable
	**/
	public function read_var_header():Dynamic;
	/**
		Sets options to return arrays as MATLAB loads them 
	**/
	public function set_matlab_compatible():Dynamic;
}