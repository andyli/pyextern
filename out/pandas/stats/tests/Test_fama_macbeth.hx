/* This file is generated, do not edit! */
package pandas.stats.tests;
@:pythonImport("pandas.stats.tests.test_fama_macbeth") extern class Test_fama_macbeth {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check that left and right objects are almost equal.
		
		Parameters
		----------
		a : object
		b : object
		check_less_precise : bool, default False
		    Specify comparison precision.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		obj : str, default None
		    Specify object name being compared, internally used to show appropriate
		    assertion message
		lobj : str, default None
		    Specify left object name being compared, internally used to show
		    appropriate assertion message
		robj : str, default None
		    Specify right object name being compared, internally used to show
		    appropriate assertion message
	**/
	static public function assert_almost_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Runs Fama-MacBeth regression.
		
		Parameters
		----------
		Takes the same arguments as a panel OLS, in addition to:
		
		nw_lags_beta: int
		   Newey-West adjusts the betas by the given lags
	**/
	static public function fama_macbeth(kwargs:Dynamic):Dynamic;
}