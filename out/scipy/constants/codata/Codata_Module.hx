/* This file is generated, do not edit! */
package scipy.constants.codata;
@:pythonImport("scipy.constants.codata") extern class Codata_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _aliases : Dynamic;
	static public function _check_obsolete(key:Dynamic):Dynamic;
	static public var _current_codata : Dynamic;
	static public var _current_constants : Dynamic;
	static public var _obsolete_constants : Dynamic;
	static public var _physical_constants_2002 : Dynamic;
	static public var _physical_constants_2006 : Dynamic;
	static public var _physical_constants_2010 : Dynamic;
	static public var absolute_import : Dynamic;
	static public var c : Dynamic;
	static public var division : Dynamic;
	static public var epsilon0 : Dynamic;
	static public var exact_values : Dynamic;
	/**
		Return list of codata.physical_constant keys containing a given string.
		
		Parameters
		----------
		sub : str, unicode
		    Sub-string to search keys for.  By default, return all keys.
		disp : bool
		    If True, print the keys that are found, and return None.
		    Otherwise, return the list of keys without printing anything.
		
		Returns
		-------
		keys : list or None
		    If `disp` is False, the list of keys is returned.
		    Otherwise, None is returned.
		
		See Also
		--------
		codata : Contains the description of `physical_constants`, which, as a
		    dictionary literal object, does not itself possess a docstring.
	**/
	static public function find(?sub:Dynamic, ?disp:Dynamic):Dynamic;
	static public var k : Dynamic;
	static public var key : Dynamic;
	static public var mu0 : Dynamic;
	static public function parse_constants(d:Dynamic):Dynamic;
	static public var physical_constants : Dynamic;
	static public var pi : Dynamic;
	/**
		Relative precision in physical_constants indexed by key
		
		Parameters
		----------
		key : Python string or unicode
		    Key in dictionary `physical_constants`
		
		Returns
		-------
		prec : float
		    Relative precision in `physical_constants` corresponding to `key`
		
		See Also
		--------
		codata : Contains the description of `physical_constants`, which, as a
		    dictionary literal object, does not itself possess a docstring.
		
		Examples
		--------
		>>> from scipy.constants import codata
		>>> codata.precision(u'proton mass')
		4.96226989798e-08
	**/
	static public function precision(key:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		sqrt(x)
		
		Return the square root of x.
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var txt2002 : Dynamic;
	static public var txt2006 : Dynamic;
	static public var txt2010 : Dynamic;
	/**
		Unit in physical_constants indexed by key
		
		Parameters
		----------
		key : Python string or unicode
		    Key in dictionary `physical_constants`
		
		Returns
		-------
		unit : Python string
		    Unit in `physical_constants` corresponding to `key`
		
		See Also
		--------
		codata : Contains the description of `physical_constants`, which, as a
		    dictionary literal object, does not itself possess a docstring.
		
		Examples
		--------
		>>> from scipy.constants import codata
		>>> codata.unit(u'proton mass')
		'kg'
	**/
	static public function unit(key:Dynamic):Dynamic;
	static public var v : Dynamic;
	static public var val : Dynamic;
	/**
		Value in physical_constants indexed by key
		
		Parameters
		----------
		key : Python string or unicode
		    Key in dictionary `physical_constants`
		
		Returns
		-------
		value : float
		    Value in `physical_constants` corresponding to `key`
		
		See Also
		--------
		codata : Contains the description of `physical_constants`, which, as a
		    dictionary literal object, does not itself possess a docstring.
		
		    Examples
		--------
		>>> from scipy.constants import codata
		>>> codata.value('elementary charge')
		    1.602176487e-019
	**/
	static public function value(key:Dynamic):Dynamic;
}