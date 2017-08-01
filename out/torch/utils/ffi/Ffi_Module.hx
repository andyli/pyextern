/* This file is generated, do not edit! */
package torch.utils.ffi;
@:pythonImport("torch.utils.ffi") extern class Ffi_Module {
	static public var PY_MODULE_TEMPLATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return running totals
	**/
	static public function _accumulate(iterable:Dynamic, ?fn:Dynamic):Dynamic;
	static public function _build_extension(ffi:Dynamic, cffi_wrapper_name:Dynamic, target_dir:Dynamic, verbose:Dynamic):Dynamic;
	static public var _cffi_to_torch : Dynamic;
	static public function _create_module_dir(base_path:Dynamic, fullname:Dynamic):Dynamic;
	static public function _generate_typedefs():Dynamic;
	static public function _make_python_wrapper(name:Dynamic, cffi_wrapper_name:Dynamic, target_dir:Dynamic):Dynamic;
	static public function _setup_wrapper(with_cuda:Dynamic):Dynamic;
	static public var _torch_to_cffi : Dynamic;
	static public var _typedefs : Dynamic;
	static public function _wrap_function(_function:Dynamic, ffi:Dynamic):Dynamic;
	/**
		Creates and configures a cffi.FFI object, that builds PyTorch extension.
		
		Arguments:
		    name (str): package name. Can be a nested module e.g. ``.ext.my_lib``.
		    headers (str or List[str]): list of headers, that contain only exported
		        functions
		    sources (List[str]): list of sources to compile.
		    verbose (bool, optional): if set to ``False``, no output will be printed
		        (default: True).
		    with_cuda (bool, optional): set to ``True`` to compile with CUDA headers
		        (default: False)
		    package (bool, optional): set to ``True`` to build in package mode (for modules
		        meant to be installed as pip packages) (default: False).
		    relative_to (str, optional): path of the build file. Required when
		        ``package is True``. It's best to use ``__file__`` for this argument.
		    kwargs: additional arguments that are passed to ffi to declare the
		        extension. See `Extension API reference`_ for details.
		
		.. _`Extension API reference`: https://docs.python.org/3/distutils/apiref.html#distutils.core.Extension
	**/
	static public function create_extension(name:Dynamic, headers:Dynamic, sources:Dynamic, ?verbose:Dynamic, ?with_cuda:Dynamic, ?_package:Dynamic, ?relative_to:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
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