/* This file is generated, do not edit! */
package scipy.io.matlab.mio_utils;
@:pythonImport("scipy.io.matlab.mio_utils") extern class Mio_utils_Module {
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
	/**
		Return squeezed element
		
		The returned object may not be an ndarray - for example if we do
		``arr.item`` to return a ``mat_struct`` object from a struct array 
	**/
	static public function squeeze_element(args:haxe.extern.Rest<Dynamic>):Dynamic;
}