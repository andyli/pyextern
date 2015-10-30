/* This file is generated, do not edit! */
package scipy.io.matlab.byteordercodes;
@:pythonImport("scipy.io.matlab.byteordercodes") extern class Byteordercodes_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var aliases : Dynamic;
	static public var division : Dynamic;
	static public var native_code : Dynamic;
	static public var print_function : Dynamic;
	static public var swapped_code : Dynamic;
	static public var sys_is_le : Dynamic;
	/**
		Convert various order codings to numpy format.
		
		Parameters
		----------
		code : str
		    The code to convert. It is converted to lower case before parsing.
		    Legal values are:
		    'little', 'big', 'l', 'b', 'le', 'be', '<', '>', 'native', '=',
		    'swapped', 's'.
		
		Returns
		-------
		out_code : {'<', '>'}
		    Here '<' is the numpy dtype code for little endian,
		    and '>' is the code for big endian.
		
		Examples
		--------
		>>> import sys
		>>> sys_is_le == (sys.byteorder == 'little')
		True
		>>> to_numpy_code('big')
		'>'
		>>> to_numpy_code('little')
		'<'
		>>> nc = to_numpy_code('native')
		>>> nc == '<' if sys_is_le else nc == '>'
		True
		>>> sc = to_numpy_code('swapped')
		>>> sc == '>' if sys_is_le else sc == '<'
		True
	**/
	static public function to_numpy_code(code:Dynamic):Dynamic;
}