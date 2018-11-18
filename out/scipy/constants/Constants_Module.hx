/* This file is generated, do not edit! */
package scipy.constants;
@:pythonImport("scipy.constants") extern class Constants_Module {
	static public var Avogadro : Dynamic;
	static public var Boltzmann : Dynamic;
	static public var Btu : Dynamic;
	static public var Btu_IT : Dynamic;
	static public var Btu_th : Dynamic;
	static public var G : Dynamic;
	static public var Julian_year : Dynamic;
	static public var N_A : Dynamic;
	static public var Planck : Dynamic;
	static public var R : Dynamic;
	static public var Rydberg : Dynamic;
	static public var Stefan_Boltzmann : Dynamic;
	static public var Wien : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _obsolete_constants : Dynamic;
	static public var absolute_import : Dynamic;
	static public var acre : Dynamic;
	static public var alpha : Dynamic;
	static public var angstrom : Dynamic;
	static public var arcmin : Dynamic;
	static public var arcminute : Dynamic;
	static public var arcsec : Dynamic;
	static public var arcsecond : Dynamic;
	static public var astronomical_unit : Dynamic;
	static public var atm : Dynamic;
	static public var atmosphere : Dynamic;
	static public var atomic_mass : Dynamic;
	static public var atto : Dynamic;
	static public var au : Dynamic;
	static public var bar : Dynamic;
	static public var barrel : Dynamic;
	static public var bbl : Dynamic;
	static public var blob : Dynamic;
	static public var c : Dynamic;
	static public var calorie : Dynamic;
	static public var calorie_IT : Dynamic;
	static public var calorie_th : Dynamic;
	static public var carat : Dynamic;
	static public var centi : Dynamic;
	/**
		Convert from a temperature scale to another one among Celsius, Kelvin,
		Fahrenheit and Rankine scales.
		
		Parameters
		----------
		val : array_like
		    Value(s) of the temperature(s) to be converted expressed in the
		    original scale.
		
		old_scale: str
		    Specifies as a string the original scale from which the temperature
		    value(s) will be converted. Supported scales are Celsius ('Celsius',
		    'celsius', 'C' or 'c'), Kelvin ('Kelvin', 'kelvin', 'K', 'k'),
		    Fahrenheit ('Fahrenheit', 'fahrenheit', 'F' or 'f') and Rankine
		    ('Rankine', 'rankine', 'R', 'r').
		
		new_scale: str
		    Specifies as a string the new scale to which the temperature
		    value(s) will be converted. Supported scales are Celsius ('Celsius',
		    'celsius', 'C' or 'c'), Kelvin ('Kelvin', 'kelvin', 'K', 'k'),
		    Fahrenheit ('Fahrenheit', 'fahrenheit', 'F' or 'f') and Rankine
		    ('Rankine', 'rankine', 'R', 'r').
		
		Returns
		-------
		res : float or array of floats
		    Value(s) of the converted temperature(s) expressed in the new scale.
		
		Notes
		-----
		.. versionadded:: 0.18.0
		
		Examples
		--------
		>>> from scipy.constants import convert_temperature
		>>> convert_temperature(np.array([-40, 40.0]), 'Celsius', 'Kelvin')
		array([ 233.15,  313.15])
	**/
	static public function convert_temperature(val:Dynamic, old_scale:Dynamic, new_scale:Dynamic):Dynamic;
	static public var day : Dynamic;
	static public var deci : Dynamic;
	static public var degree : Dynamic;
	static public var degree_Fahrenheit : Dynamic;
	static public var deka : Dynamic;
	static public var division : Dynamic;
	static public var dyn : Dynamic;
	static public var dyne : Dynamic;
	static public var e : Dynamic;
	static public var eV : Dynamic;
	static public var electron_mass : Dynamic;
	static public var electron_volt : Dynamic;
	static public var elementary_charge : Dynamic;
	static public var epsilon_0 : Dynamic;
	static public var erg : Dynamic;
	static public var exa : Dynamic;
	static public var exbi : Dynamic;
	static public var femto : Dynamic;
	static public var fermi : Dynamic;
	/**
		Return list of physical_constant keys containing a given string.
		
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
		
		Examples
		--------
		>>> from scipy.constants import find, physical_constants
		
		Which keys in the ``physical_constants`` dictionary contain 'boltzmann'?
		
		>>> find('boltzmann')
		['Boltzmann constant',
		 'Boltzmann constant in Hz/K',
		 'Boltzmann constant in eV/K',
		 'Boltzmann constant in inverse meters per kelvin',
		 'Stefan-Boltzmann constant']
		
		Get the constant called 'Boltzmann constant in Hz/K':
		
		>>> physical_constants['Boltzmann constant in Hz/K']
		(20836612000.0, 'Hz K^-1', 12000.0)
		
		Find constants with 'radius' in the key:
		
		>>> find('radius')
		['Bohr radius',
		 'classical electron radius',
		 'deuteron rms charge radius',
		 'proton rms charge radius']
		>>> physical_constants['classical electron radius']
		(2.8179403227e-15, 'm', 1.9e-24)
	**/
	static public function find(?sub:Dynamic, ?disp:Dynamic):Dynamic;
	static public var fine_structure : Dynamic;
	static public var fluid_ounce : Dynamic;
	static public var fluid_ounce_US : Dynamic;
	static public var fluid_ounce_imp : Dynamic;
	static public var foot : Dynamic;
	static public var g : Dynamic;
	static public var gallon : Dynamic;
	static public var gallon_US : Dynamic;
	static public var gallon_imp : Dynamic;
	static public var gas_constant : Dynamic;
	static public var gibi : Dynamic;
	static public var giga : Dynamic;
	static public var golden : Dynamic;
	static public var golden_ratio : Dynamic;
	static public var grain : Dynamic;
	static public var gram : Dynamic;
	static public var gravitational_constant : Dynamic;
	static public var h : Dynamic;
	static public var hbar : Dynamic;
	static public var hectare : Dynamic;
	static public var hecto : Dynamic;
	static public var horsepower : Dynamic;
	static public var hour : Dynamic;
	static public var hp : Dynamic;
	static public var inch : Dynamic;
	static public var k : Dynamic;
	static public var kgf : Dynamic;
	static public var kibi : Dynamic;
	static public var kilo : Dynamic;
	static public var kilogram_force : Dynamic;
	static public var kmh : Dynamic;
	static public var knot : Dynamic;
	/**
		Convert wavelength to optical frequency
		
		Parameters
		----------
		lambda_ : array_like
		    Wavelength(s) to be converted.
		
		Returns
		-------
		nu : float or array of floats
		    Equivalent optical frequency.
		
		Notes
		-----
		Computes ``nu = c / lambda`` where c = 299792458.0, i.e., the
		(vacuum) speed of light in meters/second.
		
		Examples
		--------
		>>> from scipy.constants import lambda2nu, speed_of_light
		>>> lambda2nu(np.array((1, speed_of_light)))
		array([  2.99792458e+08,   1.00000000e+00])
	**/
	static public function lambda2nu(lambda_:Dynamic):Dynamic;
	static public var lb : Dynamic;
	static public var lbf : Dynamic;
	static public var light_year : Dynamic;
	static public var liter : Dynamic;
	static public var litre : Dynamic;
	static public var long_ton : Dynamic;
	static public var m_e : Dynamic;
	static public var m_n : Dynamic;
	static public var m_p : Dynamic;
	static public var m_u : Dynamic;
	static public var mach : Dynamic;
	static public var mebi : Dynamic;
	static public var mega : Dynamic;
	static public var metric_ton : Dynamic;
	static public var micro : Dynamic;
	static public var micron : Dynamic;
	static public var mil : Dynamic;
	static public var mile : Dynamic;
	static public var milli : Dynamic;
	static public var minute : Dynamic;
	static public var mmHg : Dynamic;
	static public var mph : Dynamic;
	static public var mu_0 : Dynamic;
	static public var nano : Dynamic;
	static public var nautical_mile : Dynamic;
	static public var neutron_mass : Dynamic;
	/**
		Convert optical frequency to wavelength.
		
		Parameters
		----------
		nu : array_like
		    Optical frequency to be converted.
		
		Returns
		-------
		lambda : float or array of floats
		    Equivalent wavelength(s).
		
		Notes
		-----
		Computes ``lambda = c / nu`` where c = 299792458.0, i.e., the
		(vacuum) speed of light in meters/second.
		
		Examples
		--------
		>>> from scipy.constants import nu2lambda, speed_of_light
		>>> nu2lambda(np.array((1, speed_of_light)))
		array([  2.99792458e+08,   1.00000000e+00])
	**/
	static public function nu2lambda(nu:Dynamic):Dynamic;
	static public var ounce : Dynamic;
	static public var oz : Dynamic;
	static public var parsec : Dynamic;
	static public var pebi : Dynamic;
	static public var peta : Dynamic;
	static public var physical_constants : Dynamic;
	static public var pi : Dynamic;
	static public var pico : Dynamic;
	static public var point : Dynamic;
	static public var pound : Dynamic;
	static public var pound_force : Dynamic;
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
		>>> from scipy import constants
		>>> constants.precision(u'proton mass')
		1.2555138746605121e-08
	**/
	static public function precision(key:Dynamic):Float;
	static public var print_function : Dynamic;
	static public var proton_mass : Dynamic;
	static public var psi : Dynamic;
	static public var pt : Dynamic;
	static public var short_ton : Dynamic;
	static public var sigma : Dynamic;
	static public var slinch : Dynamic;
	static public var slug : Dynamic;
	static public var speed_of_light : Dynamic;
	static public var speed_of_sound : Dynamic;
	static public var stone : Dynamic;
	static public var survey_foot : Dynamic;
	static public var survey_mile : Dynamic;
	static public var tebi : Dynamic;
	static public var tera : Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic):Dynamic;
	static public var ton_TNT : Dynamic;
	static public var torr : Dynamic;
	static public var troy_ounce : Dynamic;
	static public var troy_pound : Dynamic;
	static public var u : Dynamic;
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
		>>> from scipy import constants
		>>> constants.unit(u'proton mass')
		'kg'
	**/
	static public function unit(key:Dynamic):Dynamic;
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
		>>> from scipy import constants
		>>> constants.value(u'elementary charge')
		    1.6021766208e-19
	**/
	static public function value(key:Dynamic):Float;
	static public var week : Dynamic;
	static public var yard : Dynamic;
	static public var year : Dynamic;
	static public var yobi : Dynamic;
	static public var yotta : Dynamic;
	static public var zebi : Dynamic;
	static public var zepto : Dynamic;
	static public var zero_Celsius : Dynamic;
	static public var zetta : Dynamic;
}