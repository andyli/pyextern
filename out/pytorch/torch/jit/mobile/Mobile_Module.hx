/* This file is generated, do not edit! */
package torch.jit.mobile;
@:pythonImport("torch.jit.mobile") extern class Mobile_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Args:
		    f_input: a file-like object (has to implement read, readline, tell, and seek),
		        or a string containing a file name
		    f_output: path to new model destination
		    to_version: the expected output model bytecode version
		Returns:
		    success: A boolean. If backport success, return true, otherwise false
	**/
	static public function _backport_for_mobile(f_input:Dynamic, f_output:Dynamic, to_version:Dynamic):Dynamic;
	/**
		Args:
		    f_input: a file-like object (has to implement read, readline, tell, and seek),
		        or a string containing a file name
	**/
	static public function _backport_for_mobile_to_buffer(f_input:Dynamic, to_version:Dynamic):Dynamic;
	/**
		return a set of root operator names (with overload name) that are used by any method
		in this mobile module.
	**/
	static public function _export_operator_list(module:Dynamic):Dynamic;
	/**
		Args:
		    f_input: a file-like object (has to implement read, readline, tell, and seek),
		        or a string containing a file name
		
		Returns:
		    version: An integer. If the integer is -1, the version is invalid. A warning
		        will show in the log.
		
		Example:
		
		.. testcode::
		
		    from torch.jit.mobile import _get_model_bytecode_version
		
		    # Get bytecode version from a saved file path
		    version = _get_model_bytecode_version("path/to/model.ptl")
	**/
	static public function _get_model_bytecode_version(f_input:Dynamic):Dynamic;
	/**
		A function to retrieve the root (top level) operators of a model and their corresponding
		compatibility info. These root operators can call other operators within them (traced ops), and
		a root op can call many different traced ops depending on internal code paths in the root op.
		These traced ops are not returned by this function. Those operators are abstracted into the
		runtime as an implementation detail (and the traced ops themselves can also call other operators)
		making retrieving them difficult and their value from this api negligible since they will differ
		between which runtime version the model is run on. Because of this, there is a false positive this
		api can't prevent in a compatibility usecase. All the root ops of a model are present in a
		target runtime, but not all the traced ops are which prevents a model from being able to run.
		Args:
		    f_input: a file-like object (has to implement read, readline, tell, and seek),
		        or a string containing a file name
		
		Returns:
		    Operators and info: A Dictionary mapping strings (the qualified names of the root operators)
		    of the model to their OperatorInfo structs.
		
		Example:
		
		.. testcode::
		
		    from torch.jit.mobile import _get_model_ops_and_info
		
		    # Get bytecode version from a saved file path
		    ops_and_info = _get_model_ops_and_info("path/to/model.ptl")
	**/
	static public function _get_model_ops_and_info(f_input:Dynamic):Dynamic;
	/**
		Load a :class:`LiteScriptModule`
		saved with :func:`torch.jit._save_for_lite_interpreter`
		
		Args:
		    f: a file-like object (has to implement read, readline, tell, and seek),
		        or a string containing a file name
		    map_location: a string or torch.device used to dynamically remap
		        storages to an alternative set of devices.
		
		Returns:
		    A :class:`LiteScriptModule` object.
		
		Example:
		
		.. testcode::
		
		    import torch
		    import io
		
		    # Load LiteScriptModule from saved file path
		    torch.jit._load_for_lite_interpreter('lite_script_module.pt')
		
		    # Load LiteScriptModule from io.BytesIO object
		    with open('lite_script_module.pt', 'rb') as f:
		        buffer = io.BytesIO(f.read())
		
		    # Load all tensors to the original device
		    torch.jit.mobile._load_for_lite_interpreter(buffer)
	**/
	static public function _load_for_lite_interpreter(f:Dynamic, ?map_location:Dynamic):Dynamic;
	static public function validate_map_location(?map_location:Dynamic):Dynamic;
}