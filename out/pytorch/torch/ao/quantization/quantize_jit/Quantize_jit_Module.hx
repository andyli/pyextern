/* This file is generated, do not edit! */
package torch.ao.quantization.quantize_jit;
@:pythonImport("torch.ao.quantization.quantize_jit") extern class Quantize_jit_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_forward_method(model:Dynamic):Dynamic;
	static public function _check_is_script_module(model:Dynamic):Dynamic;
	static public function _convert_jit(model:Dynamic, ?inplace:Dynamic, ?debug:Dynamic, ?quant_type:Dynamic, ?preserved_attrs:Dynamic):Dynamic;
	static public function _prepare_jit(model:Dynamic, qconfig_dict:Dynamic, ?inplace:Dynamic, ?quant_type:Dynamic):Dynamic;
	static public function _quantize_jit(model:Dynamic, qconfig_dict:Dynamic, ?run_fn:Dynamic, ?run_args:Dynamic, ?inplace:Dynamic, ?debug:Dynamic, ?quant_type:Dynamic):Dynamic;
	static public function convert_dynamic_jit(model:Dynamic, ?inplace:Dynamic, ?debug:Dynamic, ?preserved_attrs:Dynamic):Dynamic;
	static public function convert_jit(model:Dynamic, ?inplace:Dynamic, ?debug:Dynamic, ?preserved_attrs:Dynamic):Dynamic;
	/**
		Fuse conv - bn module
		Works for eval model only.
		
		Args:
		    model: TorchScript model from scripting or tracing
	**/
	static public function fuse_conv_bn_jit(model:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function prepare_dynamic_jit(model:Dynamic, qconfig_dict:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function prepare_jit(model:Dynamic, qconfig_dict:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Quantize the input float TorchScript model with
		post training dynamic quantization.
		Currently only qint8 quantization of torch.nn.Linear is supported.
		
		Args:
		    `model`: input float TorchScript model
		    `qconfig_dict`: qconfig_dict is a dictionary with names of sub modules as key and
		    qconfig for that module as value, please see detailed
		    descriptions in :func:`~torch.quantization.quantize_jit`
		    `inplace`: carry out model transformations in-place, the original module is
		    mutated
		    `debug`: flag for producing a debug friendly model (preserve weight attribute)
		
		Return:
		    Quantized TorchSciprt model.
		
		Example:
		```python
		import torch
		from torch.quantization import per_channel_dynamic_qconfig
		from torch.quantization import quantize_dynmiac_jit
		
		ts_model = torch.jit.script(float_model.eval())  # or torch.jit.trace(float_model, input)
		qconfig = get_default_qconfig('fbgemm')
		def calibrate(model, data_loader):
		    model.eval()
		    with torch.no_grad():
		        for image, target in data_loader:
		            model(image)
		
		quantized_model = quantize_dynamic_jit(
		    ts_model,
		    {'': qconfig},
		    calibrate,
		    [data_loader_test])
		```
	**/
	static public function quantize_dynamic_jit(model:Dynamic, qconfig_dict:Dynamic, ?inplace:Dynamic, ?debug:Dynamic):Dynamic;
	/**
		Quantize the input float TorchScript model with
		post training static quantization.
		
		First it will prepare the model for calibration, then it calls
		`run_fn` which will run the calibration step, after that we will
		convert the model to a quantized model.
		
		Args:
		    `model`: input float TorchScript model
		    `qconfig_dict`: qconfig_dict is a dictionary with names of sub modules as key and
		    qconfig for that module as value, empty key means the qconfig will be applied
		    to whole model unless it's overwritten by more specific configurations, the
		    qconfig for each module is either found in the dictionary or fallback to
		     the qconfig of parent module.
		
		    Right now qconfig_dict is the only way to configure how the model is quantized,
		    and it is done in the granularity of module, that is, we only support one type
		    of qconfig for each torch.nn.Module, and the qconfig for sub module will
		    override the qconfig for parent module, empty string means global configuration.
		    `run_fn`: a calibration function for calibrating the prepared model
		    `run_args`: positional arguments for `run_fn`
		    `inplace`: carry out model transformations in-place, the original module is
		    mutated
		    `debug`: flag for producing a debug friendly model (preserve weight attribute)
		
		Return:
		    Quantized TorchSciprt model.
		
		Example:
		```python
		import torch
		from torch.quantization import get_default_qconfig
		from torch.quantization import quantize_jit
		
		ts_model = torch.jit.script(float_model.eval())  # or torch.jit.trace(float_model, input)
		qconfig = get_default_qconfig('fbgemm')
		def calibrate(model, data_loader):
		    model.eval()
		    with torch.no_grad():
		        for image, target in data_loader:
		            model(image)
		
		quantized_model = quantize_jit(
		    ts_model,
		    {'': qconfig},
		    calibrate,
		    [data_loader_test])
		```
	**/
	static public function quantize_jit(model:Dynamic, qconfig_dict:Dynamic, run_fn:Dynamic, run_args:Dynamic, ?inplace:Dynamic, ?debug:Dynamic):Dynamic;
	/**
		Instantiate the activation and weight observer modules and script
		them, these observer module instances will be deepcopied during
		prepare_jit step.
	**/
	static public function script_qconfig(qconfig:Dynamic):Dynamic;
	/**
		Helper function used by `prepare_jit`.
		Apply `script_qconfig` for all entries in `qconfig_dict` that is
		not None.
	**/
	static public function script_qconfig_dict(qconfig_dict:Dynamic):Dynamic;
	/**
		Wrap this torch._C.ScriptModule in a Python ScriptModule, recursively for all submodules
	**/
	static public function wrap_cpp_module(cpp_module:Dynamic):Dynamic;
}