/* This file is generated, do not edit! */
package tensorflow.python.framework.device_spec;
@:pythonImport("tensorflow.python.framework.device_spec", "DeviceSpecV1") extern class DeviceSpecV1 {
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
		Checks if the `other` DeviceSpec is same as the current instance, eg have
		
		   same value for all the internal fields.
		
		Args:
		  other: Another DeviceSpec
		
		Returns:
		  Return `True` if `other` is also a DeviceSpec instance and has same value
		  as the current instance.
		  Return `False` otherwise.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
		Create a new `DeviceSpec` object.
		
		Args:
		  job: string.  Optional job name.
		  replica: int.  Optional replica index.
		  task: int.  Optional task index.
		  device_type: Optional device type string (e.g. "CPU" or "GPU")
		  device_index: int.  Optional device index.  If left unspecified, device
		    represents 'any' device_index.
	**/
	@:native("__init__")
	public function ___init__(?job:Dynamic, ?replica:Dynamic, ?task:Dynamic, ?device_type:Dynamic, ?device_index:Dynamic):Dynamic;
	/**
		Create a new `DeviceSpec` object.
		
		Args:
		  job: string.  Optional job name.
		  replica: int.  Optional replica index.
		  task: int.  Optional task index.
		  device_type: Optional device type string (e.g. "CPU" or "GPU")
		  device_index: int.  Optional device index.  If left unspecified, device
		    represents 'any' device_index.
	**/
	public function new(?job:Dynamic, ?replica:Dynamic, ?task:Dynamic, ?device_type:Dynamic, ?device_index:Dynamic):Void;
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
	public var _as_string : Dynamic;
	/**
		Stateless portion of `to_string` (separated to allow caching).
	**/
	static public function _components_to_string(job:Dynamic, replica:Dynamic, task:Dynamic, device_type:Dynamic, device_index:Dynamic):Dynamic;
	public var _device_index : Dynamic;
	public var _device_type : Dynamic;
	/**
		Combine the current DeviceSpec with another DeviceSpec.
		
		The combination of DeviceSpecs is will give priority to dev.
		
		Args:
		  dev: a `DeviceSpec`
		
		Returns:
		  A tuple of (job, replica, task, device_type, device_index) which
		  represents the combination of self and dev.
	**/
	public function _get_combined_properties(dev:Dynamic):Dynamic;
	static public function _get_valid_device_types():Dynamic;
	public var _hash : Dynamic;
	public var _job : Dynamic;
	public var _replica : Dynamic;
	/**
		Stateless portion of device spec string parsing.
		
		Args:
		  spec: An optional string specifying a device specification.
		
		Returns:
		  The parsed components of `spec`. Note that the result of this function
		  must go through attribute setters of DeviceSpec, and should therefore NOT
		  be used directly.
	**/
	static public function _string_to_components(?spec:Dynamic):Dynamic;
	public var _task : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public var device_index : Dynamic;
	public var device_type : Dynamic;
	/**
		Construct a `DeviceSpec` from a string.
		
		Args:
		  spec: a string of the form
		   /job:<name>/replica:<id>/task:<id>/device:CPU:<id> or
		   /job:<name>/replica:<id>/task:<id>/device:GPU:<id> as cpu and gpu are
		     mutually exclusive. All entries are optional.
		
		Returns:
		  A DeviceSpec.
	**/
	static public function from_string(spec:Dynamic):Dynamic;
	public var job : Dynamic;
	/**
		Returns a new DeviceSpec which incorporates `dev`.
		
		When combining specs, `dev` will take precedence over the current spec.
		So for instance:
		```
		first_spec = tf.DeviceSpec(job=0, device_type="CPU")
		second_spec = tf.DeviceSpec(device_type="GPU")
		combined_spec = first_spec.make_merged_spec(second_spec)
		```
		
		is equivalent to:
		```
		combined_spec = tf.DeviceSpec(job=0, device_type="GPU")
		```
		
		Args:
		  dev: a `DeviceSpec`
		
		Returns:
		  A new `DeviceSpec` which combines `self` and `dev`
	**/
	public function make_merged_spec(dev:Dynamic):Dynamic;
	/**
		Merge the properties of "dev" into this `DeviceSpec`.
		
		Note: Will be removed in TensorFlow 2.x since DeviceSpecs will become
		      immutable.
		
		Args:
		  dev: a `DeviceSpec`.
	**/
	public function merge_from(dev:Dynamic):Dynamic;
	/**
		Parse a `DeviceSpec` name into its components.
		
		**2.x behavior change**:
		
		In TensorFlow 1.x, this function mutates its own state and returns itself.
		In 2.x, DeviceSpecs are immutable, and this function will return a
		  DeviceSpec which contains the spec.
		
		* Recommended:
		
		  ```
		  # my_spec and my_updated_spec are unrelated.
		  my_spec = tf.DeviceSpec.from_string("/CPU:0")
		  my_updated_spec = tf.DeviceSpec.from_string("/GPU:0")
		  with tf.device(my_updated_spec):
		    ...
		  ```
		
		* Will work in 1.x and 2.x (though deprecated in 2.x):
		
		  ```
		  my_spec = tf.DeviceSpec.from_string("/CPU:0")
		  my_updated_spec = my_spec.parse_from_string("/GPU:0")
		  with tf.device(my_updated_spec):
		    ...
		  ```
		
		* Will NOT work in 2.x:
		
		  ```
		  my_spec = tf.DeviceSpec.from_string("/CPU:0")
		  my_spec.parse_from_string("/GPU:0")  # <== Will not update my_spec
		  with tf.device(my_spec):
		    ...
		  ```
		
		In general, `DeviceSpec.from_string` should completely replace
		`DeviceSpec.parse_from_string`, and `DeviceSpec.replace` should
		completely replace setting attributes directly.
		
		Args:
		  spec: an optional string of the form
		   /job:<name>/replica:<id>/task:<id>/device:CPU:<id> or
		   /job:<name>/replica:<id>/task:<id>/device:GPU:<id> as cpu and gpu are
		     mutually exclusive. All entries are optional.
		
		Returns:
		  The `DeviceSpec`.
		
		Raises:
		  ValueError: if the spec was not valid.
	**/
	public function parse_from_string(spec:Dynamic):Dynamic;
	/**
		Convenience method for making a new DeviceSpec by overriding fields.
		
		For instance:
		```
		my_spec = DeviceSpec=(job="my_job", device="CPU")
		my_updated_spec = my_spec.replace(device="GPU")
		my_other_spec = my_spec.replace(device=None)
		```
		
		Args:
		  **kwargs: This method takes the same args as the DeviceSpec constructor
		
		Returns:
		  A DeviceSpec with the fields specified in kwargs overridden.
	**/
	public function replace(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var replica : Dynamic;
	public var task : Dynamic;
	/**
		Return a string representation of this `DeviceSpec`.
		
		Returns:
		  a string of the form
		  /job:<name>/replica:<id>/task:<id>/device:<device_type>:<id>.
	**/
	public function to_string():Dynamic;
}