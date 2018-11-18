/* This file is generated, do not edit! */
package theano.tensor.opt;
@:pythonImport("theano.tensor.opt", "ShapeFeature") extern class ShapeFeature {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Return a list of shape tuple or None for the outputs of node.
		
		This function is used for Ops that don't implement infer_shape.
		Ops that do implement infer_shape should use the i_shapes parameter,
		but this default implementation ignores it.
	**/
	public function default_infer_shape(node:Dynamic, i_shapes:Dynamic):Dynamic;
	public function get_node_infer_shape(node:Dynamic):Dynamic;
	/**
		Optimization can call this to get the current shape_i
		
		It is better to call this then use directly shape_of[var][idx]
		as this method should update shape_of if needed.
		
		TODO: Up to now, we don't update it in all cases. Update in all cases.
	**/
	public function get_shape(_var:Dynamic, idx:Dynamic):Dynamic;
	/**
		Register r's shape in the shape_of dictionary.
	**/
	public function init_r(r:Dynamic):Dynamic;
	public function make_vector_shape(r:Dynamic):Dynamic;
	public function on_attach(fgraph:Dynamic):Dynamic;
	public function on_change_input(fgraph:Dynamic, node:Dynamic, i:Dynamic, r:Dynamic, new_r:Dynamic, reason:Dynamic):Dynamic;
	public function on_detach(fgraph:Dynamic):Dynamic;
	public function on_import(fgraph:Dynamic, node:Dynamic, reason:Dynamic):Dynamic;
	/**
		Return True if we are able to assert that x and y have the
		same shape.
		
		dim_x and dim_y are optional. If used, they should be an index
		to compare only 1 dimension of x and y.
	**/
	public function same_shape(x:Dynamic, y:Dynamic, ?dim_x:Dynamic, ?dim_y:Dynamic):Dynamic;
	/**
		Assign the shape `s` to previously un-shaped variable `r`.
		
		Parameters
		----------
		r : a variable
		s : None or a tuple of symbolic integers
		override : If False, it mean r is a new object in the fgraph.
		    If True, it mean r is already in the fgraph and we want to
		    override its shape.
	**/
	public function set_shape(r:Dynamic, s:Dynamic, ?_override:Dynamic):Dynamic;
	/**
		Replace element i of shape_of[r] by s_i
	**/
	public function set_shape_i(r:Dynamic, i:Dynamic, s_i:Dynamic):Dynamic;
	/**
		Return symbolic r.shape[i] for tensor variable r, int i.
	**/
	public function shape_ir(i:Dynamic, r:Dynamic):Dynamic;
	/**
		Return a tuple of symbolic shape vars for tensor variable r.
	**/
	public function shape_tuple(r:Dynamic):Dynamic;
	/**
		Return a symbolic integer scalar for the shape element s_i.
		
		The s_i argument was produced by the infer_shape() of an Op subclass.
		
		var: the variable that correspond to s_i. This is just for
		error reporting.
	**/
	public function unpack(s_i:Dynamic, _var:Dynamic):Dynamic;
	/**
		Replace shape of r by shape of other_r.
		
		If, on some dimensions, the shape of other_r is not informative,
		keep the shape of r on those dimensions.
	**/
	public function update_shape(r:Dynamic, other_r:Dynamic):Dynamic;
}