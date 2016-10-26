/* This file is generated, do not edit! */
package tensorflow.models.image.cifar10.cifar10_multi_gpu_train;
@:pythonImport("tensorflow.models.image.cifar10.cifar10_multi_gpu_train") extern class Cifar10_multi_gpu_train_Module {
	static public var FLAGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Calculate the average gradient for each shared variable across all towers.
		
		Note that this function provides a synchronization point across all towers.
		
		Args:
		  tower_grads: List of lists of (gradient, variable) tuples. The outer list
		    is over individual gradients. The inner list is over the gradient
		    calculation for each tower.
		Returns:
		   List of pairs of (gradient, variable) where the gradient has been averaged
		   across all towers.
	**/
	static public function average_gradients(tower_grads:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function main(?argv:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Calculate the total loss on a single tower running the CIFAR model.
		
		Args:
		  scope: unique prefix string identifying the CIFAR tower, e.g. 'tower_0'
		
		Returns:
		   Tensor of shape [] containing the total loss for a batch of data
	**/
	static public function tower_loss(scope:Dynamic):Dynamic;
	/**
		Train CIFAR-10 for a number of steps.
	**/
	static public function train():Dynamic;
}