/* This file is generated, do not edit! */
package pandas._libs.missing;
@:pythonImport("pandas._libs.missing") extern class Missing_Module {
	static public var NaT : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Return boolean describing of the input is NA-like, defined here as any
		of:
		 - None
		 - nan
		 - NaT
		 - np.datetime64 representation of NaT
		 - np.timedelta64 representation of NaT
		
		Parameters
		----------
		val : object
		
		Returns
		-------
		result : bool
		
		Notes
		-----
		The difference between `checknull` and `checknull_old` is that `checknull`
		does *not* consider INF or NEGINF to be NA.
	**/
	static public function checknull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean describing of the input is NA-like, defined here as any
		of:
		 - None
		 - nan
		 - INF
		 - NEGINF
		 - NaT
		 - np.datetime64 representation of NaT
		 - np.timedelta64 representation of NaT
		
		Parameters
		----------
		val : object
		
		Returns
		-------
		result : bool
		
		Notes
		-----
		The difference between `checknull` and `checknull_old` is that `checknull`
		does *not* consider INF or NEGINF to be NA.
	**/
	static public function checknull_old(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean mask denoting which elements of a 1-D array are na-like,
		according to the criteria defined in `_check_all_nulls`:
		 - None
		 - nan
		 - NaT
		 - np.datetime64 representation of NaT
		 - np.timedelta64 representation of NaT
		
		Parameters
		----------
		arr : ndarray
		
		Returns
		-------
		result : ndarray (dtype=np.bool_)
	**/
	static public function isnaobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean mask denoting which elements of a 2-D array are na-like,
		according to the criteria defined in `checknull`:
		 - None
		 - nan
		 - NaT
		 - np.datetime64 representation of NaT
		 - np.timedelta64 representation of NaT
		
		Parameters
		----------
		arr : ndarray
		
		Returns
		-------
		result : ndarray (dtype=np.bool_)
		
		Notes
		-----
		The difference between `isnaobj2d` and `isnaobj2d_old` is that `isnaobj2d`
		does *not* consider INF or NEGINF to be NA.
	**/
	static public function isnaobj2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean mask denoting which elements of a 2-D array are na-like,
		according to the criteria defined in `checknull_old`:
		 - None
		 - nan
		 - INF
		 - NEGINF
		 - NaT
		 - np.datetime64 representation of NaT
		 - np.timedelta64 representation of NaT
		
		Parameters
		----------
		arr : ndarray
		
		Returns
		-------
		result : ndarray (dtype=np.bool_)
		
		Notes
		-----
		The difference between `isnaobj2d` and `isnaobj2d_old` is that `isnaobj2d`
		does *not* consider INF or NEGINF to be NA.
	**/
	static public function isnaobj2d_old(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean mask denoting which elements of a 1-D array are na-like,
		defined as being any of:
		 - None
		 - nan
		 - INF
		 - NEGINF
		 - NaT
		
		Parameters
		----------
		arr : ndarray
		
		Returns
		-------
		result : ndarray (dtype=np.bool_)
	**/
	static public function isnaobj_old(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isneginf_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isposinf_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
}