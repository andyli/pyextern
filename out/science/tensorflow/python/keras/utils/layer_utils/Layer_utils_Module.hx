/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.layer_utils;
@:pythonImport("tensorflow.python.keras.utils.layer_utils") extern class Layer_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Lightweight decorator for caching lazily constructed properties.
		
		When to use:
		This decorator provides simple caching with minimal overhead. It is designed
		for properties which are expensive to compute and static over the life of a
		class instance, and provides no mechanism for cache invalidation. Thus it is
		best suited for lazily exposing derived properties of other static data.
		
		For classes with custom getattr / setattr behavior (such as trackable
		objects), storing cache results as object attributes is not performant.
		Instead, a specialized cache can significantly reduce property lookup
		overhead. (While still allowing the decorated property to be lazily computed.)
		Consider the following class:
		
		```
		class MyClass(object):
		  def __setattr__(self, key, value):
		    # Some expensive class specific code
		    # ...
		    # ...
		
		    super(MyClass, self).__setattr__(key, value)
		
		  @property
		  def thing(self):
		    # `thing` is expensive to compute (and may not even be requested), so we
		    # want to lazily compute it and then cache it.
		    output = getattr(self, '_thing', None)
		    if output is None:
		      self._thing = output = compute_thing(self)
		    return output
		```
		
		It's also worth noting that ANY overriding of __setattr__, even something as
		simple as:
		```
		  def __setattr__(self, key, value):
		    super(MyClass, self).__setattr__(key, value)
		```
		
		Slows down attribute assignment by nearly 10x.
		
		By contrast, replacing the definition of `thing` with the following sidesteps
		the expensive __setattr__ altogether:
		
		'''
		@property
		@tracking.cached_per_instance
		def thing(self):
		  # `thing` is expensive to compute (and may not even be requested), so we
		  # want to lazily compute it and then cache it.
		  return compute_thing(self)
		'''
		
		Performance:
		The overhead for this decorator is ~0.4 us / call. A much lower overhead
		implementation (~0.085 us / call) can be achieved by using a custom dict type:
		
		```
		def dict_based_cache(f):
		  class Cache(dict):
		    __slots__ = ()
		    def __missing__(self, key):
		      self[key] = output = f(key)
		      return output
		
		  return property(Cache().__getitem__)
		```
		
		However, that implementation holds class instances as keys, and as a result
		blocks garbage collection. (And modifying it to use weakref's as keys raises
		the lookup overhead to ~0.4 us) As a result, the WeakKeyDictionary
		implementation below turns out to be more prudent.
		
		Args:
		  f: The function to cache.
		
		Returns:
		  f decorated with simple caching behavior.
	**/
	static public function cached_per_instance(f:Dynamic):Dynamic;
	/**
		Utility useful when changing a convnet's `data_format`.
		
		When porting the weights of a convnet from one data format to the other,
		if the convnet includes a `Flatten` layer
		(applied to the last convolutional feature map)
		followed by a `Dense` layer, the weights of that `Dense` layer
		should be updated to reflect the new dimension ordering.
		
		Args:
		    dense: The target `Dense` layer.
		    previous_feature_map_shape: A shape tuple of 3 integers,
		        e.g. `(512, 7, 7)`. The shape of the convolutional
		        feature map right before the `Flatten` layer that
		        came before the target `Dense` layer.
		    target_data_format: One of "channels_last", "channels_first".
		        Set it "channels_last"
		        if converting a "channels_first" model to "channels_last",
		        or reciprocally.
	**/
	static public function convert_dense_weights_data_format(dense:Dynamic, previous_feature_map_shape:Dynamic, ?target_data_format:Dynamic):Dynamic;
	/**
		Count the total number of scalars composing the weights.
		
		Args:
		    weights: An iterable containing the weights on which to compute params
		
		Returns:
		    The total number of scalars composing the weights
	**/
	static public function count_params(weights:Dynamic):Dynamic;
	/**
		Filter out empty Layer-like containers and uniquify.
	**/
	static public function filter_empty_layer_containers(layer_list:Dynamic):Dynamic;
	/**
		Returns the list of input tensors necessary to compute `tensor`.
		
		Output will always be a list of tensors
		(potentially with 1 element).
		
		Args:
		    tensor: The tensor to start from.
		    layer: Origin layer of the tensor. Will be
		        determined via tensor._keras_history if not provided.
		    node_index: Origin node index of the tensor.
		
		Returns:
		    List of input tensors.
	**/
	static public function get_source_inputs(tensor:Dynamic, ?layer:Dynamic, ?node_index:Dynamic):Dynamic;
	static public function is_builtin_layer(layer:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Prints a summary of a model.
		
		Args:
		    model: Keras model instance.
		    line_length: Total length of printed lines
		        (e.g. set this to adapt the display to different
		        terminal window sizes).
		    positions: Relative or absolute positions of log elements in each line.
		        If not provided, defaults to `[.33, .55, .67, 1.]`.
		    print_fn: Print function to use.
		        It will be called on each line of the summary.
		        You can set it to a custom function
		        in order to capture the string summary.
		        It defaults to `print` (prints to stdout).
	**/
	static public function print_summary(model:Dynamic, ?line_length:Dynamic, ?positions:Dynamic, ?print_fn:Dynamic):Dynamic;
	/**
		Validates the correctness of a string-based arg.
	**/
	static public function validate_string_arg(input_data:Dynamic, allowable_strings:Dynamic, layer_name:Dynamic, arg_name:Dynamic, ?allow_none:Dynamic, ?allow_callables:Dynamic):Dynamic;
}