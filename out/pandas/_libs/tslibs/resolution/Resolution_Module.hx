/* This file is generated, do not edit! */
package pandas._libs.tslibs.resolution;
@:pythonImport("pandas._libs.tslibs.resolution") extern class Resolution_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Return frequency code group of given frequency str or offset.
		
		Example
		-------
		>>> get_freq_group('W-MON')
		4000
		
		>>> get_freq_group('W-FRI')
		4000
	**/
	static public function get_freq_group(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function month_position_check(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function resolution(args:haxe.extern.Rest<Dynamic>):Dynamic;
}