/* This file is generated, do not edit! */
package pandas._libs.reshape;
@:pythonImport("pandas._libs.reshape") extern class Reshape_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		transform array list-likes to long form
		preserve non-list entries
		
		Parameters
		----------
		values : ndarray[object]
		
		Returns
		-------
		ndarray[object]
		    result
		ndarray[int64_t]
		    counts
	**/
	static public function explode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Transform long values to wide new_values.
		
		Parameters
		----------
		values : typed ndarray
		mask : np.ndarray[bool]
		stride : int
		length : int
		width : int
		new_values : np.ndarray[bool]
		    result array
		new_mask : np.ndarray[bool]
		    result mask
	**/
	static public function unstack(values:Dynamic, mask:Dynamic, stride:Dynamic, length:Dynamic, width:Dynamic, new_values:Dynamic, new_mask:Dynamic):Dynamic;
}