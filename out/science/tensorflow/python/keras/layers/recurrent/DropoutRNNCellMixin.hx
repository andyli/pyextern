/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.recurrent;
@:pythonImport("tensorflow.python.keras.layers.recurrent", "DropoutRNNCellMixin") extern class DropoutRNNCellMixin {
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
	public function __eq__(value:Dynamic):Dynamic;
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
	public function __getstate__():Dynamic;
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
	public function __setstate__(state:Dynamic):Dynamic;
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
	public function _create_dropout_mask(inputs:Dynamic, training:Dynamic, ?count:Dynamic):Dynamic;
	/**
		Create the cache for dropout and recurrent dropout mask.
		
		Note that the following two masks will be used in "graph function" mode,
		e.g. these masks are symbolic tensors. In eager mode, the `eager_*_mask`
		tensors will be generated differently than in the "graph function" case,
		and they will be cached.
		
		Also note that in graph mode, we still cache those masks only because the
		RNN could be created with `unroll=True`. In that case, the `cell.call()`
		function will be invoked multiple times, and we want to ensure same mask
		is used every time.
		
		Also the caches are created without tracking. Since they are not picklable
		by python when deepcopy, we don't want `layer._obj_reference_counts_dict`
		to track it by default.
	**/
	public function _create_non_trackable_mask_cache():Dynamic;
	public function _create_recurrent_dropout_mask(inputs:Dynamic, training:Dynamic, ?count:Dynamic):Dynamic;
	static public var _tf_docs_do_not_document : Dynamic;
	/**
		Get the dropout mask for RNN cell's input.
		
		It will create mask based on context if there isn't any existing cached
		mask. If a new mask is generated, it will update the cache in the cell.
		
		Args:
		  inputs: The input tensor whose shape will be used to generate dropout
		    mask.
		  training: Boolean tensor, whether its in training mode, dropout will be
		    ignored in non-training mode.
		  count: Int, how many dropout mask will be generated. It is useful for cell
		    that has internal weights fused together.
		Returns:
		  List of mask tensor, generated or cached mask based on context.
	**/
	public function get_dropout_mask_for_cell(inputs:Dynamic, training:Dynamic, ?count:Dynamic):Dynamic;
	/**
		Get the recurrent dropout mask for RNN cell.
		
		It will create mask based on context if there isn't any existing cached
		mask. If a new mask is generated, it will update the cache in the cell.
		
		Args:
		  inputs: The input tensor whose shape will be used to generate dropout
		    mask.
		  training: Boolean tensor, whether its in training mode, dropout will be
		    ignored in non-training mode.
		  count: Int, how many dropout mask will be generated. It is useful for cell
		    that has internal weights fused together.
		Returns:
		  List of mask tensor, generated or cached mask based on context.
	**/
	public function get_recurrent_dropout_mask_for_cell(inputs:Dynamic, training:Dynamic, ?count:Dynamic):Dynamic;
	/**
		Reset the cached dropout masks if any.
		
		This is important for the RNN layer to invoke this in it `call()` method so
		that the cached mask is cleared before calling the `cell.call()`. The mask
		should be cached across the timestep within the same batch, but shouldn't
		be cached between batches. Otherwise it will introduce unreasonable bias
		against certain index of data within the batch.
	**/
	public function reset_dropout_mask():Dynamic;
	/**
		Reset the cached recurrent dropout masks if any.
		
		This is important for the RNN layer to invoke this in it call() method so
		that the cached mask is cleared before calling the cell.call(). The mask
		should be cached across the timestep within the same batch, but shouldn't
		be cached between batches. Otherwise it will introduce unreasonable bias
		against certain index of data within the batch.
	**/
	public function reset_recurrent_dropout_mask():Dynamic;
}