/* This file is generated, do not edit! */
package tensorflow.python.tpu.client.client;
@:pythonImport("tensorflow.python.tpu.client.client", "Client") extern class Client {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(type:Dynamic, value:Dynamic, traceback:Dynamic):Dynamic;
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
	public function ___init__(?tpu:Dynamic, ?zone:Dynamic, ?project:Dynamic, ?credentials:Dynamic, ?service:Dynamic, ?discovery_url:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?tpu:Dynamic, ?zone:Dynamic, ?project:Dynamic, ?credentials:Dynamic, ?service:Dynamic, ?discovery_url:Dynamic):Void;
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
	/**
		Returns the TPU metadata object from the TPU Get API call.
	**/
	public function _fetch_cloud_tpu_metadata():Dynamic;
	/**
		Returns the full Cloud name for this TPU.
	**/
	public function _full_name():Dynamic;
	public function _get_tpu_property(key:Dynamic):Dynamic;
	/**
		Check if a HBM OOM event is reported.
	**/
	public function _hbm_oom_event(symptoms:Dynamic):Dynamic;
	/**
		Check if a runtime OOM event is reported.
	**/
	public function _oom_event(symptoms:Dynamic):Dynamic;
	/**
		Return the structured Symptom message.
	**/
	public function _symptom_msg(msg:Dynamic):Dynamic;
	/**
		Creates a new Cloud TPU API object.
		
		This works around an issue where the underlying HTTP connection sometimes
		times out when the script has been running for too long. Other methods in
		this object call this method to get a new API object whenever they need
		to communicate with the Cloud API.
		
		Raises:
		  RuntimeError: If the dependent Python packages are missing.
		
		Returns:
		  A Google Cloud TPU API object.
	**/
	public function _tpu_service():Dynamic;
	/**
		Return accelerator type of the TPU.
	**/
	public function accelerator_type():Dynamic;
	/**
		Return if the Cloud TPU API is available, if not certain features will not work.
	**/
	public function api_available():Dynamic;
	/**
		Configure TPU software version.
		
		Args:
		  version (string): Version of software to configure the TPU with.
		  restart_type (string): Restart behaviour when switching versions,
		    defaults to always restart. Options are 'always', 'ifNeeded'.
	**/
	public function configure_tpu_version(version:Dynamic, ?restart_type:Dynamic):Dynamic;
	/**
		Return the local ip address of the Google Cloud VM the workload is running on.
	**/
	public function get_local_ip():Dynamic;
	/**
		Return health of the TPU.
	**/
	public function health():Dynamic;
	/**
		Return the name of the tpu, or the ip address if name is not provided.
	**/
	public function name():Dynamic;
	/**
		Return a list of tpu endpoints.
	**/
	public function network_endpoints():Dynamic;
	/**
		Returns true if the TPU is in a state where training should eventually resume.
		
		If false the TPU is in a unrecoverable state and should be recreated.
	**/
	public function recoverable():Dynamic;
	/**
		Return runtime version of the TPU.
	**/
	public function runtime_version():Dynamic;
	/**
		Return state of the TPU.
	**/
	public function state():Dynamic;
	/**
		Return Cloud TPU Symptoms of the TPU.
	**/
	public function symptoms():Dynamic;
	/**
		Wait for TPU to become healthy or raise error if timeout reached.
		
		Args:
		  timeout_s (int): The timeout in seconds for waiting TPU to become healthy.
		  interval (int): The interval in seconds to poll the TPU for health.
		
		Raises:
		  RuntimeError: If the TPU doesn't become healthy by the timeout.
	**/
	public function wait_for_healthy(?timeout_s:Dynamic, ?interval:Dynamic):Dynamic;
}