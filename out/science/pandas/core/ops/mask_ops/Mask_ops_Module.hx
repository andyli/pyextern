/* This file is generated, do not edit! */
package pandas.core.ops.mask_ops;
@:pythonImport("pandas.core.ops.mask_ops") extern class Mask_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Boolean ``and`` using Kleene logic.
		
		Values are ``NA`` for ``NA & NA`` or ``True & NA``.
		
		Parameters
		----------
		left, right : ndarray, NA, or bool
		    The values of the array.
		left_mask, right_mask : ndarray, optional
		    The masks. Only one of these may be None, which implies that
		    the associated `left` or `right` value is a scalar.
		
		Returns
		-------
		result, mask: ndarray[bool]
		    The result of the logical xor, and the new mask.
	**/
	static public function kleene_and(left:Dynamic, right:Dynamic, left_mask:Dynamic, right_mask:Dynamic):Dynamic;
	/**
		Boolean ``or`` using Kleene logic.
		
		Values are NA where we have ``NA | NA`` or ``NA | False``.
		``NA | True`` is considered True.
		
		Parameters
		----------
		left, right : ndarray, NA, or bool
		    The values of the array.
		left_mask, right_mask : ndarray, optional
		    The masks. Only one of these may be None, which implies that
		    the associated `left` or `right` value is a scalar.
		
		Returns
		-------
		result, mask: ndarray[bool]
		    The result of the logical or, and the new mask.
	**/
	static public function kleene_or(left:Dynamic, right:Dynamic, left_mask:Dynamic, right_mask:Dynamic):Dynamic;
	/**
		Boolean ``xor`` using Kleene logic.
		
		This is the same as ``or``, with the following adjustments
		
		* True, True -> False
		* True, NA   -> NA
		
		Parameters
		----------
		left, right : ndarray, NA, or bool
		    The values of the array.
		left_mask, right_mask : ndarray, optional
		    The masks. Only one of these may be None, which implies that
		    the associated `left` or `right` value is a scalar.
		
		Returns
		-------
		result, mask: ndarray[bool]
		    The result of the logical xor, and the new mask.
	**/
	static public function kleene_xor(left:Dynamic, right:Dynamic, left_mask:Dynamic, right_mask:Dynamic):Dynamic;
	static public function raise_for_nan(value:Dynamic, method:Dynamic):Dynamic;
}