/* This file is generated, do not edit! */
package pandas.core.indexers.objects;
@:pythonImport("pandas.core.indexers.objects") extern class Objects_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Calculate window boundaries for rolling windows from a time offset.
		
		Parameters
		----------
		num_values : int64
		    total number of values
		
		window_size : int64
		    window size calculated from the offset
		
		min_periods : object
		    ignored, exists for compatibility
		
		center : bint
		    center the rolling window on the current observation
		
		closed : str
		    string of side of the window that should be closed
		
		index : ndarray[int64]
		    time series index to roll over
		
		Returns
		-------
		(ndarray[int64], ndarray[int64])
	**/
	static public function calculate_variable_window_bounds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var get_window_bounds_doc : Dynamic;
}