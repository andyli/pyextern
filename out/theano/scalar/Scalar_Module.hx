/* This file is generated, do not edit! */
package theano.scalar;
@:pythonImport("theano.scalar") extern class Scalar_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function abs_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public function add(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var all_types : Dynamic;
	static public function and_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function angle(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arccos(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arccosh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arcsin(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arcsinh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arctan(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arctan2(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arctanh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		For for theano.scalar.Scalar and TensorVariable.
	**/
	static public function as_common_dtype(?vars:python.VarArgs<Dynamic>):Dynamic;
	static public function as_scalar(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function autocast_float(x:Dynamic):Dynamic;
	static public function autocast_int(x:Dynamic):Dynamic;
	static public function bool(?name:Dynamic):Dynamic;
	/**
		Symbolically cast `x` to a Scalar of given `dtype`.
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic):Dynamic;
	static public function ceil(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function chi2sf(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function clip(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function complex(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function complex128(?name:Dynamic):Dynamic;
	static public function complex64(?name:Dynamic):Dynamic;
	static public function complex_from_polar(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var complex_types : Dynamic;
	static public function complexs(names:Dynamic):Dynamic;
	static public function complexs128(names:Dynamic):Dynamic;
	static public function complexs64(names:Dynamic):Dynamic;
	static public var composite_f32 : Dynamic;
	static public var config : Dynamic;
	static public function conj(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function constant(x:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var continuous_types : Dynamic;
	/**
		Convert the input to a properly typed numpy value according to the
		current casting policy.  Work with scalars and tensors.
	**/
	static public function convert(x:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function convert_to_bool(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_complex128(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_complex64(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_float16(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_float32(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_float64(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_int16(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_int32(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_int64(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_int8(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_uint16(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_uint32(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_uint64(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convert_to_uint8(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	static public function cos(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cosh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	static public function deg2rad(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var discrete_types : Dynamic;
	/**
		Proxy for either true_div or int_div, depending on types of x, y.
	**/
	static public function div_proxy(x:Dynamic, y:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function eq(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erf(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erfc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erfcinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erfcx(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erfinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function exp(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function exp2(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function expm1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function float16(?name:Dynamic):Dynamic;
	static public function float32(?name:Dynamic):Dynamic;
	static public function float64(?name:Dynamic):Dynamic;
	static public function float_out(?types:python.VarArgs<Dynamic>):Dynamic;
	static public function float_out_nocomplex(?types:python.VarArgs<Dynamic>):Dynamic;
	static public var float_types : Dynamic;
	static public function floats(names:Dynamic):Dynamic;
	static public function floor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function floor_div(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gamma(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gammainc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gammaincc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gammal(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gammaln(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gammau(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ge(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a Scalar(dtype) object.
		
		This caches objects to save allocation and run time.
	**/
	static public function get_scalar_type(dtype:Dynamic):Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (NotImplementedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` has not been implemented. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not implemented.
	**/
	static public function grad_not_implemented(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (GradUndefinedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` is mathematically undefined. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not defined.
	**/
	static public function grad_undefined(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	static public function gt(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function handle_cast(node:Dynamic, mapping:Dynamic):Dynamic;
	static public function handle_composite(node:Dynamic, mapping:Dynamic):Dynamic;
	static public function i0(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function i1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function identity(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function imag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var imported_scipy_special : Dynamic;
	static public function inclosedrange(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function inopenrange(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function int16(?name:Dynamic):Dynamic;
	static public function int32(?name:Dynamic):Dynamic;
	static public function int64(?name:Dynamic):Dynamic;
	static public function int8(?name:Dynamic):Dynamic;
	static public function int_div(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return 'int' or 'true' depending on the type of division used for x / y.
		
		Parameters
		----------
		x_discrete : bool
		    True if `x` is discrete ([unsigned] integer).
		y_discrete : bool
		    True if `y` is discrete ([unsigned] integer).
		
		Returns
		-------
		str
		    'int' if `x / y` should be an integer division, or `true` if it
		    should be a true division.
		
		Raises
		------
		IntegerDivisionError
		    If both `x_discrete` and `y_discrete` are True and `config.int_division`
		    is set to 'raise'.
		
		Notes
		-----
		This function is used by both scalar/basic.py and tensor/basic.py.
	**/
	static public function int_or_true_div(x_discrete:Dynamic, y_discrete:Dynamic):Dynamic;
	static public function int_out(?types:python.VarArgs<Dynamic>):Dynamic;
	static public function int_out_nocomplex(?types:python.VarArgs<Dynamic>):Dynamic;
	static public var int_types : Dynamic;
	static public var integer_types : Dynamic;
	static public function ints(names:Dynamic):Dynamic;
	static public function inv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function invert(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isinf(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isnan(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function iv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function j0(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function j1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function jv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function le(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function log(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function log10(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function log1p(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function log2(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lt(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function maximum(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minimum(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mod(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mod_check(x:Dynamic, y:Dynamic):Dynamic;
	static public function mul(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function neg(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function neq(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function or_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pow(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pprint(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function psi(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rad2deg(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function real(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function real_out(type:Dynamic):Dynamic;
	static public function round_half_away_from_zero(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function round_half_away_from_zero_(a:Dynamic):Dynamic;
	static public function round_half_away_from_zero_vec(a:Dynamic):Dynamic;
	/**
		round_half_away_from_zero_vec32
	**/
	static public function round_half_away_from_zero_vec32(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		round_half_away_from_zero_vec64
	**/
	static public function round_half_away_from_zero_vec64(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function round_half_to_even(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function same_out(type:Dynamic):Dynamic;
	static public function same_out_float_only(type:Dynamic):Dynamic;
	static public function same_out_min8(type:Dynamic):Dynamic;
	static public function same_out_nobool(type:Dynamic):Dynamic;
	static public function same_out_nocomplex(type:Dynamic):Dynamic;
	static public function second(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sgn(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sin(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sinh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sqr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sqrt(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sub(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	@:native("switch")
	static public function _switch(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tan(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tanh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tri_gamma(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function true_div(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function trunc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function uint16(?name:Dynamic):Dynamic;
	static public function uint32(?name:Dynamic):Dynamic;
	static public function uint64(?name:Dynamic):Dynamic;
	static public function uint8(?name:Dynamic):Dynamic;
	static public var uint_types : Dynamic;
	static public function upcast(dtype:Dynamic, ?dtypes:python.VarArgs<Dynamic>):Dynamic;
	static public function upcast_out(?types:python.VarArgs<Dynamic>):Dynamic;
	static public function upcast_out_min8(?types:python.VarArgs<Dynamic>):Dynamic;
	static public function upcast_out_no_complex(?types:python.VarArgs<Dynamic>):Dynamic;
	static public function upcast_out_nobool(?types:python.VarArgs<Dynamic>):Dynamic;
	/**
		Upgrade any int types to float32 or float64 to avoid losing precision.
	**/
	static public function upgrade_to_float(?types:python.VarArgs<Dynamic>):Dynamic;
	/**
		Upgrade any int and float32 to float64 to do as SciPy.
	**/
	static public function upgrade_to_float64(?types:python.VarArgs<Dynamic>):Dynamic;
	/**
		Don't accept complex, otherwise call upgrade_to_float().
	**/
	static public function upgrade_to_float_no_complex(?types:python.VarArgs<Dynamic>):Dynamic;
	static public function xor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}