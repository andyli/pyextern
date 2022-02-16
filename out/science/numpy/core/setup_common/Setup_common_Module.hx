/* This file is generated, do not edit! */
package numpy.core.setup_common;
@:pythonImport("numpy.core.setup_common") extern class Setup_common_Module {
	static public var C99_COMPLEX_FUNCS : Dynamic;
	static public var C99_COMPLEX_TYPES : Dynamic;
	static public var C99_FUNCS : Dynamic;
	static public var C99_FUNCS_EXTENDED : Dynamic;
	static public var C99_FUNCS_SINGLE : Dynamic;
	static public var C_ABI_VERSION : Dynamic;
	static public var C_API_VERSION : Dynamic;
	static public var LONG_DOUBLE_REPRESENTATION_SRC : Dynamic;
	static public var MANDATORY_FUNCS : Dynamic;
	static public var OPTIONAL_FUNCTION_ATTRIBUTES : Dynamic;
	static public var OPTIONAL_FUNCTION_ATTRIBUTES_WITH_INTRINSICS : Dynamic;
	static public var OPTIONAL_HEADERS : Dynamic;
	static public var OPTIONAL_INTRINSICS : Dynamic;
	static public var OPTIONAL_STDFUNCS : Dynamic;
	static public var OPTIONAL_STDFUNCS_MAYBE : Dynamic;
	static public var OPTIONAL_VARIABLE_ATTRIBUTES : Dynamic;
	static public var _AFTER_SEQ : Dynamic;
	static public var _BEFORE_SEQ : Dynamic;
	static public var _IBM_DOUBLE_DOUBLE_BE : Dynamic;
	static public var _IBM_DOUBLE_DOUBLE_LE : Dynamic;
	static public var _IEEE_DOUBLE_BE : Dynamic;
	static public var _IEEE_DOUBLE_LE : Dynamic;
	static public var _IEEE_QUAD_PREC_BE : Dynamic;
	static public var _IEEE_QUAD_PREC_LE : Dynamic;
	static public var _INTEL_EXTENDED_12B : Dynamic;
	static public var _INTEL_EXTENDED_16B : Dynamic;
	static public var _MOTOROLA_EXTENDED_12B : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Emits a MismatchCAPIWarning if the C API version needs updating.
	**/
	static public function check_api_version(apiversion:Dynamic, codegen_dir:Dynamic):Dynamic;
	/**
		On our arm CI, this fails with an internal compilation error
		
		The failure looks like the following, and can be reproduced on ARM64 GCC 5.4:
		
		    <source>: In function 'right_shift':
		    <source>:4:20: internal compiler error: in expand_shift_1, at expmed.c:2349
		           ip1[i] = ip1[i] >> in2;
		                  ^
		    Please submit a full bug report,
		    with preprocessed source if appropriate.
		    See <http://gcc.gnu.org/bugs.html> for instructions.
		    Compiler returned: 1
		
		This function returns True if this compiler bug is present, and we need to
		turn off optimization for the function
	**/
	static public function check_for_right_shift_internal_compiler_error(cmd:Dynamic):Dynamic;
	static public function check_long_double_representation(cmd:Dynamic):Dynamic;
	static public function fname2def(name:Dynamic):Dynamic;
	/**
		Return current C API checksum and the recorded checksum.
		
		Return current C API checksum and the recorded checksum for the given
		version of the C API version.
	**/
	static public function get_api_versions(apiversion:Dynamic, codegen_dir:Dynamic):Dynamic;
	/**
		Return True if a released version of numpy is detected.
	**/
	static public function is_released(config:Dynamic):Dynamic;
	/**
		Given a binary dump as given by GNU od -b, look for long double
		representation.
	**/
	static public function long_double_representation(lines:Dynamic):Dynamic;
	/**
		Return true when using mingw32 environment.
		    
	**/
	static public function mingw32():Dynamic;
	/**
		Python implementation of the od UNIX utility (od -b, more exactly).
		
		Parameters
		----------
		filename : str
		    name of the file to get the dump from.
		
		Returns
		-------
		out : seq
		    list of lines of od output
		
		Notes
		-----
		We only implement enough to get the necessary information for long double
		representation, this is not intended as a compatible replacement for od.
	**/
	static public function pyod(filename:Dynamic):Dynamic;
	static public function sym2def(symbol:Dynamic):Dynamic;
	static public function type2def(symbol:Dynamic):Dynamic;
}