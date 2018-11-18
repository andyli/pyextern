/* This file is generated, do not edit! */
package torch.nn.utils.convert_parameters;
@:pythonImport("torch.nn.utils.convert_parameters") extern class Convert_parameters_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		This helper function is to check if the parameters are located
		in the same device. Currently, the conversion between model parameters
		and single vector form is not supported for multiple allocations,
		e.g. parameters in different GPUs, or mixture of CPU/GPU.
		
		Arguments:
		    param ([Tensor]): a Tensor of a parameter of a model
		    old_param_device (int): the device where the first parameter of a
		                            model is allocated.
		
		Returns:
		    old_param_device (int): report device for the first time
	**/
	static public function _check_param_device(param:Dynamic, old_param_device:Dynamic):Dynamic;
	/**
		Convert parameters to one vector
		
		Arguments:
		    parameters (Iterable[Tensor]): an iterator of Tensors that are the
		        parameters of a model.
		
		Returns:
		    The parameters represented by a single vector
	**/
	static public function parameters_to_vector(parameters:Dynamic):Dynamic;
	/**
		Convert one vector to the parameters
		
		Arguments:
		    vec (Tensor): a single vector represents the parameters of a model.
		    parameters (Iterable[Tensor]): an iterator of Tensors that are the
		        parameters of a model.
	**/
	static public function vector_to_parameters(vec:Dynamic, parameters:Dynamic):Dynamic;
}