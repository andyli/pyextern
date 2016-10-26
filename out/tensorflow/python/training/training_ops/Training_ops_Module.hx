/* This file is generated, do not edit! */
package tensorflow.python.training.training_ops;
@:pythonImport("tensorflow.python.training.training_ops") extern class Training_ops_Module {
	/**
		Shape function for the ApplyAdadelta op.
	**/
	static public function _ApplyAdadeltaShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ApplyAdagrad op.
	**/
	static public function _ApplyAdagradShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ApplyAdam op.
	**/
	static public function _ApplyAdamShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ApplyFtrlOp op.
	**/
	static public function _ApplyFtrlShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ApplyGradientDescent op.
	**/
	static public function _ApplyGradientDescentShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ApplyMomentum op.
	**/
	static public function _ApplyMomentumShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ApplyProximalAdagrad op.
	**/
	static public function _ApplyProximalAdagradShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ApplyProximalGradientDescent op.
	**/
	static public function _ApplyProximalGradientDescentShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ApplyRMSProp op.
	**/
	static public function _ApplyRMSPropShape(op:Dynamic):Dynamic;
	/**
		Raises ValueError if `op.inputs[index]` is not scalar.
	**/
	static public function _AssertInputIsScalar(op:Dynamic, index:Dynamic):Dynamic;
	/**
		Shape function for the SparseApplyAdadelta op.
	**/
	static public function _SparseApplyAdadeltaShape(op:Dynamic):Dynamic;
	/**
		Shape function for the SparseApplyAdagrad op.
	**/
	static public function _SparseApplyAdagradShape(op:Dynamic):Dynamic;
	/**
		Shape function for the SparseApplyFtrl op.
	**/
	static public function _SparseApplyFtrlShape(op:Dynamic):Dynamic;
	/**
		Shape function for the SparseApplyMomentum op.
	**/
	static public function _SparseApplyMomentumShape(op:Dynamic):Dynamic;
	/**
		Shape function for the SparseApplyProximalAdagrad op.
	**/
	static public function _SparseApplyProximalAdagradShape(op:Dynamic):Dynamic;
	/**
		Shape function for the SparseApplyGradientDescent op.
	**/
	static public function _SparseApplyProximalGradientDescentShape(op:Dynamic):Dynamic;
	/**
		Shape function for the SparseApplyRMSProp op.
	**/
	static public function _SparseApplyRMSPropShape(op:Dynamic):Dynamic;
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
		Update '*var' according to the adadelta scheme.
		
		accum = rho() * accum + (1 - rho()) * grad.square();
		update = (update_accum + epsilon).sqrt() * (accum + epsilon()).rsqrt() * grad;
		update_accum = rho() * update_accum + (1 - rho()) * update.square();
		var -= update;
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  accum_update: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `var`.
		    Decay factor. Must be a scalar.
		  epsilon: A `Tensor`. Must have the same type as `var`.
		    Constant factor. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var, accum and update_accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function apply_adadelta(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' according to the adagrad scheme.
		
		accum += grad * grad
		var -= lr * grad * (1 / sqrt(accum))
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function apply_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' according to the Adam algorithm.
		
		lr_t <- learning_rate * sqrt(1 - beta2^t) / (1 - beta1^t)
		m_t <- beta1 * m_{t-1} + (1 - beta1) * g_t
		v_t <- beta2 * v_{t-1} + (1 - beta2) * g_t * g_t
		variable <- variable - lr_t * m_t / (sqrt(v_t) + epsilon)
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  m: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  v: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  beta1_power: A `Tensor`. Must have the same type as `var`.
		    Must be a scalar.
		  beta2_power: A `Tensor`. Must have the same type as `var`.
		    Must be a scalar.
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  beta1: A `Tensor`. Must have the same type as `var`.
		    Momentum factor. Must be a scalar.
		  beta2: A `Tensor`. Must have the same type as `var`.
		    Momentum factor. Must be a scalar.
		  epsilon: A `Tensor`. Must have the same type as `var`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, m, and v tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function apply_adam(_var:Dynamic, m:Dynamic, v:Dynamic, beta1_power:Dynamic, beta2_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' according to the Ftrl-proximal scheme.
		
		accum_new = accum + grad * grad
		linear += grad + (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
		quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
		var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
		accum = accum_new
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  linear: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `var`.
		    L1 regulariation. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `var`.
		    L2 regulariation. Must be a scalar.
		  lr_power: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function apply_ftrl(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' by subtracting 'alpha' * 'delta' from it.
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  alpha: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  delta: A `Tensor`. Must have the same type as `var`. The change.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function apply_gradient_descent(_var:Dynamic, alpha:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' according to the momentum scheme. Set use_nesterov = True if you
		
		want to use Nesterov momentum.
		
		accum = accum * momentum + grad
		var -= lr * accum
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  momentum: A `Tensor`. Must have the same type as `var`.
		    Momentum. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  use_nesterov: An optional `bool`. Defaults to `False`.
		    If `True`, the tensor passed to compute grad will be
		    var - lr * momentum * accum, so in the end, the var you get is actually
		    var - lr * momentum * accum.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function apply_momentum(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' and '*accum' according to FOBOS with Adagrad learning rate.
		
		accum += grad * grad
		prox_v = var - lr * grad * (1 / sqrt(accum))
		var = sign(prox_v)/(1+lr*l2) * max{|prox_v|-lr*l1,0}
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `var`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `var`.
		    L2 regularization. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function apply_proximal_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' as FOBOS algorithm with fixed learning rate.
		
		prox_v = var - alpha * delta
		var = sign(prox_v)/(1+alpha*l2) * max{|prox_v|-alpha*l1,0}
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  alpha: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `var`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `var`.
		    L2 regularization. Must be a scalar.
		  delta: A `Tensor`. Must have the same type as `var`. The change.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function apply_proximal_gradient_descent(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' according to the RMSProp algorithm.
		
		Note that in dense implement of this algorithm, ms and mom will
		update even if the grad is zero, but in this sparse implement, ms
		and mom will not update in iterations the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon)
		
		ms <- rho * ms_{t-1} + (1-rho) * grad * grad
		mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
		var <- var - mom
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  ms: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  mom: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `var`.
		    Decay rate. Must be a scalar.
		  momentum: A `Tensor`. Must have the same type as `var`.
		  epsilon: A `Tensor`. Must have the same type as `var`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, m, and v tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function apply_rms_prop(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		var: Should be from a Variable().
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  accum_update: A mutable `Tensor`. Must have the same type as `var`.
		    : Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Learning rate. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `var`.
		    Decay factor. Must be a scalar.
		  epsilon: A `Tensor`. Must have the same type as `var`.
		    Constant factor. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function sparse_apply_adadelta(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' and '*accum' according to the adagrad scheme.
		
		That is for rows we have grad for, we update var and accum as follows:
		accum += grad * grad
		var -= lr * grad * (1 / sqrt(accum))
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Learning rate. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function sparse_apply_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' according to the Ftrl-proximal scheme.
		
		That is for rows we have grad for, we update var, accum and linear as follows:
		accum_new = accum + grad * grad
		linear += grad + (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
		quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
		var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
		accum = accum_new
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  linear: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `var`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `var`.
		    L2 regularization. Must be a scalar.
		  lr_power: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function sparse_apply_ftrl(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' and '*accum' according to the momentum scheme.
		
		Set use_nesterov = True if you want to use Nesterov momentum.
		
		That is for rows we have grad for, we update var and accum as follows:
		
		accum = accum * momentum + grad
		var -= lr * accum
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Learning rate. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  momentum: A `Tensor`. Must have the same type as `var`.
		    Momentum. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  use_nesterov: An optional `bool`. Defaults to `False`.
		    If `True`, the tensor passed to compute grad will be
		    var - lr * momentum * accum, so in the end, the var you get is actually
		    var - lr * momentum * accum.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function sparse_apply_momentum(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sparse update entries in '*var' and '*accum' according to FOBOS algorithm.
		
		That is for rows we have grad for, we update var and accum as follows:
		accum += grad * grad
		prox_v = var
		prox_v -= lr * grad * (1 / sqrt(accum))
		var = sign(prox_v)/(1+lr*l2) * max{|prox_v|-lr*l1,0}
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  accum: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Learning rate. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `var`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `var`.
		    L2 regularization. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function sparse_apply_proximal_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sparse update '*var' as FOBOS algorithm with fixed learning rate.
		
		That is for rows we have grad for, we update var as follows:
		prox_v = var - alpha * grad
		var = sign(prox_v)/(1+alpha*l2) * max{|prox_v|-alpha*l1,0}
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  alpha: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `var`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `var`.
		    L2 regularization. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function sparse_apply_proximal_gradient_descent(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' according to the RMSProp algorithm.
		
		Note that in dense implement of this algorithm, ms and mom will
		update even if the grad is zero, but in this sparse implement, ms
		and mom will not update in iterations the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon)
		
		ms <- rho * ms_{t-1} + (1-rho) * grad * grad
		mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
		var <- var - mom
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a Variable().
		  ms: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  mom: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `var`.
		    Decay rate. Must be a scalar.
		  momentum: A `Tensor`. Must have the same type as `var`.
		  epsilon: A `Tensor`. Must have the same type as `var`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var, ms and mom.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, m, and v tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`. Same as "var".
	**/
	static public function sparse_apply_rms_prop(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
}