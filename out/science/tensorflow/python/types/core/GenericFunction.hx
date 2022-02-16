/* This file is generated, do not edit! */
package tensorflow.python.types.core;
@:pythonImport("tensorflow.python.types.core", "GenericFunction") extern class GenericFunction {
	/**
		Executes this callable.
		
		This behaves like a regular op - in eager mode, it immediately starts
		execution, returning results. In graph mode, it creates ops which return
		symbolic TensorFlow values (like `tf.Tensor`, `tf.data.Dataset`,
		etc.). For example, `tf.function` callables typically generate a
		`tf.raw_ops.PartitionedCall` op, but not always - the
		exact operations being generated are an internal implementation detail.
		
		Args:
		  *args: positional argument for this call
		  **kwargs: keyword arguments for this call
		Returns:
		  The execution results.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns compiler IR for the compiled function.
		
		This API is intended *only* for debugging as there are no guarantees on
		backwards compatibility of returned IR or the allowed values of `stage`.
		
		Args:
		  *args: Arguments used for compilation; same arguments as used for calling
		    the function. Need to be eager tensors.
		  **kwargs: Keyword arguments used for compilation.
		
		Returns:
		  Function callable with the following kwargs:
		    - `stage` at which the compiler IR should be serialized. Allowed values
		      are:
		       - `hlo`: HLO output after conversion from TF
		        (https://www.tensorflow.org/xla/operation_semantics).
		       - `hlo_serialized`: Like stage=`hlo`, but the output is a serialized
		         HLO module proto (a bytes object).
		       - `optimized_hlo`: HLO after compiler optimizations.
		       - `optimized_hlo_serialized`: Like stage=`optimized_hlo`, but the
		         output is a serialized HLO module proto (a bytes object).
		       - `optimized_hlo_dot`: optimized HLO in DOT format suitable for
		         Graphviz.
		    - `device_name` can be either None, in which case the preferred device
		      is used for compilation, or a device name. It can be a full device
		      name, or a partial one, e.g., `/device:CPU:0`.
		
		  For example, for
		
		  ```python
		  @tf.function(jit_compile=True)
		  def f(x):
		    return x + 1
		
		  f.experimental_get_compiler_ir(tf.random.normal([10, 10])(stage='hlo')
		  ```
		
		  the output is:
		
		  ```
		  HloModule a_inference_f_13__.9
		
		  ENTRY %a_inference_f_13__.9 (arg0.1: f32[10,10]) -> f32[10,10] {
		    %arg0.1 = f32[10,10]{1,0} parameter(0), parameter_replication={false}
		    %reshape.2 = f32[10,10]{1,0} reshape(f32[10,10]{1,0} %arg0.1)
		    %constant.3 = f32[] constant(1)
		    %broadcast.4 = f32[10,10]{1,0} broadcast(f32[] %constant.3)
		    %add.5 = f32[10,10]{1,0} add(f32[10,10]{1,0} %reshape.2,
		                                 f32[10,10]{1,0} %broadcast.4)
		    %reshape.6 = f32[10,10]{1,0} reshape(f32[10,10]{1,0} %add.5)
		    %tuple.7 = (f32[10,10]{1,0}) tuple(f32[10,10]{1,0} %reshape.6)
		    ROOT %get-tuple-element.8 = f32[10,10]{1,0}
		      get-tuple-element((f32[10,10]{1,0}) %tuple.7), index=0
		  }
		  ```
		
		Raises:
		  ValueError: If an invalid `stage` is selected or if applied to a function
		    which is not compiled (`jit_compile=True` is not set).
		  TypeError: When called with input in graph mode.
	**/
	public function experimental_get_compiler_ir(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a `ConcreteFunction` specialized to input types.
		
		The arguments specified by `args` and `kwargs` follow normal function call
		rules. The returned `ConcreteFunction` has the same set of positional and
		keyword arguments as `self`, but their types are refined to the types
		specified by `args` and `kwargs`.
		
		>>> @tf.function
		... def f(x):
		...   return x
		>>> f_concrete = f.get_concrete_function(tf.constant(1.0))
		>>> f_concrete = f.get_concrete_function(x=tf.constant(1.0))
		
		Unlike normal calls, `get_concrete_function` allow type specifiers instead
		of TensorFlow objects, so for example `tf.Tensor`s may be replaced with
		`tf.TensorSpec`s.
		
		>>> @tf.function
		... def f(x):
		...   return x
		>>> f_concrete = f.get_concrete_function(tf.TensorSpec([], tf.float64))
		
		If the function definition allows only one specialization, `args` and
		`kwargs` may be omitted altogether.
		
		>>> @tf.function(input_signature=[tf.TensorSpec(None, tf.float32)])
		... def f(x):
		...   return x
		>>> f_concrete = f.get_concrete_function()
		
		The returned `ConcreteFunction` can be called normally:
		
		>>> f_concrete(tf.constant(1.0))
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		>>> f_concrete(x=tf.constant(1.0))
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		
		Args:
		  *args: inputs to specialize on.
		  **kwargs: inputs to specialize on.
		
		Returns:
		  A `ConcreteFunction`.
	**/
	public function get_concrete_function(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}