/* This file is generated, do not edit! */
package torch.ao.quantization.fuse_modules;
@:pythonImport("torch.ao.quantization.fuse_modules") extern class Fuse_modules_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _fuse_modules(model:Dynamic, modules_to_fuse:Dynamic, ?fuser_func:Dynamic, ?fuse_custom_config_dict:Dynamic):Dynamic;
	static public function _get_module(model:Dynamic, submodule_key:Dynamic):Dynamic;
	static public function _set_module(model:Dynamic, submodule_key:Dynamic, module:Dynamic):Dynamic;
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
		Returns a list of modules that fuses the operations specified
		 in the input module list.
		
		Fuses only the following sequence of modules:
		conv, bn
		conv, bn, relu
		conv, relu
		linear, bn
		linear, relu
		For these sequences, the first element in the output module list performs
		the fused operation. The rest of the elements are set to nn.Identity()
	**/
	static public function fuse_known_modules(mod_list:Dynamic, ?additional_fuser_method_mapping:Dynamic):Dynamic;
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
		Get fuser method for the given list of module types,
		return None if fuser method does not exist
	**/
	static public function get_fuser_method(op_list:Dynamic, ?additional_fuser_method_mapping:Dynamic):Dynamic;
}