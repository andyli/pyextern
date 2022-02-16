/* This file is generated, do not edit! */
package tensorflow.python.ops.numpy_ops.np_utils;
@:pythonImport("tensorflow.python.ops.numpy_ops.np_utils") extern class Np_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_blank_line(s:Dynamic):Dynamic;
	/**
		Appends the numpy docstring to `doc`, according to `set_np_doc_form`.
		
		See `set_np_doc_form` for how it controls the form of the numpy docstring.
		
		Args:
		  doc: the docstring to be appended to.
		  np_fun_name: the name of the numpy function.
		  np_f: (optional) the numpy function.
		  link: (optional) which link to use. See `np_doc` for details.
		
		Returns:
		  `doc` with numpy docstring appended.
	**/
	static public function _add_np_doc(doc:Dynamic, np_fun_name:Dynamic, np_f:Dynamic, link:Dynamic):Dynamic;
	static public function _canonicalize_axes(axes:Dynamic, rank:Dynamic):Dynamic;
	static public function _canonicalize_axis(axis:Dynamic, rank:Dynamic):Dynamic;
	static public function _has_docstring(f:Dynamic):Dynamic;
	static public var _is_check_link : Dynamic;
	static public function _is_compatible_param_kind(a:Dynamic, b:Dynamic):Dynamic;
	static public var _is_sig_mismatch_an_error : Dynamic;
	/**
		Returns a numpy type if available from x. Skips if x is numpy.ndarray.
	**/
	static public function _maybe_get_dtype(x:Dynamic):Dynamic;
	static public function _maybe_static(x:Dynamic):Dynamic;
	static public var _np_doc_form : Dynamic;
	/**
		Helper to get docs.
	**/
	static public function _np_doc_helper(f:Dynamic, np_f:Dynamic, ?np_fun_name:Dynamic, ?unsupported_params:Dynamic, ?link:Dynamic):Dynamic;
	/**
		An enhanced inspect.signature that can handle numpy.ufunc.
	**/
	static public function _np_signature(f:Dynamic):Dynamic;
	/**
		Mutually propagates information between `np_fun_name` and `np_fun`.
		
		If one is None and the other is not, we'll try to make the former not None in
		a best effort.
		
		Args:
		  np_fun_name: name for the np_fun symbol. At least one of np_fun or
		    np_fun_name shoud be set.
		  np_fun: the numpy function whose docstring will be used.
		
		Returns:
		  Processed `np_fun_name` and `np_fun`.
	**/
	static public function _prepare_np_fun_name_and_fun(np_fun_name:Dynamic, np_fun:Dynamic):Dynamic;
	/**
		A specialization of result_type for 2 arguments for performance reasons.
	**/
	static public function _result_type_binary(t1:Dynamic, t2:Dynamic):Dynamic;
	static public function _supports_signature():Dynamic;
	/**
		Converts a native python or TF DType to numpy type.
		
		Args:
		  dtype: Could be a python type, a numpy type or a TF DType.
		
		Returns:
		  A NumPy `dtype`.
	**/
	static public function _to_numpy_type(dtype:Dynamic):Dynamic;
	/**
		Converts a native python or numpy type to TF DType.
		
		Args:
		  dtype: Could be a python type, a numpy type or a TF DType.
		
		Returns:
		  A tensorflow `DType`.
	**/
	static public function _to_tf_type(dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		A version of tf.add that eagerly evaluates if possible.
	**/
	static public function add(a:Dynamic, b:Dynamic):Dynamic;
	/**
		A version of tf.cond that tries to evaluate the condition.
	**/
	static public function cond(pred:Dynamic, true_fn:Dynamic, false_fn:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		TensorFlow variant of NumPy's `finfo`.
		
		Note that currently it just forwards to the numpy namesake, while
		  tensorflow and numpy dtypes may have different properties.
		
		See the NumPy documentation for [`numpy.finfo`](https://numpy.org/doc/1.16/reference/generated/numpy.finfo.html).
	**/
	static public function finfo(dtype:Dynamic):Dynamic;
	/**
		Generates link from numpy function name.
		
		Args:
		  flag: the flag to control link form. See `set_np_doc_form`.
		  np_fun_name: the numpy function name.
		
		Returns:
		  A string.
	**/
	static public function generate_link(flag:Dynamic, np_fun_name:Dynamic):Dynamic;
	/**
		Gets the form of the original numpy docstrings.
		
		Returns:
		  See `set_np_doc_form` for the list of valid values.
	**/
	static public function get_np_doc_form():Dynamic;
	/**
		A version of tf.get_static_value that returns None on float dtypes.
		
		It returns None on float dtypes in order to avoid breaking gradients.
		
		Args:
		  x: a tensor.
		
		Returns:
		  Same as `tf.get_static_value`, except that it returns None when `x` has a
		  float dtype.
	**/
	static public function get_static_value(x:Dynamic):Dynamic;
	/**
		A version of __getitem__ that eagerly evaluates if possible.
	**/
	static public function getitem(a:Dynamic, slice_spec:Dynamic):Dynamic;
	/**
		A version of tf.greater that eagerly evaluates if possible.
	**/
	static public function greater(a:Dynamic, b:Dynamic):Dynamic;
	/**
		A version of tf.greater_equal that eagerly evaluates if possible.
	**/
	static public function greater_equal(a:Dynamic, b:Dynamic):Dynamic;
	static public function is_check_link():Dynamic;
	static public function is_sig_mismatch_an_error():Dynamic;
	/**
		Returns whether `val` is a scalar value or scalar Tensor.
	**/
	static public function isscalar(val:Dynamic):Dynamic;
	/**
		A version of tf.less_equal that eagerly evaluates if possible.
	**/
	static public function less_equal(a:Dynamic, b:Dynamic):Dynamic;
	/**
		A version of tf.logical_and that eagerly evaluates if possible.
	**/
	static public function logical_and(a:Dynamic, b:Dynamic):Dynamic;
	/**
		A version of tf.logical_or that eagerly evaluates if possible.
	**/
	static public function logical_or(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Attachs numpy docstring to a function.
		
		Args:
		  np_fun_name: name for the np_fun symbol. At least one of np_fun or
		    np_fun_name shoud be set.
		  np_fun: (optional) the numpy function whose docstring will be used.
		  export: whether to export this symbol under module
		    `tf.experimental.numpy`. Note that if `export` is `True`, `np_fun` must be
		    a function directly under the `numpy` module, not under any submodule of
		    `numpy` (e.g. `numpy.random`).
		  unsupported_params: (optional) the list of parameters not supported
		    by tf.numpy.
		  link: (optional) which link to use. If `None`, a default link generated from
		    `np_fun_name` will be used. If an instance of `AliasOf`, `link.value` will
		    be used in place of `np_fun_name` for the link generation. If an instance
		    of `Link`, `link.value` will be used as the whole link. If an instance of
		    `NoLink`, no link will be added.
		
		Returns:
		  A function decorator that attaches the docstring from `np_fun` to the
		  decorated function.
	**/
	static public function np_doc(np_fun_name:Dynamic, ?np_fun:Dynamic, ?export:Dynamic, ?unsupported_params:Dynamic, ?link:Dynamic):Dynamic;
	/**
		Attachs numpy docstring to a function.
		
		This differs from np_doc in that it doesn't check for a match in signature.
		
		Args:
		  np_fun_name: name for the np_fun symbol. At least one of np_fun or
		    np_fun_name shoud be set.
		  np_fun: (optional) the numpy function whose docstring will be used.
		  export: whether to export this symbol under module
		    `tf.experimental.numpy`. Note that if `export` is `True`, `np_f` must be a
		    function directly under the `numpy` module, not under any submodule of
		    `numpy` (e.g. `numpy.random`).
		
		Returns:
		  A function decorator that attaches the docstring from `np_fun` to the
		  decorated function.
	**/
	static public function np_doc_only(np_fun_name:Dynamic, ?np_fun:Dynamic, ?export:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		TensorFlow variant of NumPy's `promote_types`.
		
		See the NumPy documentation for [`numpy.promote_types`](https://numpy.org/doc/1.16/reference/generated/numpy.promote_types.html).
	**/
	static public function promote_types(type1:Dynamic, type2:Dynamic):Dynamic;
	/**
		A version of tf.reduce_all that eagerly evaluates if possible.
	**/
	static public function reduce_all(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		A version of tf.reduce_any that eagerly evaluates if possible.
	**/
	static public function reduce_any(input_tensor:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `result_type`.
		
		See the NumPy documentation for [`numpy.result_type`](https://numpy.org/doc/1.16/reference/generated/numpy.result_type.html).
	**/
	static public function result_type(?arrays_and_dtypes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Find the result type from a single input and a dtype.
	**/
	static public function result_type_unary(a:Dynamic, dtype:Dynamic):Dynamic;
	static public function set_check_link(value:Dynamic):Dynamic;
	static public function set_is_sig_mismatch_an_error(value:Dynamic):Dynamic;
	/**
		Selects the form of the original numpy docstrings.
		
		This function sets a global variable that controls how a tf-numpy symbol's
		docstring should refer to the original numpy docstring. If `value` is
		`'inlined'`, the numpy docstring will be verbatim copied into the tf-numpy
		docstring. Otherwise, a link to the original numpy docstring will be
		added. Which numpy version the link points to depends on `value`:
		* `'stable'`: the current stable version;
		* `'dev'`: the current development version;
		* pattern `\d+(\.\d+(\.\d+)?)?`: `value` will be treated as a version number,
		  e.g. '1.16'.
		
		Args:
		  value: the value to set the global variable to.
	**/
	static public function set_np_doc_form(value:Dynamic):Dynamic;
	/**
		A version of tf.subtract that eagerly evaluates if possible.
	**/
	static public function subtract(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Broadcast tensors.
		
		Args:
		  *args: a list of tensors whose shapes are broadcastable against each other.
		
		Returns:
		  Tensors broadcasted to the common shape.
	**/
	static public function tf_broadcast(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function tf_rank(t:Dynamic):Dynamic;
}