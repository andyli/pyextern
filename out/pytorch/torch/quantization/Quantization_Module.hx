/* This file is generated, do not edit! */
package torch.quantization;
@:pythonImport("torch.quantization") extern class Quantization_Module {
	static public var DEFAULT_DYNAMIC_QUANT_MODULE_MAPPINGS : Dynamic;
	static public var DEFAULT_FLOAT_TO_QUANTIZED_OPERATOR_MAPPINGS : Dynamic;
	static public var DEFAULT_MODULE_TO_ACT_POST_PROCESS : Dynamic;
	static public var DEFAULT_OP_LIST_TO_FUSER_METHOD : Dynamic;
	static public var DEFAULT_QAT_MODULE_MAPPINGS : Dynamic;
	static public var DEFAULT_REFERENCE_STATIC_QUANT_MODULE_MAPPINGS : Dynamic;
	static public var DEFAULT_STATIC_QUANT_MODULE_MAPPINGS : Dynamic;
	static public function QConfigAny(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _all__ : Dynamic;
	/**
		This is a helper function for use in quantization prepare that updates a qconfig so that
		the constructors stored in the qconfig will create observers on the same device that
		'module' is on. This is intended to be used when the qconfigs are propagated to each
		module in order to avoid potential device alignment issues.
		
		Args:
		    qconfig: QConfig or QConfigDynamic with obs constructors stored in activation and weight
		    module: module which the qconfig is related to
		
		Return:
		    qconfig: configured so that obs constructors set to construct on the same device as module
	**/
	static public function add_module_to_qconfig_obs_ctr(qconfig:Dynamic, module:Dynamic):Dynamic;
	/**
		Add observer for the leaf child of the module.
		
		This function insert observer module to all leaf child module that
		has a valid qconfig attribute.
		
		Args:
		    module: input module with qconfig attributes for all the leaf modules that we want to quantize
		    device: parent device, if any
		    non_leaf_module_list: list of non-leaf modules we want to add observer
		
		Return:
		    None, module is modified inplace with added observer modules and forward_hooks
	**/
	static public function add_observer_(module:Dynamic, ?qconfig_propagation_list:Dynamic, ?non_leaf_module_list:Dynamic, ?device:Dynamic, ?custom_module_class_mapping:Dynamic):Dynamic;
	/**
		Wrap the leaf child module in QuantWrapper if it has a valid qconfig
		Note that this function will modify the children of module inplace and it
		can return a new module which wraps the input module as well.
		
		Args:
		    module: input module with qconfig attributes for all the leaf modules
		    that we want to quantize
		
		Return:
		    Either the inplace modified module with submodules wrapped in
		    `QuantWrapper` based on qconfig or a new `QuantWrapper` module which
		    wraps the input module, the latter case only happens when the input
		    module is a leaf module and we want to quantize it.
	**/
	static public function add_quant_dequant(module:Dynamic):Dynamic;
	static public function assert_valid_qconfig(qconfig:Dynamic, mod:Dynamic):Dynamic;
	/**
		Converts submodules in input module to a different module according to `mapping`
		by calling `from_float` method on the target module class. And remove qconfig at the
		end if remove_qconfig is set to True.
		
		Args:
		    `module`: prepared and calibrated module
		    `mapping`: a dictionary that maps from source module type to target
		               module type, can be overwritten to allow swapping user defined
		               Modules
		    `inplace`: carry out model transformations in-place, the original module
		               is mutated
		    `convert_custom_config_dict`: custom configuration dictionary for convert function
		
		.. code-block:: python
		
		   # Example of convert_custom_config_dict:
		   convert_custom_config_dict = {
		       # user will manually define the corresponding quantized
		       # module class which has a from_observed class method that converts
		       # observed custom module to quantized custom module
		       "observed_to_quantized_custom_module_class": {
		           ObservedCustomModule: QuantizedCustomModule
		       }
		   }
	**/
	static public function convert(module:Dynamic, ?mapping:Dynamic, ?inplace:Dynamic, ?remove_qconfig:Dynamic, ?convert_custom_config_dict:Dynamic):Dynamic;
	static public function convert_dynamic_jit(model:Dynamic, ?inplace:Dynamic, ?debug:Dynamic, ?preserved_attrs:Dynamic):Dynamic;
	static public function convert_jit(model:Dynamic, ?inplace:Dynamic, ?debug:Dynamic, ?preserved_attrs:Dynamic):Dynamic;
	static public var default_activation_only_qconfig : Dynamic;
	static public function default_affine_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var default_debug_qconfig : Dynamic;
	static public var default_dynamic_qconfig : Dynamic;
	static public function default_dynamic_quant_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	/**
		Default evaluation function takes a torch.utils.data.Dataset or a list of
		input Tensors and run the model on the dataset
	**/
	static public function default_eval_fn(model:Dynamic, calib_data:Dynamic):Dynamic;
	static public function default_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_float_qparams_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_act_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_per_channel_wt_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_wt_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_histogram_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_histogram_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var default_per_channel_qconfig : Dynamic;
	static public function default_per_channel_weight_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_per_channel_weight_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var default_qat_qconfig : Dynamic;
	static public var default_qat_qconfig_v2 : Dynamic;
	static public var default_qconfig : Dynamic;
	static public function default_symmetric_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_weight_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_weight_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var default_weight_only_qconfig : Dynamic;
	static public function disable_fake_quant(mod:Dynamic):Dynamic;
	static public function disable_observer(mod:Dynamic):Dynamic;
	static public function enable_fake_quant(mod:Dynamic):Dynamic;
	static public function enable_observer(mod:Dynamic):Dynamic;
	static public var float16_dynamic_qconfig : Dynamic;
	static public var float16_static_qconfig : Dynamic;
	static public var float_qparams_weight_only_qconfig : Dynamic;
	/**
		Given the conv and bn modules, fuses them and returns the fused module
		
		Args:
		    conv: Module instance of type conv2d/conv3d
		    bn: Spatial BN instance that needs to be fused with the conv
		
		Examples::
		
		    >>> m1 = nn.Conv2d(10, 20, 3)
		    >>> b1 = nn.BatchNorm2d(20)
		    >>> m2 = fuse_conv_bn(m1, b1)
	**/
	static public function fuse_conv_bn(conv:Dynamic, bn:Dynamic):Dynamic;
	/**
		Fuse conv - bn module
		Works for eval model only.
		
		Args:
		    model: TorchScript model from scripting or tracing
	**/
	static public function fuse_conv_bn_jit(model:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Given the conv and bn modules, fuses them and returns the fused module
		
		Args:
		    conv: Module instance of type conv2d/conv3d
		    bn: Spatial BN instance that needs to be fused with the conv
		
		Examples::
		
		    >>> m1 = nn.Conv2d(10, 20, 3)
		    >>> b1 = nn.BatchNorm2d(20)
		    >>> r1 = nn.ReLU(inplace=False)
		    >>> m2 = fuse_conv_bn_relu(m1, b1, r1)
	**/
	static public function fuse_conv_bn_relu(conv:Dynamic, bn:Dynamic, relu:Dynamic):Dynamic;
	/**
		Given the linear and bn modules, fuses them and returns the fused module
		
		Args:
		    linear: Module instance of type Linear
		    bn: BatchNorm1d instance that needs to be fused with the linear layer
		
		Examples::
		
		    >>> m1 = nn.Linear(20, 10)
		    >>> b1 = nn.BatchNorm1d(10)
		    >>> m2 = fuse_linear_bn(m1, b1)
	**/
	static public function fuse_linear_bn(linear:Dynamic, bn:Dynamic):Dynamic;
	/**
		Fuses a list of modules into a single module
		
		Fuses only the following sequence of modules:
		conv, bn
		conv, bn, relu
		conv, relu
		linear, relu
		bn, relu
		All other sequences are left unchanged.
		For these sequences, replaces the first item in the list
		with the fused module, replacing the rest of the modules
		with identity.
		
		Args:
		    model: Model containing the modules to be fused
		    modules_to_fuse: list of list of module names to fuse. Can also be a list
		                     of strings if there is only a single list of modules to fuse.
		    inplace: bool specifying if fusion happens in place on the model, by default
		             a new model is returned
		    fuser_func: Function that takes in a list of modules and outputs a list of fused modules
		                of the same length. For example,
		                fuser_func([convModule, BNModule]) returns the list [ConvBNModule, nn.Identity()]
		                Defaults to torch.quantization.fuse_known_modules
		    `fuse_custom_config_dict`: custom configuration for fusion
		
		.. code-block:: python
		
		   # Example of fuse_custom_config_dict
		   fuse_custom_config_dict = {
		       # Additional fuser_method mapping
		       "additional_fuser_method_mapping": {
		           (torch.nn.Conv2d, torch.nn.BatchNorm2d): fuse_conv_bn
		       },
		   }
		
		Returns:
		    model with fused modules. A new copy is created if inplace=True.
		
		Examples::
		
		        >>> m = myModel()
		        >>> # m is a module containing  the sub-modules below
		        >>> modules_to_fuse = [ ['conv1', 'bn1', 'relu1'], ['submodule.conv', 'submodule.relu']]
		        >>> fused_m = torch.ao.quantization.fuse_modules(m, modules_to_fuse)
		        >>> output = fused_m(input)
		
		        >>> m = myModel()
		        >>> # Alternately provide a single list of modules to fuse
		        >>> modules_to_fuse = ['conv1', 'bn1', 'relu1']
		        >>> fused_m = torch.ao.quantization.fuse_modules(m, modules_to_fuse)
		        >>> output = fused_m(input)
	**/
	static public function fuse_modules(model:Dynamic, modules_to_fuse:Dynamic, ?inplace:Dynamic, ?fuser_func:Dynamic, ?fuse_custom_config_dict:Dynamic):Dynamic;
	/**
		Get list of module class types that we will record output
		in numeric suite
	**/
	static public function get_default_compare_output_module_list():Dynamic;
	/**
		Get module mapping for post training dynamic quantization
		    
	**/
	static public function get_default_dynamic_quant_module_mappings():Dynamic;
	static public function get_default_float_to_quantized_operator_mappings():Dynamic;
	/**
		Get default module mapping for quantization aware training
		    
	**/
	static public function get_default_qat_module_mappings():Dynamic;
	static public function get_default_qat_qconfig(?backend:Dynamic, ?version:Dynamic):Dynamic;
	static public function get_default_qconfig(?backend:Dynamic):Dynamic;
	/**
		Get the default list of module types that we'll attach qconfig
		attribute to in prepare
	**/
	static public function get_default_qconfig_propagation_list():Dynamic;
	/**
		Get module mapping for post training static quantization
		    
	**/
	static public function get_default_static_quant_module_mappings():Dynamic;
	/**
		n Get the dynamically quantized module class corresponding to
		the floating point module class
	**/
	static public function get_dynamic_quant_module_class(float_module_class:Dynamic, ?additional_dynamic_quant_mapping:Dynamic):Dynamic;
	/**
		Get fuser method for the given list of module types,
		return None if fuser method does not exist
	**/
	static public function get_fuser_method(op_list:Dynamic, ?additional_fuser_method_mapping:Dynamic):Dynamic;
	/**
		Traverse the modules and save all observers into dict.
		This is mainly used for quantization accuracy debug
		Args:
		    mod: the top module we want to save all observers
		    prefix: the prefix for the current module
		    target_dict: the dictionary used to save all the observers
	**/
	static public function get_observer_dict(mod:Dynamic, target_dict:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Returns the state dict corresponding to the observer stats.
		Traverse the model state_dict and extract out the stats.
	**/
	static public function get_observer_state_dict(mod:Dynamic):Dynamic;
	/**
		Get the quantized operator corresponding to the float operator
		    
	**/
	static public function get_quantized_operator(float_op:Dynamic):Dynamic;
	/**
		n Get the statically quantized module class corresponding to
		the floating point module class
	**/
	static public function get_static_quant_module_class(float_module_class:Dynamic, ?additional_static_quant_mapping:Dynamic, ?is_reference:Dynamic):Dynamic;
	static public function get_unique_devices_(module:Dynamic):Dynamic;
	static public function is_activation_post_process(module:Dynamic):Dynamic;
	/**
		Given input model and a state_dict containing model observer stats,
		load the stats back into the model. The observer state_dict can be saved
		using torch.quantization.get_observer_state_dict
	**/
	static public function load_observer_state_dict(mod:Dynamic, obs_dict:Dynamic):Dynamic;
	/**
		These modules cannot have observers inserted by default.
	**/
	static public function no_observer_set():Dynamic;
	static public var per_channel_dynamic_qconfig : Dynamic;
	/**
		Prepares a copy of the model for quantization calibration or quantization-aware training.
		
		Quantization configuration should be assigned preemptively
		to individual submodules in `.qconfig` attribute.
		
		The model will be attached with observer or fake quant modules, and qconfig
		will be propagated.
		
		Args:
		    `model`: input model to be modified in-place
		    `inplace`: carry out model transformations in-place, the original module is mutated
		    `allow_list`: list of quantizable modules
		    `observer_non_leaf_module_list`: list of non-leaf modules we want to add observer
		    `prepare_custom_config_dict`: customization configuration dictionary for prepare function
		
		.. code-block:: python
		
		   # Example of prepare_custom_config_dict:
		   prepare_custom_config_dict = {
		       # user will manually define the corresponding observed
		       # module class which has a from_float class method that converts
		       # float custom module to observed custom module
		       "float_to_observed_custom_module_class": {
		           CustomModule: ObservedCustomModule
		       }
		    }
	**/
	static public function prepare(model:Dynamic, ?inplace:Dynamic, ?allow_list:Dynamic, ?observer_non_leaf_module_list:Dynamic, ?prepare_custom_config_dict:Dynamic):Dynamic;
	static public function prepare_dynamic_jit(model:Dynamic, qconfig_dict:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function prepare_jit(model:Dynamic, qconfig_dict:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Prepares a copy of the model for quantization calibration or
		quantization-aware training and converts it to quantized version.
		
		Quantization configuration should be assigned preemptively
		to individual submodules in `.qconfig` attribute.
		
		Args:
		    model: input model to be modified in-place
		    mapping: dictionary that maps float modules to quantized modules to be
		             replaced.
		    inplace: carry out model transformations in-place, the original module
		             is mutated
	**/
	static public function prepare_qat(model:Dynamic, ?mapping:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Propagate qconfig through the module hierarchy and assign `qconfig`
		attribute on each leaf module
		
		Args:
		    module: input module
		    qconfig_dict: dictionary that maps from name or type of submodule to
		        quantization configuration, qconfig applies to all submodules of a
		        given module unless qconfig for the submodules are specified (when
		        the submodule already has qconfig attribute)
		
		Return:
		    None, module is modified inplace with qconfig attached
	**/
	static public function propagate_qconfig_(module:Dynamic, ?qconfig_dict:Dynamic, ?allow_list:Dynamic):Dynamic;
	static public function qconfig_equals(q1:Dynamic, q2:Dynamic):Dynamic;
	static public function quant_type_to_str(quant_type:Dynamic):Dynamic;
	/**
		Quantize the input float model with post training static quantization.
		
		First it will prepare the model for calibration, then it calls
		`run_fn` which will run the calibration step, after that we will
		convert the model to a quantized model.
		
		Args:
		    model: input float model
		    run_fn: a calibration function for calibrating the prepared model
		    run_args: positional arguments for `run_fn`
		    inplace: carry out model transformations in-place, the original module is mutated
		    mapping: correspondence between original module types and quantized counterparts
		
		Return:
		    Quantized model.
	**/
	static public function quantize(model:Dynamic, run_fn:Dynamic, run_args:Dynamic, ?mapping:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Converts a float model to dynamic (i.e. weights-only) quantized model.
		
		Replaces specified modules with dynamic weight-only quantized versions and output the quantized model.
		
		For simplest usage provide `dtype` argument that can be float16 or qint8. Weight-only quantization
		by default is performed for layers with large weights size - i.e. Linear and RNN variants.
		
		Fine grained control is possible with `qconfig` and `mapping` that act similarly to `quantize()`.
		If `qconfig` is provided, the `dtype` argument is ignored.
		
		Args:
		    model: input model
		    qconfig_spec: Either:
		
		        - A dictionary that maps from name or type of submodule to quantization
		          configuration, qconfig applies to all submodules of a given
		          module unless qconfig for the submodules are specified (when the
		          submodule already has qconfig attribute). Entries in the dictionary
		          need to be QConfigDynamic instances.
		
		        - A set of types and/or submodule names to apply dynamic quantization to,
		          in which case the `dtype` argument is used to specify the bit-width
		
		    inplace: carry out model transformations in-place, the original module is mutated
		    mapping: maps type of a submodule to a type of corresponding dynamically quantized version
		        with which the submodule needs to be replaced
	**/
	static public function quantize_dynamic(model:Dynamic, ?qconfig_spec:Dynamic, ?dtype:Dynamic, ?mapping:Dynamic, ?inplace:Dynamic):Dynamic;
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
		Do quantization aware training and output a quantized model
		
		Args:
		    model: input model
		    run_fn: a function for evaluating the prepared model, can be a
		            function that simply runs the prepared model or a training
		            loop
		    run_args: positional arguments for `run_fn`
		
		Return:
		    Quantized model.
	**/
	static public function quantize_qat(model:Dynamic, run_fn:Dynamic, run_args:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function register_activation_post_process_hook(module:Dynamic):Dynamic;
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
		Swaps the module if it has a quantized counterpart and it has an
		`observer` attached.
		
		Args:
		    mod: input module
		    mapping: a dictionary that maps from nn module to nnq module
		
		Return:
		    The corresponding quantized module of `mod`
	**/
	static public function swap_module(mod:Dynamic, mapping:Dynamic, custom_module_class_mapping:Dynamic):Dynamic;
}