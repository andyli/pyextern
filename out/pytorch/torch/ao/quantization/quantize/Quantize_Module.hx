/* This file is generated, do not edit! */
package torch.ao.quantization.quantize;
@:pythonImport("torch.ao.quantization.quantize") extern class Quantize_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts submodules in input module to a different module according to `mapping`
		by calling `from_float` method on the target module class
		
		Args:
		    module: input module
		    mapping: a dictionary that maps from source module type to target
		             module type, can be overwritten to allow swapping user defined
		             Modules
		    inplace: carry out model transformations in-place, the original module
		             is mutated
	**/
	static public function _convert(module:Dynamic, ?mapping:Dynamic, ?inplace:Dynamic, ?convert_custom_config_dict:Dynamic):Dynamic;
	/**
		Get the special activation post process for `module`, this has
		higher priority than the activation post process in `qconfig`
		e.g.
		input: torch.nn.Sigmoid
		output: default_affine_fixed_qparam_fake_quant
	**/
	static public function _get_special_act_post_process(module:Dynamic):Dynamic;
	static public function _has_special_act_post_process(module:Dynamic):Dynamic;
	/**
		Forward hook that calls observer on the output
		    
	**/
	static public function _observer_forward_hook(self:Dynamic, input:Dynamic, output:Dynamic):Dynamic;
	/**
		This is a helper function for `propagate_qconfig_`
		
		Args:
		    module: input module
		    qconfig_dict: dictionary that maps from name of submodule to quantization
		                 configuration
		    allow_list: list of quantizable modules
		    qconfig_parent: quantization config of parent module, we will fallback to
		                   this config when there is no specified config for current
		                   module
		    prefix: corresponding prefix of the current module, used as key in
		            qconfig_dict
		
		Return:
		    None, module is modified inplace with qconfig attached
	**/
	static public function _propagate_qconfig_helper(module:Dynamic, qconfig_dict:Dynamic, ?allow_list:Dynamic, ?qconfig_parent:Dynamic, ?prefix:Dynamic):Dynamic;
	static public function _remove_activation_post_process(module:Dynamic):Dynamic;
	/**
		Clean up the qconfig left in the module so that new qconfig can be
		propagated.
		
		Args:
		    module: module to be cleaned up
	**/
	static public function _remove_qconfig(module:Dynamic):Dynamic;
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
	static public var default_dynamic_qconfig : Dynamic;
	static public var float16_dynamic_qconfig : Dynamic;
	static public var float_qparams_weight_only_qconfig : Dynamic;
	/**
		Get module mapping for post training dynamic quantization
		    
	**/
	static public function get_default_dynamic_quant_module_mappings():Dynamic;
	/**
		Get default module mapping for quantization aware training
		    
	**/
	static public function get_default_qat_module_mappings():Dynamic;
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
		Traverse the modules and save all observers into dict.
		This is mainly used for quantization accuracy debug
		Args:
		    mod: the top module we want to save all observers
		    prefix: the prefix for the current module
		    target_dict: the dictionary used to save all the observers
	**/
	static public function get_observer_dict(mod:Dynamic, target_dict:Dynamic, ?prefix:Dynamic):Dynamic;
	static public function get_unique_devices_(module:Dynamic):Dynamic;
	static public function is_activation_post_process(module:Dynamic):Dynamic;
	/**
		These modules cannot have observers inserted by default.
	**/
	static public function no_observer_set():Dynamic;
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