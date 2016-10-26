/* This file is generated, do not edit! */
package tensorflow.python.training.moving_averages;
@:pythonImport("tensorflow.python.training.moving_averages", "ExponentialMovingAverage") extern class ExponentialMovingAverage {
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
		Creates a new ExponentialMovingAverage object.
		
		The `apply()` method has to be called to create shadow variables and add
		ops to maintain moving averages.
		
		The optional `num_updates` parameter allows one to tweak the decay rate
		dynamically. .  It is typical to pass the count of training steps, usually
		kept in a variable that is incremented at each step, in which case the
		decay rate is lower at the start of training.  This makes moving averages
		move faster.  If passed, the actual decay rate used is:
		
		  `min(decay, (1 + num_updates) / (10 + num_updates))`
		
		Args:
		  decay: Float.  The decay to use.
		  num_updates: Optional count of number of updates applied to variables.
		  name: String. Optional prefix name to use for the name of ops added in
		    `apply()`.
	**/
	@:native("__init__")
	public function ___init__(decay:Dynamic, ?num_updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a new ExponentialMovingAverage object.
		
		The `apply()` method has to be called to create shadow variables and add
		ops to maintain moving averages.
		
		The optional `num_updates` parameter allows one to tweak the decay rate
		dynamically. .  It is typical to pass the count of training steps, usually
		kept in a variable that is incremented at each step, in which case the
		decay rate is lower at the start of training.  This makes moving averages
		move faster.  If passed, the actual decay rate used is:
		
		  `min(decay, (1 + num_updates) / (10 + num_updates))`
		
		Args:
		  decay: Float.  The decay to use.
		  num_updates: Optional count of number of updates applied to variables.
		  name: String. Optional prefix name to use for the name of ops added in
		    `apply()`.
	**/
	public function new(decay:Dynamic, ?num_updates:Dynamic, ?name:Dynamic):Void;
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
	/**
		Maintains moving averages of variables.
		
		`var_list` must be a list of `Variable` or `Tensor` objects.  This method
		creates shadow variables for all elements of `var_list`.  Shadow variables
		for `Variable` objects are initialized to the variable's initial value.
		They will be added to the `GraphKeys.MOVING_AVERAGE_VARIABLES` collection.
		For `Tensor` objects, the shadow variables are initialized to 0.
		
		shadow variables are created with `trainable=False` and added to the
		`GraphKeys.ALL_VARIABLES` collection.  They will be returned by calls to
		`tf.all_variables()`.
		
		Returns an op that updates all shadow variables as described above.
		
		Note that `apply()` can be called multiple times with different lists of
		variables.
		
		Args:
		  var_list: A list of Variable or Tensor objects. The variables
		    and Tensors must be of types float16, float32, or float64.
		
		Returns:
		  An Operation that updates the moving averages.
		
		Raises:
		  TypeError: If the arguments are not all float16, float32, or float64.
		  ValueError: If the moving average of one of the variables is already
		    being computed.
	**/
	public function apply(?var_list:Dynamic):Dynamic;
	/**
		Returns the `Variable` holding the average of `var`.
		
		Args:
		  var: A `Variable` object.
		
		Returns:
		  A `Variable` object or `None` if the moving average of `var`
		  is not maintained..
	**/
	public function average(_var:Dynamic):Dynamic;
	/**
		Returns the name of the `Variable` holding the average for `var`.
		
		The typical scenario for `ExponentialMovingAverage` is to compute moving
		averages of variables during training, and restore the variables from the
		computed moving averages during evaluations.
		
		To restore variables, you have to know the name of the shadow variables.
		That name and the original variable can then be passed to a `Saver()` object
		to restore the variable from the moving average value with:
		  `saver = tf.train.Saver({ema.average_name(var): var})`
		
		`average_name()` can be called whether or not `apply()` has been called.
		
		Args:
		  var: A `Variable` object.
		
		Returns:
		  A string: The name of the variable that will be used or was used
		  by the `ExponentialMovingAverage class` to hold the moving average of
		  `var`.
	**/
	public function average_name(_var:Dynamic):Dynamic;
	/**
		Returns a map of names to `Variables` to restore.
		
		If a variable has a moving average, use the moving average variable name as
		the restore name; otherwise, use the variable name.
		
		For example,
		
		```python
		  variables_to_restore = ema.variables_to_restore()
		  saver = tf.train.Saver(variables_to_restore)
		```
		
		Below is an example of such mapping:
		
		```
		  conv/batchnorm/gamma/ExponentialMovingAverage: conv/batchnorm/gamma,
		  conv_4/conv2d_params/ExponentialMovingAverage: conv_4/conv2d_params,
		  global_step: global_step
		```
		Args:
		  moving_avg_variables: a list of variables that require to use of the
		    moving variable name to be restored. If None, it will default to
		    variables.moving_average_variables() + variables.trainable_variables()
		
		Returns:
		  A map from restore_names to variables. The restore_name can be the
		  moving_average version of the variable name if it exist, or the original
		  variable name.
	**/
	public function variables_to_restore(?moving_avg_variables:Dynamic):Dynamic;
}