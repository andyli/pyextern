/* This file is generated, do not edit! */
package tensorflow.python.framework._function;
@:pythonImport("tensorflow.python.framework.function", "Defun") extern class Defun {
	/**
		Call self as a function.
	**/
	public function __call__(func:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create a `Defun` decorator.
		
		Args:
		  *input_types: A list of `tf.DType`
		  **kwargs: Optional keyword arguments, including
		     func_name - (optional).  A python string, the name to use to
		       declare this `Function` in the graph.
		
		     grad_func - (optional).  A function implementing the gradient
		       of the function-to-register.  This is either a
		       `_DefinedFunction` or a `Declare` object. The gradient
		       function must satisify the criterion defined in
		       function.proto:GradientDef.
		
		     python_grad_func - (optional).  A function implementing the
		       gradient of the function python-side. This function must
		       take the current op and the gradients w.r.t. its outputs,
		       and return the gradients w.r.t. the inputs. That is it must
		       implement the interface expected by `tf.RegisterGradient`).
		       This will be called by tf.gradients to add the gradient ops
		       to the graph. At most one of grad_func and python_grad_func
		       can be specified.
		
		     out_names = (optional). A list of strings, one per output
		       tensor.
		
		     shape_func - (optional). A function taking the op and returning a list
		       of static shapes to set for the function's outputs.
	**/
	@:native("__init__")
	public function ___init__(?input_types:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a `Defun` decorator.
		
		Args:
		  *input_types: A list of `tf.DType`
		  **kwargs: Optional keyword arguments, including
		     func_name - (optional).  A python string, the name to use to
		       declare this `Function` in the graph.
		
		     grad_func - (optional).  A function implementing the gradient
		       of the function-to-register.  This is either a
		       `_DefinedFunction` or a `Declare` object. The gradient
		       function must satisify the criterion defined in
		       function.proto:GradientDef.
		
		     python_grad_func - (optional).  A function implementing the
		       gradient of the function python-side. This function must
		       take the current op and the gradients w.r.t. its outputs,
		       and return the gradients w.r.t. the inputs. That is it must
		       implement the interface expected by `tf.RegisterGradient`).
		       This will be called by tf.gradients to add the gradient ops
		       to the graph. At most one of grad_func and python_grad_func
		       can be specified.
		
		     out_names = (optional). A list of strings, one per output
		       tensor.
		
		     shape_func - (optional). A function taking the op and returning a list
		       of static shapes to set for the function's outputs.
	**/
	public function new(?input_types:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}