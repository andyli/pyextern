/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.vector_student_t;
@:pythonImport("tensorflow.contrib.distributions.python.ops.vector_student_t") extern class Vector_student_t_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper which returns batch_shape, event_shape from `Affine` properties.
		
		The `Affine` `Bijector` (roughly) computes `Y = scale @ X.T + shift`. This
		function infers the `batch_shape` and `event_shape` from the `scale` and
		`shift` terms.
		
		Args:
		  scale_oppd: Instance of OperatorPDBase subclass representing the `Affine`
		    `Bijector` scale matrix.
		  shift: `Tensor` representing the `shift` vector.
		
		Returns:
		  batch_shape: 1D, integer `Tensor` representing the shape of batch
		    dimensions.
		  event_shape: 1D, integer `Tensor` representing the shape of event
		    dimensions.
		
		Raises:
		  ValueError: if we are not able to infer batch/event shapes from the args.
	**/
	static public function _infer_shapes(scale_oppd:Dynamic, shift:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}