/* This file is generated, do not edit! */
package scipy.constants.constants;
@:pythonImport("scipy.constants.constants") extern class Constants_Module {
	static public var Avogadro : Dynamic;
	static public var Boltzmann : Dynamic;
	static public var Btu : Dynamic;
	static public var Btu_IT : Dynamic;
	static public var Btu_th : Dynamic;
	/**
		Convert Celsius to Fahrenheit
		
		Parameters
		----------
		C : array_like
		    Celsius temperature(s) to be converted.
		
		Returns
		-------
		F : float or array of floats
		    Equivalent Fahrenheit temperature(s).
		
		Notes
		-----
		Computes ``F = 1.8 * C + 32``.
		
		Examples
		--------
		>>> from scipy.constants.constants import C2F
		>>> C2F(_np.array([-40, 40.0]))
		array([ -40.,  104.])
	**/
	static public function C2F(C:Dynamic):Dynamic;
	/**
		Convert Celsius to Kelvin
		
		Parameters
		----------
		C : array_like
		    Celsius temperature(s) to be converted.
		
		Returns
		-------
		K : float or array of floats
		    Equivalent Kelvin temperature(s).
		
		Notes
		-----
		Computes ``K = C + zero_Celsius`` where `zero_Celsius` = 273.15, i.e.,
		(the absolute value of) temperature "absolute zero" as measured in Celsius.
		
		Examples
		--------
		>>> from scipy.constants.constants import C2K
		>>> C2K(_np.array([-40, 40.0]))
		array([ 233.15,  313.15])
	**/
	static public function C2K(C:Dynamic):Dynamic;
	/**
		Convert Fahrenheit to Celsius
		
		Parameters
		----------
		F : array_like
		    Fahrenheit temperature(s) to be converted.
		
		Returns
		-------
		C : float or array of floats
		    Equivalent Celsius temperature(s).
		
		Notes
		-----
		Computes ``C = (F - 32) / 1.8``.
		
		Examples
		--------
		>>> from scipy.constants.constants import F2C
		>>> F2C(_np.array([-40, 40.0]))
		array([-40.        ,   4.44444444])
	**/
	static public function F2C(F:Dynamic):Dynamic;
	/**
		Convert Fahrenheit to Kelvin
		
		Parameters
		----------
		F : array_like
		    Fahrenheit temperature(s) to be converted.
		
		Returns
		-------
		K : float or array of floats
		    Equivalent Kelvin temperature(s).
		
		Notes
		-----
		Computes ``K = (F - 32)/1.8 + zero_Celsius`` where `zero_Celsius` =
		273.15, i.e., (the absolute value of) temperature "absolute zero" as
		measured in Celsius.
		
		Examples
		--------
		>>> from scipy.constants.constants import F2K
		>>> F2K(_np.array([-40, 104]))
		array([ 233.15,  313.15])
	**/
	static public function F2K(F:Dynamic):Dynamic;
	static public var G : Dynamic;
	static public var Julian_year : Dynamic;
	/**
		Convert Kelvin to Celsius
		
		Parameters
		----------
		K : array_like
		    Kelvin temperature(s) to be converted.
		
		Returns
		-------
		C : float or array of floats
		    Equivalent Celsius temperature(s).
		
		Notes
		-----
		Computes ``C = K - zero_Celsius`` where `zero_Celsius` = 273.15, i.e.,
		(the absolute value of) temperature "absolute zero" as measured in Celsius.
		
		Examples
		--------
		>>> from scipy.constants.constants import K2C
		>>> K2C(_np.array([233.15, 313.15]))
		array([-40.,  40.])
	**/
	static public function K2C(K:Dynamic):Dynamic;
	/**
		Convert Kelvin to Fahrenheit
		
		Parameters
		----------
		K : array_like
		    Kelvin temperature(s) to be converted.
		
		Returns
		-------
		F : float or array of floats
		    Equivalent Fahrenheit temperature(s).
		
		Notes
		-----
		Computes ``F = 1.8 * (K - zero_Celsius) + 32`` where `zero_Celsius` =
		273.15, i.e., (the absolute value of) temperature "absolute zero" as
		measured in Celsius.
		
		Examples
		--------
		>>> from scipy.constants.constants import K2F
		>>> K2F(_np.array([233.15,  313.15]))
		array([ -40.,  104.])
	**/
	static public function K2F(K:Dynamic):Dynamic;
	static public var N_A : Dynamic;
	static public var Planck : Dynamic;
	static public var R : Dynamic;
	static public var Rydberg : Dynamic;
	static public var Stefan_Boltzmann : Dynamic;
	static public var Wien : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function _cd(key:Dynamic):Dynamic;
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
	static public var c : Dynamic;
	static public var calorie : Dynamic;
	static public var calorie_IT : Dynamic;
	static public var calorie_th : Dynamic;
	static public var carat : Dynamic;
	static public var centi : Dynamic;
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
		>>> from scipy.constants.constants import lambda2nu
		>>> lambda2nu(_np.array((1, speed_of_light)))
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
		>>> from scipy.constants.constants import nu2lambda
		>>> nu2lambda(_np.array((1, speed_of_light)))
		array([  2.99792458e+08,   1.00000000e+00])
	**/
	static public function nu2lambda(nu:Dynamic):Dynamic;
	static public var ounce : Dynamic;
	static public var oz : Dynamic;
	static public var parsec : Dynamic;
	static public var pebi : Dynamic;
	static public var peta : Dynamic;
	static public var pi : Dynamic;
	static public var pico : Dynamic;
	static public var point : Dynamic;
	static public var pound : Dynamic;
	static public var pound_force : Dynamic;
	static public var print_function : Dynamic;
	static public var proton_mass : Dynamic;
	static public var psi : Dynamic;
	static public var pt : Dynamic;
	static public var short_ton : Dynamic;
	static public var sigma : Dynamic;
	static public var speed_of_light : Dynamic;
	static public var speed_of_sound : Dynamic;
	static public var stone : Dynamic;
	static public var survey_foot : Dynamic;
	static public var survey_mile : Dynamic;
	static public var tebi : Dynamic;
	static public var tera : Dynamic;
	static public var ton_TNT : Dynamic;
	static public var torr : Dynamic;
	static public var troy_ounce : Dynamic;
	static public var troy_pound : Dynamic;
	static public var u : Dynamic;
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