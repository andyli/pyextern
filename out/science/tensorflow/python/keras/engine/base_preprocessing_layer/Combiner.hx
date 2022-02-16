/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.base_preprocessing_layer;
@:pythonImport("tensorflow.python.keras.engine.base_preprocessing_layer", "Combiner") extern class Combiner {
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
		Compute a step in this computation, returning a new accumulator.
		
		This method computes a step of the computation described by this Combiner.
		If an accumulator is passed, the data in that accumulator is also used; so
		compute(batch_values) results in f(batch_values), while
		compute(batch_values, accumulator) results in
		merge(f(batch_values), accumulator).
		
		Args:
		  batch_values: A list of ndarrays representing the values of the inputs for
		    this step of the computation.
		  accumulator: the current accumulator. Can be None.
		
		Returns:
		  An accumulator that includes the passed batch of inputs.
	**/
	public function compute(batch_values:Dynamic, ?accumulator:Dynamic):Dynamic;
	/**
		Deserialize an accumulator received from 'serialize()'.
		
		This function deserializes an accumulator serialized by 'serialize()'.
		
		Args:
		  encoded_accumulator: A byte string representing an accumulator.
		
		Returns:
		  The accumulator represented by the passed byte_string.
	**/
	public function deserialize(encoded_accumulator:Dynamic):Dynamic;
	/**
		Convert an accumulator into a dict of output values.
		
		Args:
		  accumulator: The accumulator to convert.
		
		Returns:
		  A dict of ndarrays representing the data in this accumulator.
	**/
	public function extract(accumulator:Dynamic):Dynamic;
	/**
		Merge several accumulators to a single accumulator.
		
		This method takes the partial values in several accumulators and combines
		them into a single accumulator. This computation must not be order-specific
		(that is, merge([a, b]) must return the same result as merge([b, a]).
		
		Args:
		  accumulators: the accumulators to merge, as a list.
		
		Returns:
		  A merged accumulator.
	**/
	public function merge(accumulators:Dynamic):Dynamic;
	/**
		Create an accumulator based on 'output'.
		
		This method creates a new accumulator with identical internal state to the
		one used to create the data in 'output'. This means that if you do
		
		output_data = combiner.extract(accumulator_1)
		accumulator_2 = combiner.restore(output_data)
		
		then accumulator_1 and accumulator_2 will have identical internal state, and
		computations using either of them will be equivalent.
		
		Args:
		  output: The data output from a previous computation. Should be in the same
		    form as provided by 'extract_output'.
		
		Returns:
		  A new accumulator.
	**/
	public function restore(output:Dynamic):Dynamic;
	/**
		Serialize an accumulator for a remote call.
		
		This function serializes an accumulator to be sent to a remote process.
		
		Args:
		  accumulator: The accumulator to serialize.
		
		Returns:
		  A byte string representing the passed accumulator.
	**/
	public function serialize(accumulator:Dynamic):Dynamic;
}