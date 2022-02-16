/* This file is generated, do not edit! */
package tensorflow.python.saved_model.load_options;
@:pythonImport("tensorflow.python.saved_model.load_options", "LoadOptions") extern class LoadOptions {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Creates an object that stores options for SavedModel loading.
		
		*When to set `allow_partial_checkpoint=True`?*
		
		This can be used when loading a Keras model (`tf.keras.models.load_model`)
		with custom objects. When new variables are added to the custom object
		class, loading will fail the assertion check that all loaded variables have
		been restored, because the SavedModel checkpoint only contains the variables
		that were in original the custom object.
		See the following example:
		
		```
		class Custom(tf.keras.Model):
		  def __init__(self):
		    super(Custom, self).__init__()
		    self.v = tf.Variable(...)
		
		  def call(self, inputs):
		    return ...
		
		model = Custom()
		model.save(...)
		```
		
		After saving, say that `Custom` is updated to include an additional
		variable.
		
		```
		class Custom(tf.keras.Model):
		  def __init__(self):
		    super(Custom, self).__init__()
		    self.v = tf.Variable(...)
		    self.w = tf.Variable(...)
		
		  def call(self, inputs):
		    return ...
		```
		
		`tf.keras.models.load_model(path, custom_objects={'Custom': Custom})` fails
		to load since `Custom.w` does not exist in the SavedModel checkpoint. To
		acknowledge that there are variables that are not restored from the
		checkpoint and successfully load the model, call:
		
		```
		tf.keras.models.load_model(
		  path, custom_objects={'Custom': Custom},
		  options=tf.saved_model.LoadOptions(allow_partial_checkpoint=True))
		```
		
		Args:
		  allow_partial_checkpoint: bool. Defaults to `False`. When enabled, allows
		    the SavedModel checkpoint to not entirely match the loaded object.
		  experimental_io_device: string. Applies in a distributed setting.
		    Tensorflow device to use to access the filesystem. If `None` (default)
		    then for each variable the filesystem is accessed from the CPU:0 device
		    of the host where that variable is assigned. If specified, the
		    filesystem is instead accessed from that device for all variables.
		    This is for example useful if you want to load from a local directory,
		    such as "/tmp" when running in a distributed setting. In that case
		    pass a device for the host where the "/tmp" directory is accessible.
		  experimental_skip_checkpoint: bool. Defaults to `False`. If set to `True`,
		    checkpoints will not be restored. Note that this in the majority of
		    cases will generate an unusable model.
		
		Example:
		
		  load_options = tf.saved_model.LoadOptions(experimental_io_device=
		    '/job:localhost')
		  restoredmodel = tf.keras.models.load_model(saved_model_path,
		                                             options=load_options)
	**/
	@:native("__init__")
	public function ___init__(?allow_partial_checkpoint:Dynamic, ?experimental_io_device:Dynamic, ?experimental_skip_checkpoint:Dynamic):Dynamic;
	/**
		Creates an object that stores options for SavedModel loading.
		
		*When to set `allow_partial_checkpoint=True`?*
		
		This can be used when loading a Keras model (`tf.keras.models.load_model`)
		with custom objects. When new variables are added to the custom object
		class, loading will fail the assertion check that all loaded variables have
		been restored, because the SavedModel checkpoint only contains the variables
		that were in original the custom object.
		See the following example:
		
		```
		class Custom(tf.keras.Model):
		  def __init__(self):
		    super(Custom, self).__init__()
		    self.v = tf.Variable(...)
		
		  def call(self, inputs):
		    return ...
		
		model = Custom()
		model.save(...)
		```
		
		After saving, say that `Custom` is updated to include an additional
		variable.
		
		```
		class Custom(tf.keras.Model):
		  def __init__(self):
		    super(Custom, self).__init__()
		    self.v = tf.Variable(...)
		    self.w = tf.Variable(...)
		
		  def call(self, inputs):
		    return ...
		```
		
		`tf.keras.models.load_model(path, custom_objects={'Custom': Custom})` fails
		to load since `Custom.w` does not exist in the SavedModel checkpoint. To
		acknowledge that there are variables that are not restored from the
		checkpoint and successfully load the model, call:
		
		```
		tf.keras.models.load_model(
		  path, custom_objects={'Custom': Custom},
		  options=tf.saved_model.LoadOptions(allow_partial_checkpoint=True))
		```
		
		Args:
		  allow_partial_checkpoint: bool. Defaults to `False`. When enabled, allows
		    the SavedModel checkpoint to not entirely match the loaded object.
		  experimental_io_device: string. Applies in a distributed setting.
		    Tensorflow device to use to access the filesystem. If `None` (default)
		    then for each variable the filesystem is accessed from the CPU:0 device
		    of the host where that variable is assigned. If specified, the
		    filesystem is instead accessed from that device for all variables.
		    This is for example useful if you want to load from a local directory,
		    such as "/tmp" when running in a distributed setting. In that case
		    pass a device for the host where the "/tmp" directory is accessible.
		  experimental_skip_checkpoint: bool. Defaults to `False`. If set to `True`,
		    checkpoints will not be restored. Note that this in the majority of
		    cases will generate an unusable model.
		
		Example:
		
		  load_options = tf.saved_model.LoadOptions(experimental_io_device=
		    '/job:localhost')
		  restoredmodel = tf.keras.models.load_model(saved_model_path,
		                                             options=load_options)
	**/
	public function new(?allow_partial_checkpoint:Dynamic, ?experimental_io_device:Dynamic, ?experimental_skip_checkpoint:Dynamic):Void;
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
	static public var __slots__ : Dynamic;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public var allow_partial_checkpoint : Dynamic;
	public var experimental_io_device : Dynamic;
	public var experimental_skip_checkpoint : Dynamic;
}