/* This file is generated, do not edit! */
package tensorflow.python.training.gen_training_ops;
@:pythonImport("tensorflow.python.training.gen_training_ops") extern class Gen_training_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Update '*var' according to the AdaMax algorithm.
		
		m_t <- beta1 * m_{t-1} + (1 - beta1) * g
		v_t <- max(beta2 * v_{t-1}, abs(g))
		variable <- variable - learning_rate / (1 - beta1^t) * m_t / (v_t + epsilon)
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a Variable().
		  m: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  v: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  beta1_power: A `Tensor`. Must have the same type as `var`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_ada_max(_var:Dynamic, m:Dynamic, v:Dynamic, beta1_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_ada_max_eager_fallback(_var:Dynamic, m:Dynamic, v:Dynamic, beta1_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the adadelta scheme.
		
		accum = rho() * accum + (1 - rho()) * grad.square();
		update = (update_accum + epsilon).sqrt() * (accum + epsilon()).rsqrt() * grad;
		update_accum = rho() * update_accum + (1 - rho()) * update.square();
		var -= update;
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_adadelta(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_adadelta_eager_fallback(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the adagrad scheme.
		
		accum += grad * grad
		var -= lr * grad * (1 / sqrt(accum))
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  update_slots: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?update_slots:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' according to the proximal adagrad scheme.
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a Variable().
		  gradient_accumulator: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  gradient_squared_accumulator: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `var`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `var`.
		    L2 regularization. Must be a scalar.
		  global_step: A `Tensor` of type `int64`.
		    Training step number. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_adagrad_da(_var:Dynamic, gradient_accumulator:Dynamic, gradient_squared_accumulator:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, global_step:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_adagrad_da_eager_fallback(_var:Dynamic, gradient_accumulator:Dynamic, gradient_squared_accumulator:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, global_step:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function apply_adagrad_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?update_slots:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the Adam algorithm.
		
		$$lr_t := \text{learning\_rate} * \sqrt{1 - beta_2^t} / (1 - beta_1^t)$$
		$$m_t := beta_1 * m_{t-1} + (1 - beta_1) * g$$
		$$v_t := beta_2 * v_{t-1} + (1 - beta_2) * g * g$$
		$$variable := variable - lr_t * m_t / (\sqrt{v_t} + \epsilon)$$
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  use_nesterov: An optional `bool`. Defaults to `False`.
		    If `True`, uses the nesterov update.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_adam(_var:Dynamic, m:Dynamic, v:Dynamic, beta1_power:Dynamic, beta2_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_adam_eager_fallback(_var:Dynamic, m:Dynamic, v:Dynamic, beta1_power:Dynamic, beta2_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the AddSign update.
		
		m_t <- beta1 * m_{t-1} + (1 - beta1) * g
		update <- (alpha + sign_decay * sign(g) *sign(m)) * g
		variable <- variable - lr_t * update
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a Variable().
		  m: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  alpha: A `Tensor`. Must have the same type as `var`. Must be a scalar.
		  sign_decay: A `Tensor`. Must have the same type as `var`.
		    Must be a scalar.
		  beta: A `Tensor`. Must have the same type as `var`. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and m tensors is
		    protected by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_add_sign(_var:Dynamic, m:Dynamic, lr:Dynamic, alpha:Dynamic, sign_decay:Dynamic, beta:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_add_sign_eager_fallback(_var:Dynamic, m:Dynamic, lr:Dynamic, alpha:Dynamic, sign_decay:Dynamic, beta:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the centered RMSProp algorithm.
		
		The centered RMSProp algorithm uses an estimate of the centered second moment
		(i.e., the variance) for normalization, as opposed to regular RMSProp, which
		uses the (uncentered) second moment. This often helps with training, but is
		slightly more expensive in terms of computation and memory.
		
		Note that in dense implementation of this algorithm, mg, ms, and mom will
		update even if the grad is zero, but in this sparse implementation, mg, ms,
		and mom will not update in iterations during which the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		mean_grad = decay * mean_grad + (1-decay) * gradient
		
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon - mean_grad ** 2)
		
		mg <- rho * mg_{t-1} + (1-rho) * grad
		ms <- rho * ms_{t-1} + (1-rho) * grad * grad
		mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms - mg * mg + epsilon)
		var <- var - mom
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a Variable().
		  mg: A mutable `Tensor`. Must have the same type as `var`.
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
		    If `True`, updating of the var, mg, ms, and mom tensors is
		    protected by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_centered_rms_prop(_var:Dynamic, mg:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_centered_rms_prop_eager_fallback(_var:Dynamic, mg:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the Ftrl-proximal scheme.
		
		accum_new = accum + grad * grad
		linear += grad + (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
		quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
		var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
		accum = accum_new
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_ftrl(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_ftrl_eager_fallback(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the Ftrl-proximal scheme.
		
		grad_with_shrinkage = grad + 2 * l2_shrinkage * var
		accum_new = accum + grad_with_shrinkage * grad_with_shrinkage
		linear += grad_with_shrinkage +
		    (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
		quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
		var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
		accum = accum_new
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		    L2 shrinkage regulariation. Must be a scalar.
		  l2_shrinkage: A `Tensor`. Must have the same type as `var`.
		  lr_power: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_ftrl_v2(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, l2_shrinkage:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_ftrl_v2_eager_fallback(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, l2_shrinkage:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' by subtracting 'alpha' * 'delta' from it.
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a Variable().
		  alpha: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  delta: A `Tensor`. Must have the same type as `var`. The change.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_gradient_descent(_var:Dynamic, alpha:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_gradient_descent_eager_fallback(_var:Dynamic, alpha:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the momentum scheme. Set use_nesterov = True if you
		
		want to use Nesterov momentum.
		
		accum = accum * momentum + grad
		var -= lr * accum
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_momentum(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_momentum_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the AddSign update.
		
		m_t <- beta1 * m_{t-1} + (1 - beta1) * g
		update <- exp(logbase * sign_decay * sign(g) * sign(m_t)) * g
		variable <- variable - lr_t * update
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a Variable().
		  m: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  lr: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  logbase: A `Tensor`. Must have the same type as `var`. Must be a scalar.
		  sign_decay: A `Tensor`. Must have the same type as `var`.
		    Must be a scalar.
		  beta: A `Tensor`. Must have the same type as `var`. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and m tensors is
		    protected by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_power_sign(_var:Dynamic, m:Dynamic, lr:Dynamic, logbase:Dynamic, sign_decay:Dynamic, beta:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_power_sign_eager_fallback(_var:Dynamic, m:Dynamic, lr:Dynamic, logbase:Dynamic, sign_decay:Dynamic, beta:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' and '*accum' according to FOBOS with Adagrad learning rate.
		
		accum += grad * grad
		prox_v = var - lr * grad * (1 / sqrt(accum))
		var = sign(prox_v)/(1+lr*l2) * max{|prox_v|-lr*l1,0}
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_proximal_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_proximal_adagrad_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' as FOBOS algorithm with fixed learning rate.
		
		prox_v = var - alpha * delta
		var = sign(prox_v)/(1+alpha*l2) * max{|prox_v|-alpha*l1,0}
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_proximal_gradient_descent(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_proximal_gradient_descent_eager_fallback(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the RMSProp algorithm.
		
		Note that in dense implementation of this algorithm, ms and mom will
		update even if the grad is zero, but in this sparse implementation, ms
		and mom will not update in iterations during which the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon)
		
		ms <- rho * ms_{t-1} + (1-rho) * grad * grad
		mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
		var <- var - mom
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		    If `True`, updating of the var, ms, and mom tensors is protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function apply_rms_prop(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function apply_rms_prop_eager_fallback(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Update '*var' according to the AdaMax algorithm.
		
		m_t <- beta1 * m_{t-1} + (1 - beta1) * g
		v_t <- max(beta2 * v_{t-1}, abs(g))
		variable <- variable - learning_rate / (1 - beta1^t) * m_t / (v_t + epsilon)
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  m: A `Tensor` of type `resource`. Should be from a Variable().
		  v: A `Tensor` of type `resource`. Should be from a Variable().
		  beta1_power: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Must be a scalar.
		  lr: A `Tensor`. Must have the same type as `beta1_power`.
		    Scaling factor. Must be a scalar.
		  beta1: A `Tensor`. Must have the same type as `beta1_power`.
		    Momentum factor. Must be a scalar.
		  beta2: A `Tensor`. Must have the same type as `beta1_power`.
		    Momentum factor. Must be a scalar.
		  epsilon: A `Tensor`. Must have the same type as `beta1_power`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `beta1_power`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, m, and v tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_ada_max(_var:Dynamic, m:Dynamic, v:Dynamic, beta1_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_ada_max
	**/
	static public function resource_apply_ada_max_eager_fallback(_var:Dynamic, m:Dynamic, v:Dynamic, beta1_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the adadelta scheme.
		
		accum = rho() * accum + (1 - rho()) * grad.square();
		update = (update_accum + epsilon).sqrt() * (accum + epsilon()).rsqrt() * grad;
		update_accum = rho() * update_accum + (1 - rho()) * update.square();
		var -= update;
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  accum_update: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `lr`.
		    Decay factor. Must be a scalar.
		  epsilon: A `Tensor`. Must have the same type as `lr`.
		    Constant factor. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var, accum and update_accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_adadelta(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_adadelta
	**/
	static public function resource_apply_adadelta_eager_fallback(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the adagrad scheme.
		
		accum += grad * grad
		var -= lr * grad * (1 / sqrt(accum))
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  update_slots: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?update_slots:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update '*var' according to the proximal adagrad scheme.
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  gradient_accumulator: A `Tensor` of type `resource`.
		    Should be from a Variable().
		  gradient_squared_accumulator: A `Tensor` of type `resource`.
		    Should be from a Variable().
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The gradient.
		  lr: A `Tensor`. Must have the same type as `grad`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `grad`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `grad`.
		    L2 regularization. Must be a scalar.
		  global_step: A `Tensor` of type `int64`.
		    Training step number. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_adagrad_da(_var:Dynamic, gradient_accumulator:Dynamic, gradient_squared_accumulator:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, global_step:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_adagrad_da
	**/
	static public function resource_apply_adagrad_da_eager_fallback(_var:Dynamic, gradient_accumulator:Dynamic, gradient_squared_accumulator:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, global_step:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_adagrad
	**/
	static public function resource_apply_adagrad_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?update_slots:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the Adam algorithm.
		
		$$lr_t := \text{learning\_rate} * \sqrt{1 - beta_2^t} / (1 - beta_1^t)$$
		$$m_t := beta_1 * m_{t-1} + (1 - beta_1) * g$$
		$$v_t := beta_2 * v_{t-1} + (1 - beta_2) * g * g$$
		$$variable := variable - lr_t * m_t / (\sqrt{v_t} + \epsilon)$$
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  m: A `Tensor` of type `resource`. Should be from a Variable().
		  v: A `Tensor` of type `resource`. Should be from a Variable().
		  beta1_power: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Must be a scalar.
		  beta2_power: A `Tensor`. Must have the same type as `beta1_power`.
		    Must be a scalar.
		  lr: A `Tensor`. Must have the same type as `beta1_power`.
		    Scaling factor. Must be a scalar.
		  beta1: A `Tensor`. Must have the same type as `beta1_power`.
		    Momentum factor. Must be a scalar.
		  beta2: A `Tensor`. Must have the same type as `beta1_power`.
		    Momentum factor. Must be a scalar.
		  epsilon: A `Tensor`. Must have the same type as `beta1_power`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `beta1_power`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, m, and v tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  use_nesterov: An optional `bool`. Defaults to `False`.
		    If `True`, uses the nesterov update.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_adam(_var:Dynamic, m:Dynamic, v:Dynamic, beta1_power:Dynamic, beta2_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_adam
	**/
	static public function resource_apply_adam_eager_fallback(_var:Dynamic, m:Dynamic, v:Dynamic, beta1_power:Dynamic, beta2_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the Adam algorithm.
		
		$$lr_t := \text{learning\_rate} * \sqrt{1 - beta_2^t} / (1 - beta_1^t)$$
		$$m_t := beta_1 * m_{t-1} + (1 - beta_1) * g$$
		$$v_t := beta_2 * v_{t-1} + (1 - beta_2) * g * g$$
		$$vhat_t := max{vhat_{t-1}, v_t}$$
		$$variable := variable - lr_t * m_t / (\sqrt{vhat_t} + \epsilon)$$
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  m: A `Tensor` of type `resource`. Should be from a Variable().
		  v: A `Tensor` of type `resource`. Should be from a Variable().
		  vhat: A `Tensor` of type `resource`. Should be from a Variable().
		  beta1_power: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Must be a scalar.
		  beta2_power: A `Tensor`. Must have the same type as `beta1_power`.
		    Must be a scalar.
		  lr: A `Tensor`. Must have the same type as `beta1_power`.
		    Scaling factor. Must be a scalar.
		  beta1: A `Tensor`. Must have the same type as `beta1_power`.
		    Momentum factor. Must be a scalar.
		  beta2: A `Tensor`. Must have the same type as `beta1_power`.
		    Momentum factor. Must be a scalar.
		  epsilon: A `Tensor`. Must have the same type as `beta1_power`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `beta1_power`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, m, and v tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_adam_with_amsgrad(_var:Dynamic, m:Dynamic, v:Dynamic, vhat:Dynamic, beta1_power:Dynamic, beta2_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_adam_with_amsgrad
	**/
	static public function resource_apply_adam_with_amsgrad_eager_fallback(_var:Dynamic, m:Dynamic, v:Dynamic, vhat:Dynamic, beta1_power:Dynamic, beta2_power:Dynamic, lr:Dynamic, beta1:Dynamic, beta2:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the AddSign update.
		
		m_t <- beta1 * m_{t-1} + (1 - beta1) * g
		update <- (alpha + sign_decay * sign(g) *sign(m)) * g
		variable <- variable - lr_t * update
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  m: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  alpha: A `Tensor`. Must have the same type as `lr`. Must be a scalar.
		  sign_decay: A `Tensor`. Must have the same type as `lr`. Must be a scalar.
		  beta: A `Tensor`. Must have the same type as `lr`. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and m tensors is
		    protected by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_add_sign(_var:Dynamic, m:Dynamic, lr:Dynamic, alpha:Dynamic, sign_decay:Dynamic, beta:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_add_sign
	**/
	static public function resource_apply_add_sign_eager_fallback(_var:Dynamic, m:Dynamic, lr:Dynamic, alpha:Dynamic, sign_decay:Dynamic, beta:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the centered RMSProp algorithm.
		
		The centered RMSProp algorithm uses an estimate of the centered second moment
		(i.e., the variance) for normalization, as opposed to regular RMSProp, which
		uses the (uncentered) second moment. This often helps with training, but is
		slightly more expensive in terms of computation and memory.
		
		Note that in dense implementation of this algorithm, mg, ms, and mom will
		update even if the grad is zero, but in this sparse implementation, mg, ms,
		and mom will not update in iterations during which the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		mean_grad = decay * mean_grad + (1-decay) * gradient
		
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon - mean_grad ** 2)
		
		mg <- rho * mg_{t-1} + (1-rho) * grad
		ms <- rho * ms_{t-1} + (1-rho) * grad * grad
		mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms - mg * mg + epsilon)
		var <- var - mom
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  mg: A `Tensor` of type `resource`. Should be from a Variable().
		  ms: A `Tensor` of type `resource`. Should be from a Variable().
		  mom: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `lr`.
		    Decay rate. Must be a scalar.
		  momentum: A `Tensor`. Must have the same type as `lr`.
		  epsilon: A `Tensor`. Must have the same type as `lr`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, mg, ms, and mom tensors is
		    protected by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_centered_rms_prop(_var:Dynamic, mg:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_centered_rms_prop
	**/
	static public function resource_apply_centered_rms_prop_eager_fallback(_var:Dynamic, mg:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the Ftrl-proximal scheme.
		
		accum_new = accum + grad * grad
		linear += grad - (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
		quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
		var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
		accum = accum_new
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  linear: A `Tensor` of type `resource`. Should be from a Variable().
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The gradient.
		  lr: A `Tensor`. Must have the same type as `grad`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `grad`.
		    L1 regulariation. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `grad`.
		    L2 regulariation. Must be a scalar.
		  lr_power: A `Tensor`. Must have the same type as `grad`.
		    Scaling factor. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_ftrl(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_ftrl
	**/
	static public function resource_apply_ftrl_eager_fallback(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the Ftrl-proximal scheme.
		
		grad_with_shrinkage = grad + 2 * l2_shrinkage * var
		accum_new = accum + grad_with_shrinkage * grad_with_shrinkage
		linear += grad_with_shrinkage +
		    (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
		quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
		var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
		accum = accum_new
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  linear: A `Tensor` of type `resource`. Should be from a Variable().
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The gradient.
		  lr: A `Tensor`. Must have the same type as `grad`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `grad`.
		    L1 regulariation. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `grad`.
		    L2 shrinkage regulariation. Must be a scalar.
		  l2_shrinkage: A `Tensor`. Must have the same type as `grad`.
		  lr_power: A `Tensor`. Must have the same type as `grad`.
		    Scaling factor. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_ftrl_v2(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, l2_shrinkage:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_ftrl_v2
	**/
	static public function resource_apply_ftrl_v2_eager_fallback(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, l2_shrinkage:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' by subtracting 'alpha' * 'delta' from it.
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  alpha: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  delta: A `Tensor`. Must have the same type as `alpha`. The change.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_gradient_descent(_var:Dynamic, alpha:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_gradient_descent
	**/
	static public function resource_apply_gradient_descent_eager_fallback(_var:Dynamic, alpha:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the momentum scheme. Set use_nesterov = True if you
		
		want to use Nesterov momentum.
		
		accum = accum * momentum - lr * grad
		var += accum
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  momentum: A `Tensor`. Must have the same type as `lr`.
		    Momentum. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  use_nesterov: An optional `bool`. Defaults to `False`.
		    If `True`, the tensor passed to compute grad will be
		    var + momentum * accum, so in the end, the var you get is actually
		    var + momentum * accum.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_keras_momentum(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_keras_momentum
	**/
	static public function resource_apply_keras_momentum_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the momentum scheme. Set use_nesterov = True if you
		
		want to use Nesterov momentum.
		
		accum = accum * momentum + grad
		var -= lr * accum
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  momentum: A `Tensor`. Must have the same type as `lr`.
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
		  The created Operation.
	**/
	static public function resource_apply_momentum(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_momentum
	**/
	static public function resource_apply_momentum_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the AddSign update.
		
		m_t <- beta1 * m_{t-1} + (1 - beta1) * g
		update <- exp(logbase * sign_decay * sign(g) * sign(m_t)) * g
		variable <- variable - lr_t * update
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  m: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  logbase: A `Tensor`. Must have the same type as `lr`. Must be a scalar.
		  sign_decay: A `Tensor`. Must have the same type as `lr`. Must be a scalar.
		  beta: A `Tensor`. Must have the same type as `lr`. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and m tensors is
		    protected by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_power_sign(_var:Dynamic, m:Dynamic, lr:Dynamic, logbase:Dynamic, sign_decay:Dynamic, beta:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_power_sign
	**/
	static public function resource_apply_power_sign_eager_fallback(_var:Dynamic, m:Dynamic, lr:Dynamic, logbase:Dynamic, sign_decay:Dynamic, beta:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' and '*accum' according to FOBOS with Adagrad learning rate.
		
		accum += grad * grad
		prox_v = var - lr * grad * (1 / sqrt(accum))
		var = sign(prox_v)/(1+lr*l2) * max{|prox_v|-lr*l1,0}
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `lr`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `lr`.
		    L2 regularization. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_proximal_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_proximal_adagrad
	**/
	static public function resource_apply_proximal_adagrad_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' as FOBOS algorithm with fixed learning rate.
		
		prox_v = var - alpha * delta
		var = sign(prox_v)/(1+alpha*l2) * max{|prox_v|-alpha*l1,0}
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  alpha: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `alpha`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `alpha`.
		    L2 regularization. Must be a scalar.
		  delta: A `Tensor`. Must have the same type as `alpha`. The change.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_proximal_gradient_descent(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_proximal_gradient_descent
	**/
	static public function resource_apply_proximal_gradient_descent_eager_fallback(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the RMSProp algorithm.
		
		Note that in dense implementation of this algorithm, ms and mom will
		update even if the grad is zero, but in this sparse implementation, ms
		and mom will not update in iterations during which the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon)
		
		ms <- rho * ms_{t-1} + (1-rho) * grad * grad
		mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
		var <- var - mom
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  ms: A `Tensor` of type `resource`. Should be from a Variable().
		  mom: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `lr`.
		    Decay rate. Must be a scalar.
		  momentum: A `Tensor`. Must have the same type as `lr`.
		  epsilon: A `Tensor`. Must have the same type as `lr`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, ms, and mom tensors is protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_apply_rms_prop(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_apply_rms_prop
	**/
	static public function resource_apply_rms_prop_eager_fallback(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		var: Should be from a Variable().
		
		Args:
		  var: A `Tensor` of type `resource`.
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  accum_update: A `Tensor` of type `resource`.
		    : Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Learning rate. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `lr`.
		    Decay factor. Must be a scalar.
		  epsilon: A `Tensor`. Must have the same type as `lr`.
		    Constant factor. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_adadelta(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_adadelta
	**/
	static public function resource_sparse_apply_adadelta_eager_fallback(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' and '*accum' according to the adagrad scheme.
		
		That is for rows we have grad for, we update var and accum as follows:
		accum += grad * grad
		var -= lr * grad * (1 / sqrt(accum))
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Learning rate. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  update_slots: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?update_slots:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update entries in '*var' and '*accum' according to the proximal adagrad scheme.
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  gradient_accumulator: A `Tensor` of type `resource`.
		    Should be from a Variable().
		  gradient_squared_accumulator: A `Tensor` of type `resource`.
		    Should be from a Variable().
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  lr: A `Tensor`. Must have the same type as `grad`.
		    Learning rate. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `grad`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `grad`.
		    L2 regularization. Must be a scalar.
		  global_step: A `Tensor` of type `int64`.
		    Training step number. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_adagrad_da(_var:Dynamic, gradient_accumulator:Dynamic, gradient_squared_accumulator:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, global_step:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_adagrad_da
	**/
	static public function resource_sparse_apply_adagrad_da_eager_fallback(_var:Dynamic, gradient_accumulator:Dynamic, gradient_squared_accumulator:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, global_step:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_adagrad
	**/
	static public function resource_sparse_apply_adagrad_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?update_slots:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the centered RMSProp algorithm.
		
		The centered RMSProp algorithm uses an estimate of the centered second moment
		(i.e., the variance) for normalization, as opposed to regular RMSProp, which
		uses the (uncentered) second moment. This often helps with training, but is
		slightly more expensive in terms of computation and memory.
		
		Note that in dense implementation of this algorithm, mg, ms, and mom will
		update even if the grad is zero, but in this sparse implementation, mg, ms,
		and mom will not update in iterations during which the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		mean_grad = decay * mean_grad + (1-decay) * gradient
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon - mean_grad ** 2)
		
		ms <- rho * ms_{t-1} + (1-rho) * grad * grad
		mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
		var <- var - mom
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  mg: A `Tensor` of type `resource`. Should be from a Variable().
		  ms: A `Tensor` of type `resource`. Should be from a Variable().
		  mom: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `lr`.
		    Decay rate. Must be a scalar.
		  momentum: A `Tensor`. Must have the same type as `lr`.
		  epsilon: A `Tensor`. Must have the same type as `lr`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var, ms and mom.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, mg, ms, and mom tensors is
		    protected by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_centered_rms_prop(_var:Dynamic, mg:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_centered_rms_prop
	**/
	static public function resource_sparse_apply_centered_rms_prop_eager_fallback(_var:Dynamic, mg:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' according to the Ftrl-proximal scheme.
		
		That is for rows we have grad for, we update var, accum and linear as follows:
		accum_new = accum + grad * grad
		linear += grad + (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
		quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
		var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
		accum = accum_new
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  linear: A `Tensor` of type `resource`. Should be from a Variable().
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  lr: A `Tensor`. Must have the same type as `grad`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `grad`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `grad`.
		    L2 regularization. Must be a scalar.
		  lr_power: A `Tensor`. Must have the same type as `grad`.
		    Scaling factor. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_ftrl(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_ftrl
	**/
	static public function resource_sparse_apply_ftrl_eager_fallback(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' according to the Ftrl-proximal scheme.
		
		That is for rows we have grad for, we update var, accum and linear as follows:
		grad_with_shrinkage = grad + 2 * l2_shrinkage * var
		accum_new = accum + grad_with_shrinkage * grad_with_shrinkage
		linear += grad_with_shrinkage +
		    (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
		quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
		var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
		accum = accum_new
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  linear: A `Tensor` of type `resource`. Should be from a Variable().
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  lr: A `Tensor`. Must have the same type as `grad`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `grad`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `grad`.
		    L2 shrinkage regulariation. Must be a scalar.
		  l2_shrinkage: A `Tensor`. Must have the same type as `grad`.
		  lr_power: A `Tensor`. Must have the same type as `grad`.
		    Scaling factor. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_ftrl_v2(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, l2_shrinkage:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_ftrl_v2
	**/
	static public function resource_sparse_apply_ftrl_v2_eager_fallback(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, l2_shrinkage:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' and '*accum' according to the momentum scheme.
		
		Set use_nesterov = True if you want to use Nesterov momentum.
		
		That is for rows we have grad for, we update var and accum as follows:
		
		accum = accum * momentum - lr * grad
		var += accum
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Learning rate. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  momentum: A `Tensor`. Must have the same type as `lr`.
		    Momentum. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  use_nesterov: An optional `bool`. Defaults to `False`.
		    If `True`, the tensor passed to compute grad will be
		    var + momentum * accum, so in the end, the var you get is actually
		    var + momentum * accum.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_keras_momentum(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_keras_momentum
	**/
	static public function resource_sparse_apply_keras_momentum_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' and '*accum' according to the momentum scheme.
		
		Set use_nesterov = True if you want to use Nesterov momentum.
		
		That is for rows we have grad for, we update var and accum as follows:
		
		accum = accum * momentum + grad
		var -= lr * accum
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Learning rate. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  momentum: A `Tensor`. Must have the same type as `lr`.
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
		  The created Operation.
	**/
	static public function resource_sparse_apply_momentum(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_momentum
	**/
	static public function resource_sparse_apply_momentum_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Sparse update entries in '*var' and '*accum' according to FOBOS algorithm.
		
		That is for rows we have grad for, we update var and accum as follows:
		accum += grad * grad
		prox_v = var
		prox_v -= lr * grad * (1 / sqrt(accum))
		var = sign(prox_v)/(1+lr*l2) * max{|prox_v|-lr*l1,0}
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  accum: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Learning rate. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `lr`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `lr`.
		    L2 regularization. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_proximal_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_proximal_adagrad
	**/
	static public function resource_sparse_apply_proximal_adagrad_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Sparse update '*var' as FOBOS algorithm with fixed learning rate.
		
		That is for rows we have grad for, we update var as follows:
		prox_v = var - alpha * grad
		var = sign(prox_v)/(1+alpha*l2) * max{|prox_v|-alpha*l1,0}
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  alpha: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `alpha`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `alpha`.
		    L2 regularization. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `alpha`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_proximal_gradient_descent(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_proximal_gradient_descent
	**/
	static public function resource_sparse_apply_proximal_gradient_descent_eager_fallback(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the RMSProp algorithm.
		
		Note that in dense implementation of this algorithm, ms and mom will
		update even if the grad is zero, but in this sparse implementation, ms
		and mom will not update in iterations during which the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon)
		
		ms <- rho * ms_{t-1} + (1-rho) * grad * grad
		mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)
		var <- var - mom
		
		Args:
		  var: A `Tensor` of type `resource`. Should be from a Variable().
		  ms: A `Tensor` of type `resource`. Should be from a Variable().
		  mom: A `Tensor` of type `resource`. Should be from a Variable().
		  lr: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Scaling factor. Must be a scalar.
		  rho: A `Tensor`. Must have the same type as `lr`.
		    Decay rate. Must be a scalar.
		  momentum: A `Tensor`. Must have the same type as `lr`.
		  epsilon: A `Tensor`. Must have the same type as `lr`.
		    Ridge term. Must be a scalar.
		  grad: A `Tensor`. Must have the same type as `lr`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var, ms and mom.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var, ms, and mom tensors is protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_sparse_apply_rms_prop(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_sparse_apply_rms_prop
	**/
	static public function resource_sparse_apply_rms_prop_eager_fallback(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		var: Should be from a Variable().
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_adadelta(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_apply_adadelta_eager_fallback(_var:Dynamic, accum:Dynamic, accum_update:Dynamic, lr:Dynamic, rho:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' and '*accum' according to the adagrad scheme.
		
		That is for rows we have grad for, we update var and accum as follows:
		$$accum += grad * grad$$
		$$var -= lr * grad * (1 / sqrt(accum))$$
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  update_slots: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?update_slots:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update entries in '*var' and '*accum' according to the proximal adagrad scheme.
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a Variable().
		  gradient_accumulator: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  gradient_squared_accumulator: A mutable `Tensor`. Must have the same type as `var`.
		    Should be from a Variable().
		  grad: A `Tensor`. Must have the same type as `var`. The gradient.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into the first dimension of var and accum.
		  lr: A `Tensor`. Must have the same type as `var`.
		    Learning rate. Must be a scalar.
		  l1: A `Tensor`. Must have the same type as `var`.
		    L1 regularization. Must be a scalar.
		  l2: A `Tensor`. Must have the same type as `var`.
		    L2 regularization. Must be a scalar.
		  global_step: A `Tensor` of type `int64`.
		    Training step number. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, updating of the var and accum tensors will be protected by
		    a lock; otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_adagrad_da(_var:Dynamic, gradient_accumulator:Dynamic, gradient_squared_accumulator:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, global_step:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_apply_adagrad_da_eager_fallback(_var:Dynamic, gradient_accumulator:Dynamic, gradient_squared_accumulator:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, global_step:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function sparse_apply_adagrad_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?update_slots:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the centered RMSProp algorithm.
		
		The centered RMSProp algorithm uses an estimate of the centered second moment
		(i.e., the variance) for normalization, as opposed to regular RMSProp, which
		uses the (uncentered) second moment. This often helps with training, but is
		slightly more expensive in terms of computation and memory.
		
		Note that in dense implementation of this algorithm, mg, ms, and mom will
		update even if the grad is zero, but in this sparse implementation, mg, ms,
		and mom will not update in iterations during which the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		mean_grad = decay * mean_grad + (1-decay) * gradient
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon - mean_grad ** 2)
		
		$$ms <- rho * ms_{t-1} + (1-rho) * grad * grad$$
		$$mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)$$
		$$var <- var - mom$$
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a Variable().
		  mg: A mutable `Tensor`. Must have the same type as `var`.
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
		    If `True`, updating of the var, mg, ms, and mom tensors is
		    protected by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_centered_rms_prop(_var:Dynamic, mg:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_apply_centered_rms_prop_eager_fallback(_var:Dynamic, mg:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' according to the Ftrl-proximal scheme.
		
		That is for rows we have grad for, we update var, accum and linear as follows:
		$$accum_new = accum + grad * grad$$
		$$linear += grad + (accum_{new}^{-lr_{power}} - accum^{-lr_{power}} / lr * var$$
		$$quadratic = 1.0 / (accum_{new}^{lr_{power}} * lr) + 2 * l2$$
		$$var = (sign(linear) * l1 - linear) / quadratic\ if\ |linear| > l1\ else\ 0.0$$
		$$accum = accum_{new}$$
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_ftrl(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_apply_ftrl_eager_fallback(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' according to the Ftrl-proximal scheme.
		
		That is for rows we have grad for, we update var, accum and linear as follows:
		grad_with_shrinkage = grad + 2 * l2_shrinkage * var
		accum_new = accum + grad_with_shrinkage * grad_with_shrinkage
		linear += grad_with_shrinkage +
		    (accum_new^(-lr_power) - accum^(-lr_power)) / lr * var
		quadratic = 1.0 / (accum_new^(lr_power) * lr) + 2 * l2
		var = (sign(linear) * l1 - linear) / quadratic if |linear| > l1 else 0.0
		accum = accum_new
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		    L2 shrinkage regulariation. Must be a scalar.
		  l2_shrinkage: A `Tensor`. Must have the same type as `var`.
		  lr_power: A `Tensor`. Must have the same type as `var`.
		    Scaling factor. Must be a scalar.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If `True`, updating of the var and accum tensors will be protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_ftrl_v2(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, l2_shrinkage:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_apply_ftrl_v2_eager_fallback(_var:Dynamic, accum:Dynamic, linear:Dynamic, grad:Dynamic, indices:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, l2_shrinkage:Dynamic, lr_power:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update relevant entries in '*var' and '*accum' according to the momentum scheme.
		
		Set use_nesterov = True if you want to use Nesterov momentum.
		
		That is for rows we have grad for, we update var and accum as follows:
		
		$$accum = accum * momentum + grad$$
		$$var -= lr * accum$$
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_momentum(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_apply_momentum_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, grad:Dynamic, indices:Dynamic, momentum:Dynamic, ?use_locking:Dynamic, ?use_nesterov:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Sparse update entries in '*var' and '*accum' according to FOBOS algorithm.
		
		That is for rows we have grad for, we update var and accum as follows:
		$$accum += grad * grad$$
		$$prox_v = var$$
		$$prox_v -= lr * grad * (1 / sqrt(accum))$$
		$$var = sign(prox_v)/(1+lr*l2) * max{|prox_v|-lr*l1,0}$$
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_proximal_adagrad(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_apply_proximal_adagrad_eager_fallback(_var:Dynamic, accum:Dynamic, lr:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Sparse update '*var' as FOBOS algorithm with fixed learning rate.
		
		That is for rows we have grad for, we update var as follows:
		$$prox_v = var - alpha * grad$$
		$$var = sign(prox_v)/(1+alpha*l2) * max{|prox_v|-alpha*l1,0}$$
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_proximal_gradient_descent(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_apply_proximal_gradient_descent_eager_fallback(_var:Dynamic, alpha:Dynamic, l1:Dynamic, l2:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Update '*var' according to the RMSProp algorithm.
		
		Note that in dense implementation of this algorithm, ms and mom will
		update even if the grad is zero, but in this sparse implementation, ms
		and mom will not update in iterations during which the grad is zero.
		
		mean_square = decay * mean_square + (1-decay) * gradient ** 2
		Delta = learning_rate * gradient / sqrt(mean_square + epsilon)
		
		$$ms <- rho * ms_{t-1} + (1-rho) * grad * grad$$
		$$mom <- momentum * mom_{t-1} + lr * grad / sqrt(ms + epsilon)$$
		$$var <- var - mom$$
		
		Args:
		  var: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
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
		    If `True`, updating of the var, ms, and mom tensors is protected
		    by a lock; otherwise the behavior is undefined, but may exhibit less
		    contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `var`.
	**/
	static public function sparse_apply_rms_prop(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function sparse_apply_rms_prop_eager_fallback(_var:Dynamic, ms:Dynamic, mom:Dynamic, lr:Dynamic, rho:Dynamic, momentum:Dynamic, epsilon:Dynamic, grad:Dynamic, indices:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}