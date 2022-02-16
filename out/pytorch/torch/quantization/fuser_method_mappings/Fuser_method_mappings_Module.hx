/* This file is generated, do not edit! */
package torch.quantization.fuser_method_mappings;
@:pythonImport("torch.quantization.fuser_method_mappings") extern class Fuser_method_mappings_Module {
	static public var DEFAULT_OP_LIST_TO_FUSER_METHOD : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Get fuser method for the given list of module types,
		return None if fuser method does not exist
	**/
	static public function get_fuser_method(op_list:Dynamic, ?additional_fuser_method_mapping:Dynamic):Dynamic;
}