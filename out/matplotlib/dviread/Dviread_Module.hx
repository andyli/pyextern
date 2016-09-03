/* This file is generated, do not edit! */
package matplotlib.dviread;
@:pythonImport("matplotlib.dviread") extern class Dviread_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _dvistate : Dynamic;
	/**
		Convert from two's complement to negative.
	**/
	static public function _fix2comp(num:Dynamic):Dynamic;
	static public function _fontfile(texname:Dynamic, class_:Dynamic, suffix:Dynamic, cache:Dynamic):Dynamic;
	/**
		Multiply two numbers in 20.12 fixed point format.
	**/
	static public function _mul2012(num1:Dynamic, num2:Dynamic):Dynamic;
	static public var _tfmcache : Dynamic;
	static public function _tfmfile(texname:Dynamic):Dynamic;
	static public var _vfcache : Dynamic;
	static public function _vffile(texname:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Call :program:`kpsewhich` to find a file in the texmf tree. If
		*format* is not None, it is used as the value for the
		`--format` option.
		
		Apparently most existing TeX distributions on Unix-like systems
		use kpathsea. I hear MikTeX (a popular distribution on Windows)
		doesn't use kpathsea, so what do we do? (TODO)
		
		.. seealso::
		
		  `Kpathsea documentation <http://www.tug.org/kpathsea/>`_
		    The library that :program:`kpsewhich` is part of.
	**/
	static public function find_tex_file(filename:Dynamic, ?format:Dynamic):Dynamic;
	static public function ord(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public var unicode_literals : Dynamic;
}