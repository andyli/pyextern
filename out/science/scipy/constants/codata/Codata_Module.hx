/* This file is generated, do not edit! */
package scipy.constants.codata;
@:pythonImport("scipy.constants.codata") extern class Codata_Module {
	static public var c : Dynamic;
	static public var epsilon0 : Dynamic;
	static public var exact_values : Dynamic;
	/**
		Return list of physical_constant keys containing a given string.
		
		Parameters
		----------
		sub : str, unicode
		    Sub-string to search keys for. By default, return all keys.
		disp : bool
		    If True, print the keys that are found and return None.
		    Otherwise, return the list of keys without printing anything.
		
		Returns
		-------
		keys : list or None
		    If `disp` is False, the list of keys is returned.
		    Otherwise, None is returned.
		
		Examples
		--------
		>>> from scipy.constants import find, physical_constants
		
		Which keys in the ``physical_constants`` dictionary contain 'boltzmann'?
		
		>>> find('boltzmann')
		['Boltzmann constant',
		 'Boltzmann constant in Hz/K',
		 'Boltzmann constant in eV/K',
		 'Boltzmann constant in inverse meter per kelvin',
		 'Stefan-Boltzmann constant']
		
		Get the constant called 'Boltzmann constant in Hz/K':
		
		>>> physical_constants['Boltzmann constant in Hz/K']
		(20836619120.0, 'Hz K^-1', 0.0)
		
		Find constants with 'radius' in the key:
		
		>>> find('radius')
		['Bohr radius',
		 'classical electron radius',
		 'deuteron rms charge radius',
		 'proton rms charge radius']
		>>> physical_constants['classical electron radius']
		(2.8179403262e-15, 'm', 1.3e-24)
	**/
	static public function find(?sub:Dynamic, ?disp:Dynamic):Dynamic;
	static public var k : Dynamic;
	static public var key : Dynamic;
	static public var mu0 : Dynamic;
	static public function parse_constants_2002to2014(d:Dynamic):Dynamic;
	static public function parse_constants_2018toXXXX(d:Dynamic):Dynamic;
	static public var physical_constants : Dynamic;
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
		
		Examples
		--------
		>>> from scipy import constants
		>>> constants.precision(u'proton mass')
		5.1e-37
	**/
	static public function precision(key:Dynamic):Float;
	static public var txt2002 : Dynamic;
	static public var txt2006 : Dynamic;
	static public var txt2010 : Dynamic;
	static public var txt2014 : Dynamic;
	static public var txt2018 : Dynamic;
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
		
		Examples
		--------
		>>> from scipy import constants
		>>> constants.unit(u'proton mass')
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
		
		Examples
		--------
		>>> from scipy import constants
		>>> constants.value(u'elementary charge')
		1.602176634e-19
	**/
	static public function value(key:Dynamic):Float;
}