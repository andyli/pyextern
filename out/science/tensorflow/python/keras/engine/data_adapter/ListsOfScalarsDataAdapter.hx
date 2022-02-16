/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.data_adapter;
@:pythonImport("tensorflow.python.keras.engine.data_adapter", "ListsOfScalarsDataAdapter") extern class ListsOfScalarsDataAdapter {
	static public var __abstractmethods__ : Dynamic;
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create a DataAdapter based on data inputs.
		
		The caller must make sure to call `can_handle()` first before invoking this
		method. Provide unsupported data type will result into unexpected behavior.
		
		Args:
		  x: input features.
		  y: target labels. Note that y could be None in the case of prediction.
		  **kwargs: Other keyword arguments for DataAdapter during the construction
		    of the tf.dataset.Dataset. For example:
		    - Numpy data might have `sample_weights` which will be used for
		      weighting the loss function during training.
		    - Numpy data might need to have `batch_size` parameter when constructing
		      the dataset and iterator.
		    - Certain input might need to be distribution strategy aware. When
		      `distribution_strategy` is passed, the created dataset need to respect
		      the strategy.
		    DataAdapter might choose to ignore any keyword argument if it doesn't
		    use it, or raise exception if any required argument is not provide.
	**/
	@:native("__init__")
	public function ___init__(x:Dynamic, ?y:Dynamic, ?sample_weights:Dynamic, ?sample_weight_modes:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a DataAdapter based on data inputs.
		
		The caller must make sure to call `can_handle()` first before invoking this
		method. Provide unsupported data type will result into unexpected behavior.
		
		Args:
		  x: input features.
		  y: target labels. Note that y could be None in the case of prediction.
		  **kwargs: Other keyword arguments for DataAdapter during the construction
		    of the tf.dataset.Dataset. For example:
		    - Numpy data might have `sample_weights` which will be used for
		      weighting the loss function during training.
		    - Numpy data might need to have `batch_size` parameter when constructing
		      the dataset and iterator.
		    - Certain input might need to be distribution strategy aware. When
		      `distribution_strategy` is passed, the created dataset need to respect
		      the strategy.
		    DataAdapter might choose to ignore any keyword argument if it doesn't
		    use it, or raise exception if any required argument is not provide.
	**/
	public function new(x:Dynamic, ?y:Dynamic, ?sample_weights:Dynamic, ?sample_weight_modes:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _abc_impl : Dynamic;
	static public function _is_list_of_scalars(inp:Dynamic):Dynamic;
	/**
		Return the batch size of the dataset created.
		
		For certain type of the data input, the batch size is known, and even
		required, like numpy array. Where as for dataset, the batch is unknown
		unless we take a peek.
		
		Returns:
		  int, the batch size of the dataset, or None if it is unknown.
	**/
	public function batch_size():Dynamic;
	/**
		Whether the current DataAdapter could handle the input x and y.
		
		Structure wise, x and y can be single object, or list of objects if there
		multiple input/output, or dictionary of objects when the intput/output are
		named.
		
		Args:
		  x: input features.
		  y: target labels. Note that y could be None in the case of prediction.
		
		Returns:
		  boolean
	**/
	static public function can_handle(x:Dynamic, ?y:Dynamic):Dynamic;
	/**
		Get a dataset instance for the current DataAdapter.
		
		Note that the dataset returned does not repeat for epoch, so caller might
		need to create new iterator for the same dataset at the beginning of the
		epoch. This behavior might change in future.
		
		Returns:
		  An tf.dataset.Dataset. Caller might use the dataset in different
		  context, eg iter(dataset) in eager to get the value directly, or in graph
		  mode, provide the iterator tensor to Keras model function.
	**/
	public function get_dataset():Dynamic;
	/**
		Returns number of samples in the data, or `None`.
	**/
	public function get_samples():Dynamic;
	/**
		Return the size (number of batches) for the dataset created.
		
		For certain type of the data input, the number of batches is known, eg for
		Numpy data, the size is same as (number_of_element / batch_size). Whereas
		for dataset or python generator, the size is unknown since it may or may not
		have a end state.
		
		Returns:
		  int, the number of batches for the dataset, or None if it is unknown. The
		  caller could use this to control the loop of training, show progress bar,
		  or handle unexpected StopIteration error.
	**/
	public function get_size():Dynamic;
	/**
		Whether the dataset has partial batch at the end.
	**/
	public function has_partial_batch():Dynamic;
	/**
		A hook called after each epoch.
	**/
	public function on_epoch_end():Dynamic;
	/**
		The size of the final partial batch for dataset.
		
		Will return None if has_partial_batch is False or batch_size is None.
	**/
	public function partial_batch_size():Dynamic;
	/**
		Return a representative size for batches in the dataset.
		
		This is not guaranteed to be the batch size for all batches in the
		dataset. It just needs to be a rough approximation for batch sizes in
		the dataset.
		
		Returns:
		  int, a representative size for batches found in the dataset,
		  or None if it is unknown.
	**/
	public function representative_batch_size():Dynamic;
	/**
		Returns whether a new iterator should be created every epoch.
	**/
	public function should_recreate_iterator():Dynamic;
}