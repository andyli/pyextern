/* This file is generated, do not edit! */
package tensorflow.python.training.moving_averages;
@:pythonImport("tensorflow.python.training.moving_averages", "ExponentialMovingAverage") extern class ExponentialMovingAverage {
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
		Creates a new ExponentialMovingAverage object.
		
		The `apply()` method has to be called to create shadow variables.
		Follow-on calls to the `apply()` method will update the moving averages
		in the shadow variables.
		(In TF 1.x graphs `apply()` will return an update op to update
		the moving averages which must be explicitly run).
		
		The optional `num_updates` parameter allows one to tweak the decay rate
		dynamically. It is typical to pass the count of training steps, usually
		kept in a variable that is incremented at each step, in which case the
		decay rate is lower at the start of training.  This makes moving averages
		move faster.  If passed, the actual decay rate used is:
		
		  `min(decay, (1 + num_updates) / (10 + num_updates))`
		
		Args:
		  decay: Float.  The decay to use.
		  num_updates: Optional count of number of updates applied to variables.
		  zero_debias: If `True`, zero debias moving-averages that are initialized
		    with tensors. (Note: moving averages may not be initialized with
		    non-variable tensors when eager execution is enabled).
		  name: String. Optional prefix name to use for the name of ops added in
		    `apply()`.
	**/
	@:native("__init__")
	public function ___init__(decay:Dynamic, ?num_updates:Dynamic, ?zero_debias:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a new ExponentialMovingAverage object.
		
		The `apply()` method has to be called to create shadow variables.
		Follow-on calls to the `apply()` method will update the moving averages
		in the shadow variables.
		(In TF 1.x graphs `apply()` will return an update op to update
		the moving averages which must be explicitly run).
		
		The optional `num_updates` parameter allows one to tweak the decay rate
		dynamically. It is typical to pass the count of training steps, usually
		kept in a variable that is incremented at each step, in which case the
		decay rate is lower at the start of training.  This makes moving averages
		move faster.  If passed, the actual decay rate used is:
		
		  `min(decay, (1 + num_updates) / (10 + num_updates))`
		
		Args:
		  decay: Float.  The decay to use.
		  num_updates: Optional count of number of updates applied to variables.
		  zero_debias: If `True`, zero debias moving-averages that are initialized
		    with tensors. (Note: moving averages may not be initialized with
		    non-variable tensors when eager execution is enabled).
		  name: String. Optional prefix name to use for the name of ops added in
		    `apply()`.
	**/
	public function new(decay:Dynamic, ?num_updates:Dynamic, ?zero_debias:Dynamic, ?name:Dynamic):Void;
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
		Maintains moving averages of variables.
		
		`var_list` must be a list of `Variable` objects.  This method
		creates shadow variables (holding the moving averages)
		for all elements of `var_list`, and
		updates the moving averages using the current `var_list` values. Shadow
		variables for `Variable` objects are initialized to the variable's initial
		value.
		
		Shadow variables are created with `trainable=False`. To access them you
		can use the EMA object's `average` method. Note that `EMA` objects are
		not trackable by checkpoints, so if you want to checkpoint or restore the
		moving variables you will need to manually grab the shadow
		variables via `average()` and assign them as `tf.Module` properties or
		directly pass them to your `tf.train.Checkpoint`.
		
		Note that `apply()` can be called multiple times. When eager execution is
		enabled each call to apply will update the variables once, so this needs to
		be called in a loop.
		
		In legacy TF 1.x graphs, this method returns an op that updates all
		shadow variables from the current value of their associated variables. In
		TF 1.x graphs without automatically control dependencies this op needs to be
		manually run.
		
		Args:
		  var_list: A list of Variable objects. The variables
		    must be of types bfloat16, float16, float32, or float64.
		    (In legacy TF 1.x graphs these may be tensors, but this is unsupported
		    when eager execution is enabled.)
		
		Returns:
		  An Operation that updates the moving averages.
		
		Raises:
		  TypeError: If the arguments are not an allowed type.
	**/
	public function apply(?var_list:Dynamic):Dynamic;
	/**
		Returns the `Variable` holding the average of `var`.
		
		Args:
		  var: A `Variable` object.
		
		Returns:
		  A `Variable` object or `None` if the moving average of `var`
		  is not maintained.
	**/
	public function average(_var:Dynamic):Dynamic;
	/**
		[Meant for TF1] Returns name of `Variable` holding the average for `var`.
		
		(Designed to work with legacy `tf.compat.v1.train.Saver`, it is sensitive to
		specific variable names and not recommended for TF2)
		
		The typical scenario for `ExponentialMovingAverage` is to compute moving
		averages of variables during training, and restore the variables from the
		computed moving averages during evaluations.
		
		To restore variables, you have to know the name of the shadow variables.
		That name and the original variable can then be passed to a `Saver()` object
		to restore the variable from the moving average value with:
		  `saver = tf.compat.v1.train.Saver({ema.average_name(var): var})`
		
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
		The name of this ExponentialMovingAverage object.
	**/
	public var name : Dynamic;
	/**
		[Designed for TF 1.x] Returns a map of names to `Variables` to restore.
		
		(Designed to work with legacy `tf.compat.v1.train.Saver`, sensitive to
		specific variable names and not recommended for TF2)
		
		If a variable has a moving average, use the moving average variable name as
		the restore name; otherwise, use the variable name.
		
		For example,
		
		```python
		  variables_to_restore = ema.variables_to_restore()
		  saver = tf.compat.v1.train.Saver(variables_to_restore)
		```
		
		Below is an example of such mapping:
		
		```
		  conv/batchnorm/gamma/ExponentialMovingAverage: conv/batchnorm/gamma,
		  conv_4/conv2d_params/ExponentialMovingAverage: conv_4/conv2d_params,
		  global_step: global_step
		```
		
		Args:
		  moving_avg_variables: a list of variables that require to use of the
		    moving average variable name to be restored. If None, it will default to
		    variables.moving_average_variables() + variables.trainable_variables()
		
		Returns:
		  A map from restore_names to variables. The restore_name is either the
		  original or the moving average version of the variable name, depending
		  on whether the variable name is in the `moving_avg_variables`.
	**/
	public function variables_to_restore(?moving_avg_variables:Dynamic):Dynamic;
}