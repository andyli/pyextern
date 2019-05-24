/* This file is generated, do not edit! */
package scipy.integrate._ivp.lsoda;
@:pythonImport("scipy.integrate._ivp.lsoda") extern class Lsoda_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Assert that first_step is valid and return it.
	**/
	static public function validate_first_step(first_step:Dynamic, t0:Dynamic, t_bound:Dynamic):Dynamic;
	/**
		Validate tolerance values.
	**/
	static public function validate_tol(rtol:Dynamic, atol:Dynamic, n:Dynamic):Dynamic;
	/**
		Display a warning for extraneous keyword arguments.
		
		The initializer of each solver class is expected to collect keyword
		arguments that it doesn't understand and warn about them. This function
		prints a warning for each key in the supplied dictionary.
		
		Parameters
		----------
		extraneous : dict
		    Extraneous keyword arguments
	**/
	static public function warn_extraneous(extraneous:Dynamic):Dynamic;
}