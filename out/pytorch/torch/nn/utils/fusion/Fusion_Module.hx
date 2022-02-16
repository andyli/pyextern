/* This file is generated, do not edit! */
package torch.nn.utils.fusion;
@:pythonImport("torch.nn.utils.fusion") extern class Fusion_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function fuse_conv_bn_eval(conv:Dynamic, bn:Dynamic):Dynamic;
	static public function fuse_conv_bn_weights(conv_w:Dynamic, conv_b:Dynamic, bn_rm:Dynamic, bn_rv:Dynamic, bn_eps:Dynamic, bn_w:Dynamic, bn_b:Dynamic):Dynamic;
	static public function fuse_linear_bn_eval(linear:Dynamic, bn:Dynamic):Dynamic;
	static public function fuse_linear_bn_weights(linear_w:Dynamic, linear_b:Dynamic, bn_rm:Dynamic, bn_rv:Dynamic, bn_eps:Dynamic, bn_w:Dynamic, bn_b:Dynamic):Dynamic;
}