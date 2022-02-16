/* This file is generated, do not edit! */
package pandas.core.ops.common;
@:pythonImport("pandas.core.ops.common") extern class Common_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var F : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Try to find a name to attach to the result of an operation between
		a and b.  If only one of these has a `name` attribute, return that
		name.  Otherwise return a consensus name if they match or None if
		they have different names.
		
		Parameters
		----------
		a : object
		b : object
		
		Returns
		-------
		name : str or None
		
		See Also
		--------
		pandas.core.common.consensus_name_attr
	**/
	static public function _maybe_match_name(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Boilerplate for pandas conventions in arithmetic and comparison methods.
		
		Ensure method returns NotImplemented when operating against "senior"
		classes.  Ensure zero-dimensional ndarrays are always unpacked.
		
		Parameters
		----------
		method : binary method
		name : str
		
		Returns
		-------
		method
	**/
	static public function _unpack_zerodim_and_defer(method:Dynamic, name:Dynamic):Dynamic;
	/**
		Find the appropriate name to pin to an operation result.  This result
		should always be either an Index or a Series.
		
		Parameters
		----------
		left : {Series, Index}
		right : object
		
		Returns
		-------
		name : object
		    Usually a string
	**/
	static public function get_op_result_name(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Check if two scalars are both NA of matching types.
		
		Parameters
		----------
		left : Any
		right : Any
		nan_matches_none : bool, default False
		    For backwards compatibility, consider NaN as matching None.
		
		Returns
		-------
		bool
	**/
	static public function is_matching_na(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		If the value is a zerodim array, return the item it contains.
		
		Parameters
		----------
		val : object
		
		Returns
		-------
		object
		
		Examples
		--------
		>>> item_from_zerodim(1)
		1
		>>> item_from_zerodim('foobar')
		'foobar'
		>>> item_from_zerodim(np.array(1))
		1
		>>> item_from_zerodim(np.array([1]))
		array([1])
	**/
	static public function item_from_zerodim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Boilerplate for pandas conventions in arithmetic and comparison methods.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		decorator
	**/
	static public function unpack_zerodim_and_defer(name:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}