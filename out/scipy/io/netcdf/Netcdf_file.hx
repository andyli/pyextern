/* This file is generated, do not edit! */
package scipy.io.netcdf;
@:pythonImport("scipy.io.netcdf", "netcdf_file") extern class Netcdf_file {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Closes the NetCDF file.
	**/
	public function __del__():Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(type:Dynamic, value:Dynamic, traceback:Dynamic):Dynamic;
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
		Initialize netcdf_file from fileobj (str or file-like).
	**/
	@:native("__init__")
	public function ___init__(filename:Dynamic, ?mode:Dynamic, ?mmap:Dynamic, ?version:Dynamic):Dynamic;
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
	public function __setattr__(attr:Dynamic, value:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	public function _pack_begin(begin:Dynamic):Dynamic;
	public function _pack_int(value:Dynamic):Dynamic;
	public function _pack_int32(value:Dynamic):Dynamic;
	public function _pack_int64(value:Dynamic):Dynamic;
	public function _pack_string(s:Dynamic):Dynamic;
	public function _read():Dynamic;
	public function _read_att_array():Dynamic;
	public function _read_dim_array():Dynamic;
	public function _read_gatt_array():Dynamic;
	public function _read_numrecs():Dynamic;
	public function _read_values():Dynamic;
	public function _read_var():Dynamic;
	public function _read_var_array():Dynamic;
	public function _unpack_int():Dynamic;
	public function _unpack_int32():Dynamic;
	public function _unpack_int64():Dynamic;
	public function _unpack_string():Dynamic;
	public function _write():Dynamic;
	public function _write_att_array(attributes:Dynamic):Dynamic;
	public function _write_dim_array():Dynamic;
	public function _write_gatt_array():Dynamic;
	public function _write_numrecs():Dynamic;
	public function _write_values(values:Dynamic):Dynamic;
	public function _write_var_array():Dynamic;
	public function _write_var_data(name:Dynamic):Dynamic;
	public function _write_var_metadata(name:Dynamic):Dynamic;
	/**
		Closes the NetCDF file.
	**/
	public function close():Dynamic;
	/**
		Adds a dimension to the Dimension section of the NetCDF data structure.
		
		Note that this function merely adds a new dimension that the variables can
		reference.  The values for the dimension, if desired, should be added as
		a variable using `createVariable`, referring to this dimension.
		
		Parameters
		----------
		name : str
		    Name of the dimension (Eg, 'lat' or 'time').
		length : int
		    Length of the dimension.
		
		See Also
		--------
		createVariable
	**/
	public function createDimension(name:Dynamic, length:Dynamic):Dynamic;
	/**
		Create an empty variable for the `netcdf_file` object, specifying its data
		type and the dimensions it uses.
		
		Parameters
		----------
		name : str
		    Name of the new variable.
		type : dtype or str
		    Data type of the variable.
		dimensions : sequence of str
		    List of the dimension names used by the variable, in the desired order.
		
		Returns
		-------
		variable : netcdf_variable
		    The newly created ``netcdf_variable`` object.
		    This object has also been added to the `netcdf_file` object as well.
		
		See Also
		--------
		createDimension
		
		Notes
		-----
		Any dimensions to be used by the variable should already exist in the
		NetCDF data structure or should be created by `createDimension` prior to
		creating the NetCDF variable.
	**/
	public function createVariable(name:Dynamic, type:Dynamic, dimensions:Dynamic):Dynamic;
	/**
		Perform a sync-to-disk flush if the `netcdf_file` object is in write mode.
		
		See Also
		--------
		sync : Identical function
	**/
	public function flush():Dynamic;
	/**
		Perform a sync-to-disk flush if the `netcdf_file` object is in write mode.
		
		See Also
		--------
		sync : Identical function
	**/
	public function sync():Dynamic;
}