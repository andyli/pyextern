/* This file is generated, do not edit! */
package tensorflow.python.estimator.export.export_output;
@:pythonImport("tensorflow.python.estimator.export.export_output", "ClassificationOutput") extern class ClassificationOutput {
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
		Constructor for `ClassifyOutput`.
		
		Args:
		  scores: A float `Tensor` giving scores (sometimes but not always
		      interpretable as probabilities) for each class.  May be `None`, but
		      only if `classes` is set.  Interpretation varies-- see class doc.
		  classes: A string `Tensor` giving predicted class labels.  May be `None`,
		      but only if `scores` is set.  Interpretation varies-- see class doc.
		
		Raises:
		  ValueError: if neither classes nor scores is set, or one of them is not a
		      `Tensor` with the correct dtype.
	**/
	@:native("__init__")
	public function ___init__(?scores:Dynamic, ?classes:Dynamic):Dynamic;
	/**
		Constructor for `ClassifyOutput`.
		
		Args:
		  scores: A float `Tensor` giving scores (sometimes but not always
		      interpretable as probabilities) for each class.  May be `None`, but
		      only if `classes` is set.  Interpretation varies-- see class doc.
		  classes: A string `Tensor` giving predicted class labels.  May be `None`,
		      but only if `scores` is set.  Interpretation varies-- see class doc.
		
		Raises:
		  ValueError: if neither classes nor scores is set, or one of them is not a
		      `Tensor` with the correct dtype.
	**/
	public function new(?scores:Dynamic, ?classes:Dynamic):Void;
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
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Generate a SignatureDef proto for inclusion in a MetaGraphDef.
		
		The SignatureDef will specify outputs as described in this ExportOutput,
		and will use the provided receiver_tensors as inputs.
		
		Args:
		  receiver_tensors: a `Tensor`, or a dict of string to `Tensor`, specifying
		    input nodes that will be fed.
	**/
	public function as_signature_def(receiver_tensors:Dynamic):Dynamic;
	public var classes : Dynamic;
	public var scores : Dynamic;
}