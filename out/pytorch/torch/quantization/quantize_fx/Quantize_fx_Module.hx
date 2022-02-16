/* This file is generated, do not edit! */
package torch.quantization.quantize_fx;
@:pythonImport("torch.quantization.quantize_fx") extern class Quantize_fx_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Argument(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Target(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_is_graph_module(model:Dynamic):Dynamic;
	/**
		`is_standalone_module`: see docs in :func:`~torch.quantization.prepare_standalone_module_fx`
		    
	**/
	static public function _convert_fx(graph_module:Dynamic, is_reference:Dynamic, ?convert_custom_config_dict:Dynamic, ?is_standalone_module:Dynamic, ?_remove_qconfig:Dynamic):Dynamic;
	/**
		[Internal use only] Convert a model produced by :func:`~torch.quantization.prepare_standalone_module_fx`
		and convert it to a quantized model
		
		Returns a quantized standalone module, whether input/output is quantized is
		specified by prepare_custom_config_dict, with
		input_quantized_idxs, output_quantized_idxs, please
		see docs for prepare_fx for details
	**/
	static public function _convert_standalone_module_fx(graph_module:Dynamic, ?is_reference:Dynamic, ?convert_custom_config_dict:Dynamic):Dynamic;
	/**
		Internal helper function to fuse modules in preparation for quantization
		
		Args:
		    graph_module: GraphModule object from symbolic tracing (torch.fx.symbolic_trace)
	**/
	static public function _fuse_fx(graph_module:Dynamic, ?fuse_custom_config_dict:Dynamic):Dynamic;
	/**
		Internal helper function for prepare_fx
		    Args:
		      `model`, `qconfig_dict`, `prepare_custom_config_dict`, `equalization_qonfig_dict`:
		      see docs for :func:`~torch.quantization.prepare_fx`
		      `is_standalone_module`: a boolean flag indicates whether we are
		      quantizing a standalone module or not, a standalone module
		      is a submodule of the parent module that is not inlined in the
		forward graph of the parent module,
		      the way we quantize standalone module is described in:
		      :func:`~torch.quantization._prepare_standalone_module_fx`
		    
	**/
	static public function _prepare_fx(model:Dynamic, qconfig_dict:Dynamic, ?prepare_custom_config_dict:Dynamic, ?equalization_qconfig_dict:Dynamic, ?backend_config_dict:Dynamic, ?is_standalone_module:Dynamic):Dynamic;
	/**
		[Internal use only] Prepare a standalone module, so that it can be used when quantizing the
		parent module.
		standalone_module means it a submodule that is not inlined in parent module,
		    and will be quantized separately as one unit.
		
		How the standalone module is observed is specified by `input_quantized_idxs` and
		`output_quantized_idxs` in the prepare_custom_config for the standalone module
		
		Returns:
		    model(GraphModule): prepared standalone module
		    attributes:
		        _standalone_module_input_quantized_idxs(List[Int]): a list of
		            indexes for the graph input that is expected to be quantized,
		            same as input_quantized_idxs configuration provided
		            for the standalone module
		        _standalone_module_output_quantized_idxs(List[Int]): a list of
		            indexs for the graph output that is quantized
		            same as input_quantized_idxs configuration provided
		            for the standalone module
	**/
	static public function _prepare_standalone_module_fx(model:Dynamic, qconfig_dict:Dynamic, ?prepare_custom_config_dict:Dynamic, ?backend_config_dict:Dynamic):Dynamic;
	/**
		Swap FloatFunctional with FXFloatFunctional
		    
	**/
	static public function _swap_ff_with_fxff(model:Dynamic):Dynamic;
	/**
		Checks if the given convert_custom_config_dict has the correct keys
		
		Args:
		  `convert_custom_config_dict`: dictionary for custom configurations for
		  convert function
	**/
	static public function check_is_valid_convert_custom_config_dict(?convert_custom_config_dict:Dynamic):Dynamic;
	/**
		Checks if the given fuse_custom_config_dict has the correct keys
		
		Args:
		  `fuse_custom_config_dict`: dictionary for custom configurations for fuse_fx
	**/
	static public function check_is_valid_fuse_custom_config_dict(?fuse_custom_config_dict:Dynamic):Dynamic;
	/**
		Checks if the given prepare_custom_config_dict has the correct keys
		
		Args:
		  `prepare_custom_config_dict`: customization configuration dictionary for
		  quantization tool
	**/
	static public function check_is_valid_prepare_custom_config_dict(?prepare_custom_config_dict:Dynamic):Dynamic;
	/**
		Checks if the given qconfig_dict has the correct keys
		
		Args:
		  `qconfig_dict`: dictionary whose keys we want to check
	**/
	static public function check_is_valid_qconfig_dict(qconfig_dict:Dynamic):Dynamic;
	/**
		standalone_module means it a submodule that is not inlined in
		parent module, and will be quantized separately as one unit.
		
		Returns a quantized standalone module, whether input/output is quantized is
		specified by prepare_custom_config_dict, with
		input_quantized_idxs, output_quantized_idxs, please
		see docs for prepare_fx for details
	**/
	static public function convert(model:Dynamic, ?is_reference:Dynamic, ?convert_custom_config_dict:Dynamic, ?is_standalone_module:Dynamic, ?_remove_qconfig_flag:Dynamic):Dynamic;
	/**
		Convert a calibrated or trained model to a quantized model
		Args:
		    `graph_module`: A prepared and calibrated/trained model (GraphModule)
		    `is_reference`: flag for whether to produce a reference quantized model,
		    which will be a common interface between pytorch quantization with
		    other backends like accelerators
		    `convert_custom_config_dict`: dictionary for custom configurations for convert function:
		    convert_custom_config_dict = {
		
		      # addtional object (module/operator) mappings that will overwrite the default
		      # module mappingn
		      "additional_object_mapping": {
		         "static": {
		            FloatModule: QuantizedModule,
		            float_op: quantized_op
		         },
		         "dynamic": {
		            FloatModule: DynamicallyQuantizedModule,
		            float_op: dynamically_quantized_op
		         },
		      },
		
		      # user will manually define the corresponding quantized
		      # module class which has a from_observed class method that converts
		      # observed custom module to quantized custom module
		      "observed_to_quantized_custom_module_class": {
		         "static": {
		             ObservedCustomModule: QuantizedCustomModule
		         },
		         "dynamic": {
		             ObservedCustomModule: QuantizedCustomModule
		         },
		         "weight_only": {
		             ObservedCustomModule: QuantizedCustomModule
		         }
		      },
		
		      # Attributes that are not used in forward function will
		      # be removed when constructing GraphModule, this is a list of attributes
		      # to preserve as an attribute of the GraphModule even when they are
		      # not used in the code
		      "preserved_attributes": ["preserved_attr"],
		    }
		    `_remove_qconfig`: Option to remove the qconfig attributes in the model after convert.
		
		Return:
		    A quantized model (GraphModule)
		
		Example:
		```python
		# prepared_model: the model after prepare_fx/prepare_qat_fx and calibration/training
		quantized_model = convert_fx(prepared_model)
		```
	**/
	static public function convert_fx(graph_module:Dynamic, ?is_reference:Dynamic, ?convert_custom_config_dict:Dynamic, ?_remove_qconfig:Dynamic):Dynamic;
	/**
		Fuse modules like conv+bn, conv+bn+relu etc, model must be in eval mode.
		Fusion rules are defined in torch.quantization.fx.fusion_pattern.py
		Args:
		    `model`: a torch.nn.Module model
		    `fuse_custom_config_dict`: Dictionary for custom configurations for fuse_fx, e.g.
		     fuse_custom_config_dict = {
		       "additional_fuser_method_mapping": {
		         (Module1, Module2): fuse_module1_module2
		       }
		
		       # Attributes that are not used in forward function will
		       # be removed when constructing GraphModule, this is a list of attributes
		       # to preserve as an attribute of the GraphModule even when they are
		       # not used in the code, these attributes will also persist through deepcopy
		       "preserved_attributes": ["preserved_attr"],
		     }
		
		Example:
		```python
		from torch.quantization import fuse_fx
		m = Model().eval()
		m = fuse_fx(m)
		```
	**/
	static public function fuse_fx(model:Dynamic, ?fuse_custom_config_dict:Dynamic):Dynamic;
	/**
		Get all the unique custom module keys in the custom config dict
		e.g.
		Input:
		custom_config_dict = {
		    "float_to_observed_custom_module_class": {
		       "static": {
		           CustomModule1: ObservedCustomModule
		       },
		       "dynamic": {
		           CustomModule2: DynamicObservedCustomModule
		       },
		       "weight_only": {
		           CustomModule3: WeightOnlyObservedCustomModule
		       },
		    },
		}
		
		Output:
		# extract all the keys in "static", "dynamic" and "weight_only" dict
		[CustomModule1, CustomModule2, CustomModule3]
	**/
	static public function get_custom_module_class_keys(custom_config_dict:Dynamic, custom_config_dict_key:Dynamic):Dynamic;
	/**
		Get the backend config dictionary for fbgemm backend
		NOTE: Current api will change in the future, it's just to unblock experimentation for
		new backends, please don't use it right now.
	**/
	static public function get_fbgemm_backend_config_dict():Dynamic;
	/**
		Get the backend config dictionary for tensorrt backend
		NOTE: Current api will change in the future, it's just to unblock experimentation for
		new backends, please don't use it right now.
	**/
	static public function get_tensorrt_backend_config_dict():Dynamic;
	/**
		Returns a printable representation of the ops in the graph of g.
		If shorten is True, tries to abbreviate fields.
	**/
	static public function graph_pretty_str(g:Dynamic, ?shorten:Dynamic):Dynamic;
	/**
		standalone_module means it a submodule that is not inlined in
		parent module, and will be quantized separately as one unit.
		
		How the standalone module is observed is specified by `input_quantized_idxs` and
		`output_quantized_idxs` in the prepare_custom_config for the standalone module
		Args:
		    node_name_to_scope: mapping from node name to the scope of the module which contains the node.
		    The scope is a tuple of fully qualified path of the module and the type of the module
		Returns:
		    model(GraphModule): prepared standalone module
		    attributes:
		        _standalone_module_input_quantized_idxs(List[Int]): a list of
		            indexes for the graph input that is expected to be quantized,
		            same as input_quantized_idxs configuration provided
		            for the standalone module
		        _standalone_module_output_quantized_idxs(List[Int]): a list of
		            indexs for the graph output that is quantized
		            same as input_quantized_idxs configuration provided
		            for the standalone module
	**/
	static public function prepare(model:Dynamic, qconfig_dict:Dynamic, node_name_to_scope:Dynamic, ?prepare_custom_config_dict:Dynamic, ?equalization_qconfig_dict:Dynamic, ?backend_config_dict:Dynamic, ?is_standalone_module:Dynamic):Dynamic;
	/**
		Prepare a model for post training static quantization
		
		Args:
		  `model`: torch.nn.Module model, must be in eval mode
		  `qconfig_dict`: qconfig_dict is a dictionary with the following configurations:
		  qconfig_dict = {
		  # optional, global config
		  "": qconfig?,
		
		  # optional, used for module and function types
		  # could also be split into module_types and function_types if we prefer
		  "object_type": [
		    (torch.nn.Conv2d, qconfig?),
		    (torch.nn.functional.add, qconfig?),
		    ...,
		   ],
		
		  # optional, used for module names
		  "module_name": [
		    ("foo.bar", qconfig?)
		    ...,
		  ],
		
		  # optional, matched in order, first match takes precedence
		  "module_name_regex": [
		    ("foo.*bar.*conv[0-9]+", qconfig?)
		    ...,
		  ],
		
		  # optional, used for matching object type invocations in a submodule by
		  # order
		  # TODO(future PR): potentially support multiple indices ('0,1') and/or
		  #   ranges ('0:3').
		  "module_name_object_type_order": [
		    # fully_qualified_name, object_type, index, qconfig
		    ("foo.bar", torch.nn.functional.linear, 0, qconfig?),
		  ],
		
		  # priority (in increasing order):
		  #   global, object_type, module_name_regex, module_name,
		  #   module_name_object_type_order
		  # qconfig == None means fusion and quantization should be skipped for anything
		  # matching the rule
		  }
		  `prepare_custom_config_dict`: customization configuration dictionary for
		  quantization tool:
		  prepare_custom_config_dict = {
		    # optional: specify the path for standalone modules
		    # These modules are symbolically traced and quantized as one unit
		    "standalone_module_name": [
		       # module_name, qconfig_dict, prepare_custom_config_dict
		       ("submodule.standalone",
		        None,  # qconfig_dict for the prepare function called in the submodule,
		               # None means use qconfig from parent qconfig_dict
		        {"input_quantized_idxs": [], "output_quantized_idxs": []})  # prepare_custom_config_dict
		    ],
		
		    "standalone_module_class": [
		        # module_class, qconfig_dict, prepare_custom_config_dict
		        (StandaloneModule,
		         None,  # qconfig_dict for the prepare function called in the submodule,
		                # None means use qconfig from parent qconfig_dict
		        {"input_quantized_idxs": [0], "output_quantized_idxs": [0]})  # prepare_custom_config_dict
		    ],
		
		    # user will manually define the corresponding observed
		    # module class which has a from_float class method that converts
		    # float custom module to observed custom module
		    # (only needed for static quantization)
		    "float_to_observed_custom_module_class": {
		       "static": {
		           CustomModule: ObservedCustomModule
		       }
		    },
		
		    # the qualified names for the submodule that are not symbolically traceable
		    "non_traceable_module_name": [
		       "non_traceable_module"
		    ],
		
		    # the module classes that are not symbolically traceable
		    # we'll also put dynamic/weight_only custom module here
		    "non_traceable_module_class": [
		       NonTraceableModule
		    ],
		
		    # Additional fuser_method mapping
		    "additional_fuser_method_mapping": {
		       (torch.nn.Conv2d, torch.nn.BatchNorm2d): fuse_conv_bn
		    },
		
		    # Additioanl module mapping for qat
		    "additional_qat_module_mapping": {
		       torch.nn.intrinsic.ConvBn2d: torch.nn.qat.ConvBn2d
		    },
		
		    # Additional fusion patterns
		    "additional_fusion_pattern": {
		       (torch.nn.BatchNorm2d, torch.nn.Conv2d): ConvReluFusionhandler
		    },
		
		    # Additional quantization patterns
		    "additional_quant_pattern": {
		       torch.nn.Conv2d: ConvReluQuantizeHandler,
		       (torch.nn.ReLU, torch.nn.Conv2d): ConvReluQuantizeHandler,
		    }
		
		    # By default, inputs and outputs of the graph are assumed to be in
		    # fp32. Providing `input_quantized_idxs` will set the inputs with the
		    # corresponding indices to be quantized. Providing
		    # `output_quantized_idxs` will set the outputs with the corresponding
		    # indices to be quantized.
		    "input_quantized_idxs": [0],
		    "output_quantized_idxs": [0],
		
		    # Attributes that are not used in forward function will
		    # be removed when constructing GraphModule, this is a list of attributes
		    # to preserve as an attribute of the GraphModule even when they are
		    # not used in the code, these attributes will also persist through deepcopy
		    "preserved_attributes": ["preserved_attr"],
		  }
		  `equalization_qconfig_dict`: equalization_qconfig_dict is a dictionary
		  with a similar structure as qconfig_dict except it will contain
		  configurations specific to equalization techniques such as input-weight
		  equalization.
		  `backend_config_dict`: a dictionary that specifies how operators are quantized
		   in a backend, this includes how the operaetors are observed,
		   supported fusion patterns, how quantize/dequantize ops are
		   inserted, supported dtypes etc. The structure of the dictionary is still WIP
		   and will change in the future, please don't use right now.
		
		
		Return:
		  A GraphModule with observer (configured by qconfig_dict), ready for calibration
		
		Example:
		```python
		import torch
		from torch.quantization import get_default_qconfig
		from torch.quantization import prepare_fx
		
		float_model.eval()
		qconfig = get_default_qconfig('fbgemm')
		def calibrate(model, data_loader):
		    model.eval()
		    with torch.no_grad():
		        for image, target in data_loader:
		            model(image)
		
		qconfig_dict = {"": qconfig}
		prepared_model = prepare_fx(float_model, qconfig_dict)
		# Run calibration
		calibrate(prepared_model, sample_inference_data)
		```
	**/
	static public function prepare_fx(model:Dynamic, qconfig_dict:Dynamic, ?prepare_custom_config_dict:Dynamic, ?equalization_qconfig_dict:Dynamic, ?backend_config_dict:Dynamic):Dynamic;
	/**
		Prepare a model for quantization aware training
		Args:
		  `model`: torch.nn.Module model, must be in train mode
		  `qconfig_dict`: see :func:`~torch.quantization.prepare_fx`
		  `prepare_custom_config_dict`: see :func:`~torch.quantization.prepare_fx`
		  `backend_config_dict`: see :func:`~torch.quantization.prepare_fx`
		
		Return:
		  A GraphModule with fake quant modules (configured by qconfig_dict), ready for
		  quantization aware training
		
		Example:
		```python
		import torch
		from torch.quantization import get_default_qat_qconfig
		from torch.quantization import prepare_fx
		
		qconfig = get_default_qat_qconfig('fbgemm')
		def train_loop(model, train_data):
		    model.train()
		    for image, target in data_loader:
		        ...
		
		float_model.train()
		qconfig_dict = {"": qconfig}
		prepared_model = prepare_fx(float_model, qconfig_dict)
		# Run calibration
		train_loop(prepared_model, train_loop)
		```
	**/
	static public function prepare_qat_fx(model:Dynamic, qconfig_dict:Dynamic, ?prepare_custom_config_dict:Dynamic, ?backend_config_dict:Dynamic):Dynamic;
}