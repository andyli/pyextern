/* This file is generated, do not edit! */
package torch.distributions.transforms;
@:pythonImport("torch.distributions.transforms", "StackTransform") extern class StackTransform {
	static public var __annotations__ : Dynamic;
	/**
		Computes the transform `x => y`.
	**/
	public function __call__(x:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(tseq:Dynamic, ?dim:Dynamic, ?cache_size:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(tseq:Dynamic, ?dim:Dynamic, ?cache_size:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Abstract method to compute forward transformation.
	**/
	public function _call(x:Dynamic):Dynamic;
	/**
		Inverts the transform `y => x`.
	**/
	public function _inv_call(y:Dynamic):Dynamic;
	/**
		Abstract method to compute inverse transformation.
	**/
	public function _inverse(y:Dynamic):Dynamic;
	public function _slice(z:Dynamic):Dynamic;
	/**
		bool(x) -> bool
		
		Returns True when the argument x is true, False otherwise.
		The builtins True and False are the only two instances of the class bool.
		The class bool is a subclass of the class int, and cannot be subclassed.
	**/
	public var bijective : Dynamic;
	static public function codomain(fn:Dynamic):Dynamic;
	static public function domain(fn:Dynamic):Dynamic;
	public var event_dim : Dynamic;
	/**
		Infers the shape of the forward computation, given the input shape.
		Defaults to preserving shape.
	**/
	public function forward_shape(shape:Dynamic):Dynamic;
	/**
		Returns the inverse :class:`Transform` of this transform.
		This should satisfy ``t.inv.inv is t``.
	**/
	public var inv : Dynamic;
	/**
		Infers the shapes of the inverse computation, given the output shape.
		Defaults to preserving shape.
	**/
	public function inverse_shape(shape:Dynamic):Dynamic;
	/**
		Computes the log det jacobian `log |dy/dx|` given input and output.
	**/
	public function log_abs_det_jacobian(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Returns the sign of the determinant of the Jacobian, if applicable.
		In general this only makes sense for bijective transforms.
	**/
	public var sign : Dynamic;
	public function with_cache(?cache_size:Dynamic):Dynamic;
}