/* This file is generated, do not edit! */
package pandas.core.convert;
@:pythonImport("pandas.core.convert") extern class Convert_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		try to cast the array/value to a datetimelike dtype, converting float
		nan to iNaT
	**/
	static public function _possibly_cast_to_datetime(value:Dynamic, dtype:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		if we have an object dtype, try to coerce dates and/or numbers 
	**/
	static public function _possibly_convert_objects(values:Dynamic, ?convert_dates:Dynamic, ?convert_numeric:Dynamic, ?convert_timedeltas:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		if we have an object dtype, try to coerce dates and/or numbers 
	**/
	static public function _soft_convert_objects(values:Dynamic, ?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic, ?coerce:Dynamic, ?copy:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
}