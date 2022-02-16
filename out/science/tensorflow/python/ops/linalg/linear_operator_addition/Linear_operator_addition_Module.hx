/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.linear_operator_addition;
@:pythonImport("tensorflow.python.ops.linalg.linear_operator_addition") extern class Linear_operator_addition_Module {
	static public var SUPPORTED_OPERATORS : Dynamic;
	static public var _DEFAULT_ADDITION_TIERS : Dynamic;
	static public var _DIAG : Dynamic;
	static public var _DIAG_LIKE : Dynamic;
	static public var _EFFICIENT_ADD_TO_TENSOR : Dynamic;
	static public var _IDENTITY : Dynamic;
	static public var _IDENTITY_FAMILY : Dynamic;
	static public var _MATRIX : Dynamic;
	static public var _SCALED_IDENTITY : Dynamic;
	static public var _TRIL : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Infer hints from op1 and op2.  hints argument is an override.
		
		Args:
		  op1:  LinearOperator
		  op2:  LinearOperator
		  hints:  _Hints object holding "is_X" boolean hints to use for returned
		    operator.
		    If some hint is None, try to set using op1 and op2.  If the
		    hint is provided, ignore op1 and op2 hints.  This allows an override
		    of previous hints, but does not allow forbidden hints (e.g. you still
		    cannot say a real diagonal operator is not self-adjoint.
		
		Returns:
		  _Hints object.
	**/
	static public function _infer_hints_allowing_override(op1:Dynamic, op2:Dynamic, hints:Dynamic):Dynamic;
	static public function _pop_a_match_at_tier(op1:Dynamic, operator_list:Dynamic, tier:Dynamic):Dynamic;
	/**
		ValueError if operators determined to have non-broadcastable shapes.
	**/
	static public function _static_check_for_broadcastable_batch_shape(operators:Dynamic):Dynamic;
	/**
		ValueError if operators determined to have different dimensions.
	**/
	static public function _static_check_for_same_dimensions(operators:Dynamic):Dynamic;
	/**
		Returns the type name constant (e.g. _TRIL) for operator.
	**/
	static public function _type(_operator:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Efficiently add one or more linear operators.
		
		Given operators `[A1, A2,...]`, this `Op` returns a possibly shorter list of
		operators `[B1, B2,...]` such that
		
		```sum_k Ak.matmul(x) = sum_k Bk.matmul(x).```
		
		The operators `Bk` result by adding some of the `Ak`, as allowed by
		`addition_tiers`.
		
		Example of efficient adding of diagonal operators.
		
		```python
		A1 = LinearOperatorDiag(diag=[1., 1.], name="A1")
		A2 = LinearOperatorDiag(diag=[2., 2.], name="A2")
		
		# Use two tiers, the first contains an Adder that returns Diag.  Since both
		# A1 and A2 are Diag, they can use this Adder.  The second tier will not be
		# used.
		addition_tiers = [
		    [_AddAndReturnDiag()],
		    [_AddAndReturnMatrix()]]
		B_list = add_operators([A1, A2], addition_tiers=addition_tiers)
		
		len(B_list)
		==> 1
		
		B_list[0].__class__.__name__
		==> 'LinearOperatorDiag'
		
		B_list[0].to_dense()
		==> [[3., 0.],
		     [0., 3.]]
		
		B_list[0].name
		==> 'Add/A1__A2/'
		```
		
		Args:
		  operators:  Iterable of `LinearOperator` objects with same `dtype`, domain
		    and range dimensions, and broadcastable batch shapes.
		  operator_name:  String name for returned `LinearOperator`.  Defaults to
		    concatenation of "Add/A__B/" that indicates the order of addition steps.
		  addition_tiers:  List tiers, like `[tier_0, tier_1, ...]`, where `tier_i`
		    is a list of `Adder` objects.  This function attempts to do all additions
		    in tier `i` before trying tier `i + 1`.
		  name:  A name for this `Op`.  Defaults to `add_operators`.
		
		Returns:
		  Subclass of `LinearOperator`.  Class and order of addition may change as new
		    (and better) addition strategies emerge.
		
		Raises:
		  ValueError:  If `operators` argument is empty.
		  ValueError:  If shapes are incompatible.
	**/
	static public function add_operators(operators:Dynamic, ?operator_name:Dynamic, ?addition_tiers:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}