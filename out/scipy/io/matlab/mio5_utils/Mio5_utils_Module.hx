/* This file is generated, do not edit! */
package scipy.io.matlab.mio5_utils;
@:pythonImport("scipy.io.matlab.mio5_utils") extern class Mio5_utils_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function asbytes(s:Dynamic):Dynamic;
	static public function asstr(s:Dynamic):Dynamic;
	static public function byteswap_u4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert final axis of char array to strings
		
		Parameters
		----------
		in_arr : array
		   dtype of 'U1'
		
		Returns
		-------
		str_arr : array
		   dtype of 'UN' where N is the length of the last dimension of
		   ``arr``
	**/
	static public function chars_to_strings(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var native_code : Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function pycopy(x:Dynamic):Dynamic;
	/**
		Return squeezed element
		
		The returned object may not be an ndarray - for example if we do
		``arr.item`` to return a ``mat_struct`` object from a struct array 
	**/
	static public function squeeze_element(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var swapped_code : Dynamic;
	static public var sys_is_le : Dynamic;
}