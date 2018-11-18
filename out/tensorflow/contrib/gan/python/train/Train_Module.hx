/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.train;
@:pythonImport("tensorflow.contrib.gan.python.train") extern class Train_Module {
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
		Convert input, list of inputs, or dictionary of inputs to Tensors.
	**/
	static public function _convert_tensor_or_l_or_d(tensor_or_l_or_d:Dynamic):Dynamic;
	/**
		Generate random domain label.
		
		Args:
		  batch_size: (int) Number of random domain label.
		  num_domains: (int) Number of domains representing with the label.
		
		Returns:
		  Tensor of shape (batch_size, num_domains) representing random label.
	**/
	static public function _generate_stargan_random_domain_target(batch_size:Dynamic, num_domains:Dynamic):Dynamic;
	/**
		Gets generator and discriminator update ops.
		
		Args:
		  kwargs: A dictionary of kwargs to be passed to `create_train_op`.
		    `update_ops` is removed, if present.
		  gen_scope: A scope for the generator.
		  dis_scope: A scope for the discriminator.
		  check_for_unused_ops: A Python bool. If `True`, throw Exception if there are
		    unused update ops.
		
		Returns:
		  A 2-tuple of (generator update ops, discriminator train ops).
		
		Raises:
		  ValueError: If there are update ops outside of the generator or
		    discriminator scopes.
	**/
	static public function _get_update_ops(kwargs:Dynamic, gen_scope:Dynamic, dis_scope:Dynamic, ?check_for_unused_ops:Dynamic):Dynamic;
	/**
		Adjusts model using `tensor_pool_fn`.
		
		Args:
		  model: A GANModel tuple.
		  tensor_pool_fn: A function that takes (generated_data, generator_inputs),
		    stores them in an internal pool and returns a previously stored
		    (generated_data, generator_inputs) with some probability. For example
		    tfgan.features.tensor_pool.
		
		Returns:
		  A new GANModel tuple where discriminator outputs are adjusted by taking
		  pooled generator outputs as inputs. Returns the original model if
		  `tensor_pool_fn` is None.
		
		Raises:
		  ValueError: If tensor pool does not support the `model`.
	**/
	static public function _tensor_pool_adjusted_model(model:Dynamic, tensor_pool_fn:Dynamic):Dynamic;
	static public function _use_aux_loss(aux_loss_weight:Dynamic):Dynamic;
	static public function _validate_acgan_discriminator_outputs(discriminator_output:Dynamic):Dynamic;
	static public function _validate_aux_loss_weight(aux_loss_weight:Dynamic, ?name:Dynamic):Dynamic;
	static public function _validate_distributions(distributions_l:Dynamic, noise_l:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns an ACGANModel contains all the pieces needed for ACGAN training.
		
		The `acgan_model` is the same as the `gan_model` with the only difference
		being that the discriminator additionally outputs logits to classify the input
		(real or generated).
		Therefore, an explicit field holding one_hot_labels is necessary, as well as a
		discriminator_fn that outputs a 2-tuple holding the logits for real/fake and
		classification.
		
		See https://arxiv.org/abs/1610.09585 for more details.
		
		Args:
		  generator_fn: A python lambda that takes `generator_inputs` as inputs and
		    returns the outputs of the GAN generator.
		  discriminator_fn: A python lambda that takes `real_data`/`generated data`
		    and `generator_inputs`. Outputs a tuple consisting of two Tensors:
		      (1) real/fake logits in the range [-inf, inf]
		      (2) classification logits in the range [-inf, inf]
		  real_data: A Tensor representing the real data.
		  generator_inputs: A Tensor or list of Tensors to the generator. In the
		    vanilla GAN case, this might be a single noise Tensor. In the conditional
		    GAN case, this might be the generator's conditioning.
		  one_hot_labels: A Tensor holding one-hot-labels for the batch. Needed by
		    acgan_loss.
		  generator_scope: Optional generator variable scope. Useful if you want to
		    reuse a subgraph that has already been created.
		  discriminator_scope: Optional discriminator variable scope. Useful if you
		    want to reuse a subgraph that has already been created.
		  check_shapes: If `True`, check that generator produces Tensors that are the
		    same shape as real data. Otherwise, skip this check.
		
		Returns:
		  A ACGANModel namedtuple.
		
		Raises:
		  ValueError: If the generator outputs a Tensor that isn't the same shape as
		    `real_data`.
		  TypeError: If the discriminator does not output a tuple consisting of
		  (discrimination logits, classification logits).
	**/
	static public function acgan_model(generator_fn:Dynamic, discriminator_fn:Dynamic, real_data:Dynamic, generator_inputs:Dynamic, one_hot_labels:Dynamic, ?generator_scope:Dynamic, ?discriminator_scope:Dynamic, ?check_shapes:Dynamic):Dynamic;
	/**
		Returns the losses for a `CycleGANModel`.
		
		See https://arxiv.org/abs/1703.10593 for more details.
		
		Args:
		  model: A `CycleGANModel` namedtuple.
		  generator_loss_fn: The loss function on the generator. Takes a `GANModel`
		    named tuple.
		  discriminator_loss_fn: The loss function on the discriminator. Takes a
		    `GANModel` namedtuple.
		  cycle_consistency_loss_fn: The cycle consistency loss function. Takes a
		    `CycleGANModel` namedtuple.
		  cycle_consistency_loss_weight: A non-negative Python number or a scalar
		    `Tensor` indicating how much to weigh the cycle consistency loss.
		  **kwargs: Keyword args to pass directly to `gan_loss` to construct the loss
		    for each partial model of `model`.
		
		Returns:
		  A `CycleGANLoss` namedtuple.
		
		Raises:
		  ValueError: If `model` is not a `CycleGANModel` namedtuple.
	**/
	static public function cyclegan_loss(model:Dynamic, ?generator_loss_fn:Dynamic, ?discriminator_loss_fn:Dynamic, ?cycle_consistency_loss_fn:Dynamic, ?cycle_consistency_loss_weight:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a CycleGAN model outputs and variables.
		
		See https://arxiv.org/abs/1703.10593 for more details.
		
		Args:
		  generator_fn: A python lambda that takes `data_x` or `data_y` as inputs and
		    returns the outputs of the GAN generator.
		  discriminator_fn: A python lambda that takes `real_data`/`generated data`
		    and `generator_inputs`. Outputs a Tensor in the range [-inf, inf].
		  data_x: A `Tensor` of dataset X. Must be the same shape as `data_y`.
		  data_y: A `Tensor` of dataset Y. Must be the same shape as `data_x`.
		  generator_scope: Optional generator variable scope. Useful if you want to
		    reuse a subgraph that has already been created. Defaults to 'Generator'.
		  discriminator_scope: Optional discriminator variable scope. Useful if you
		    want to reuse a subgraph that has already been created. Defaults to
		    'Discriminator'.
		  model_x2y_scope: Optional variable scope for model x2y variables. Defaults
		    to 'ModelX2Y'.
		  model_y2x_scope: Optional variable scope for model y2x variables. Defaults
		    to 'ModelY2X'.
		  check_shapes: If `True`, check that generator produces Tensors that are the
		    same shape as `data_x` (`data_y`). Otherwise, skip this check.
		
		Returns:
		  A `CycleGANModel` namedtuple.
		
		Raises:
		  ValueError: If `check_shapes` is True and `data_x` or the generator output
		    does not have the same shape as `data_y`.
	**/
	static public function cyclegan_model(generator_fn:Dynamic, discriminator_fn:Dynamic, data_x:Dynamic, data_y:Dynamic, ?generator_scope:Dynamic, ?discriminator_scope:Dynamic, ?model_x2y_scope:Dynamic, ?model_y2x_scope:Dynamic, ?check_shapes:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns losses necessary to train generator and discriminator.
		
		Args:
		  model: A GANModel tuple.
		  generator_loss_fn: The loss function on the generator. Takes a GANModel
		    tuple.
		  discriminator_loss_fn: The loss function on the discriminator. Takes a
		    GANModel tuple.
		  gradient_penalty_weight: If not `None`, must be a non-negative Python number
		    or Tensor indicating how much to weight the gradient penalty. See
		    https://arxiv.org/pdf/1704.00028.pdf for more details.
		  gradient_penalty_epsilon: If `gradient_penalty_weight` is not None, the
		    small positive value used by the gradient penalty function for numerical
		    stability. Note some applications will need to increase this value to
		    avoid NaNs.
		  gradient_penalty_target: If `gradient_penalty_weight` is not None, a Python
		    number or `Tensor` indicating the target value of gradient norm. See the
		    CIFAR10 section of https://arxiv.org/abs/1710.10196. Defaults to 1.0.
		  gradient_penalty_one_sided: If `True`, penalty proposed in
		    https://arxiv.org/abs/1709.08894 is used. Defaults to `False`.
		  mutual_information_penalty_weight: If not `None`, must be a non-negative
		    Python number or Tensor indicating how much to weight the mutual
		    information penalty. See https://arxiv.org/abs/1606.03657 for more
		    details.
		  aux_cond_generator_weight: If not None: add a classification loss as in
		    https://arxiv.org/abs/1610.09585
		  aux_cond_discriminator_weight: If not None: add a classification loss as in
		    https://arxiv.org/abs/1610.09585
		  tensor_pool_fn: A function that takes (generated_data, generator_inputs),
		    stores them in an internal pool and returns previous stored
		    (generated_data, generator_inputs). For example
		    `tf.gan.features.tensor_pool`. Defaults to None (not using tensor pool).
		  add_summaries: Whether or not to add summaries for the losses.
		
		Returns:
		  A GANLoss 2-tuple of (generator_loss, discriminator_loss). Includes
		  regularization losses.
		
		Raises:
		  ValueError: If any of the auxiliary loss weights is provided and negative.
		  ValueError: If `mutual_information_penalty_weight` is provided, but the
		    `model` isn't an `InfoGANModel`.
	**/
	static public function gan_loss(model:Dynamic, ?generator_loss_fn:Dynamic, ?discriminator_loss_fn:Dynamic, ?gradient_penalty_weight:Dynamic, ?gradient_penalty_epsilon:Dynamic, ?gradient_penalty_target:Dynamic, ?gradient_penalty_one_sided:Dynamic, ?mutual_information_penalty_weight:Dynamic, ?aux_cond_generator_weight:Dynamic, ?aux_cond_discriminator_weight:Dynamic, ?tensor_pool_fn:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Returns GAN model outputs and variables.
		
		Args:
		  generator_fn: A python lambda that takes `generator_inputs` as inputs and
		    returns the outputs of the GAN generator.
		  discriminator_fn: A python lambda that takes `real_data`/`generated data`
		    and `generator_inputs`. Outputs a Tensor in the range [-inf, inf].
		  real_data: A Tensor representing the real data.
		  generator_inputs: A Tensor or list of Tensors to the generator. In the
		    vanilla GAN case, this might be a single noise Tensor. In the conditional
		    GAN case, this might be the generator's conditioning.
		  generator_scope: Optional generator variable scope. Useful if you want to
		    reuse a subgraph that has already been created.
		  discriminator_scope: Optional discriminator variable scope. Useful if you
		    want to reuse a subgraph that has already been created.
		  check_shapes: If `True`, check that generator produces Tensors that are the
		    same shape as real data. Otherwise, skip this check.
		
		Returns:
		  A GANModel namedtuple.
		
		Raises:
		  ValueError: If the generator outputs a Tensor that isn't the same shape as
		    `real_data`.
	**/
	static public function gan_model(generator_fn:Dynamic, discriminator_fn:Dynamic, real_data:Dynamic, generator_inputs:Dynamic, ?generator_scope:Dynamic, ?discriminator_scope:Dynamic, ?check_shapes:Dynamic):Dynamic;
	/**
		A wrapper around `contrib.training.train` that uses GAN hooks.
		
		Args:
		  train_ops: A GANTrainOps named tuple.
		  logdir: The directory where the graph and checkpoints are saved.
		  get_hooks_fn: A function that takes a GANTrainOps tuple and returns a list
		    of hooks.
		  master: The URL of the master.
		  is_chief: Specifies whether or not the training is being run by the primary
		    replica during replica training.
		  scaffold: An tf.train.Scaffold instance.
		  hooks: List of `tf.train.SessionRunHook` callbacks which are run inside the
		    training loop.
		  chief_only_hooks: List of `tf.train.SessionRunHook` instances which are run
		    inside the training loop for the chief trainer only.
		  save_checkpoint_secs: The frequency, in seconds, that a checkpoint is saved
		    using a default checkpoint saver. If `save_checkpoint_secs` is set to
		    `None`, then the default checkpoint saver isn't used.
		  save_summaries_steps: The frequency, in number of global steps, that the
		    summaries are written to disk using a default summary saver. If
		    `save_summaries_steps` is set to `None`, then the default summary saver
		    isn't used.
		  config: An instance of `tf.ConfigProto`.
		
		Returns:
		  Output of the call to `training.train`.
	**/
	static public function gan_train(train_ops:Dynamic, logdir:Dynamic, ?get_hooks_fn:Dynamic, ?master:Dynamic, ?is_chief:Dynamic, ?scaffold:Dynamic, ?hooks:Dynamic, ?chief_only_hooks:Dynamic, ?save_checkpoint_secs:Dynamic, ?save_summaries_steps:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Returns GAN train ops.
		
		The highest-level call in TFGAN. It is composed of functions that can also
		be called, should a user require more control over some part of the GAN
		training process.
		
		Args:
		  model: A GANModel.
		  loss: A GANLoss.
		  generator_optimizer: The optimizer for generator updates.
		  discriminator_optimizer: The optimizer for the discriminator updates.
		  check_for_unused_update_ops: If `True`, throws an exception if there are
		    update ops outside of the generator or discriminator scopes.
		  **kwargs: Keyword args to pass directly to
		    `training.create_train_op` for both the generator and
		    discriminator train op.
		
		Returns:
		  A GANTrainOps tuple of (generator_train_op, discriminator_train_op) that can
		  be used to train a generator/discriminator pair.
	**/
	static public function gan_train_ops(model:Dynamic, loss:Dynamic, generator_optimizer:Dynamic, discriminator_optimizer:Dynamic, ?check_for_unused_update_ops:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a hooks function for sequential GAN training.
		
		When using these train hooks, IT IS RECOMMENDED TO USE `use_locking=True` ON
		ALL OPTIMIZERS TO AVOID RACE CONDITIONS.
		
		The order of steps taken is:
		1) Combined generator and discriminator steps
		2) Generator only steps, if any remain
		3) Discriminator only steps, if any remain
		
		**NOTE**: Unlike `get_sequential_train_hooks`, this method performs updates
		for the generator and discriminator simultaneously whenever possible. This
		reduces the number of `tf.Session` calls, and can also change the training
		semantics.
		
		To illustrate the difference look at the following example:
		
		`train_steps=namedtuples.GANTrainSteps(3, 5)` will cause
		`get_sequential_train_hooks` to make 8 session calls:
		  1) 3 generator steps
		  2) 5 discriminator steps
		
		In contrast, `get_joint_train_steps` will make 5 session calls:
		1) 3 generator + discriminator steps
		2) 2 discriminator steps
		
		Args:
		  train_steps: A `GANTrainSteps` tuple that determines how many generator
		    and discriminator training steps to take.
		
		Returns:
		  A function that takes a GANTrainOps tuple and returns a list of hooks.
	**/
	static public function get_joint_train_hooks(?train_steps:Dynamic):Dynamic;
	/**
		Returns a hooks function for sequential GAN training.
		
		Args:
		  train_steps: A `GANTrainSteps` tuple that determines how many generator
		    and discriminator training steps to take.
		
		Returns:
		  A function that takes a GANTrainOps tuple and returns a list of hooks.
	**/
	static public function get_sequential_train_hooks(?train_steps:Dynamic):Dynamic;
	/**
		Returns a thin wrapper around slim.learning.train_step, for GANs.
		
		This function is to provide support for the Supervisor. For new code, please
		use `MonitoredSession` and `get_sequential_train_hooks`.
		
		Args:
		  train_steps: A `GANTrainSteps` tuple that determines how many generator
		    and discriminator training steps to take.
		
		Returns:
		  A function that can be used for `train_step_fn` for GANs.
	**/
	static public function get_sequential_train_steps(?train_steps:Dynamic):Dynamic;
	/**
		Returns an InfoGAN model outputs and variables.
		
		See https://arxiv.org/abs/1606.03657 for more details.
		
		Args:
		  generator_fn: A python lambda that takes a list of Tensors as inputs and
		    returns the outputs of the GAN generator.
		  discriminator_fn: A python lambda that takes `real_data`/`generated data`
		    and `generator_inputs`. Outputs a 2-tuple of (logits, distribution_list).
		    `logits` are in the range [-inf, inf], and `distribution_list` is a list
		    of Tensorflow distributions representing the predicted noise distribution
		    of the ith structure noise.
		  real_data: A Tensor representing the real data.
		  unstructured_generator_inputs: A list of Tensors to the generator.
		    These tensors represent the unstructured noise or conditioning.
		  structured_generator_inputs: A list of Tensors to the generator.
		    These tensors must have high mutual information with the recognizer.
		  generator_scope: Optional generator variable scope. Useful if you want to
		    reuse a subgraph that has already been created.
		  discriminator_scope: Optional discriminator variable scope. Useful if you
		    want to reuse a subgraph that has already been created.
		
		Returns:
		  An InfoGANModel namedtuple.
		
		Raises:
		  ValueError: If the generator outputs a Tensor that isn't the same shape as
		    `real_data`.
		  ValueError: If the discriminator output is malformed.
	**/
	static public function infogan_model(generator_fn:Dynamic, discriminator_fn:Dynamic, real_data:Dynamic, unstructured_generator_inputs:Dynamic, structured_generator_inputs:Dynamic, ?generator_scope:Dynamic, ?discriminator_scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		StarGAN Loss.
		
		The four major part can be found here: http://screen/tMRMBAohDYG.
		
		Args:
		  model: (StarGAN) Model output of the stargan_model() function call.
		  generator_loss_fn: The loss function on the generator. Takes a
		    `StarGANModel` named tuple.
		  discriminator_loss_fn: The loss function on the discriminator. Takes a
		    `StarGANModel` namedtuple.
		  gradient_penalty_weight: (float) Gradient penalty weight. Default to 10 per
		    the original paper https://arxiv.org/abs/1711.09020. Set to 0 or None to
		    turn off gradient penalty.
		  gradient_penalty_epsilon: (float) A small positive number added for
		    numerical stability when computing the gradient norm.
		  gradient_penalty_target: (float, or tf.float `Tensor`) The target value of
		    gradient norm. Defaults to 1.0.
		  gradient_penalty_one_sided: (bool) If `True`, penalty proposed in
		    https://arxiv.org/abs/1709.08894 is used. Defaults to `False`.
		  reconstruction_loss_fn: The reconstruction loss function. Default to L1-norm
		    and the function must conform to the `tf.losses` API.
		  reconstruction_loss_weight: Reconstruction loss weight. Default to 10.0.
		  classification_loss_fn: The loss function on the discriminator's ability to
		    classify domain of the input. Default to one-hot softmax cross entropy
		    loss, and the function must conform to the `tf.losses` API.
		  classification_loss_weight: (float) Classification loss weight. Default to
		    1.0.
		  classification_one_hot: (bool) If the label is one hot representation.
		    Default to True. If False, classification classification_loss_fn need to
		    be sigmoid cross entropy loss instead.
		  add_summaries: (bool) Add the loss to the summary
		
		Returns:
		  GANLoss namedtuple where we have generator loss and discriminator loss.
		
		Raises:
		  ValueError: If input StarGANModel.input_data_domain_label does not have rank
		  2, or dimension 2 is not defined.
	**/
	static public function stargan_loss(model:Dynamic, ?generator_loss_fn:Dynamic, ?discriminator_loss_fn:Dynamic, ?gradient_penalty_weight:Dynamic, ?gradient_penalty_epsilon:Dynamic, ?gradient_penalty_target:Dynamic, ?gradient_penalty_one_sided:Dynamic, ?reconstruction_loss_fn:Dynamic, ?reconstruction_loss_weight:Dynamic, ?classification_loss_fn:Dynamic, ?classification_loss_weight:Dynamic, ?classification_one_hot:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Returns a StarGAN model outputs and variables.
		
		See https://arxiv.org/abs/1711.09020 for more details.
		
		Args:
		  generator_fn: A python lambda that takes `inputs` and `targets` as inputs
		    and returns 'generated_data' as the transformed version of `input` based
		    on the `target`. `input` has shape (n, h, w, c), `targets` has shape (n,
		    num_domains), and `generated_data` has the same shape as `input`.
		  discriminator_fn: A python lambda that takes `inputs` and `num_domains` as
		    inputs and returns a tuple (`source_prediction`, `domain_prediction`).
		    `source_prediction` represents the source(real/generated) prediction by
		    the discriminator, and `domain_prediction` represents the domain
		    prediction/classification by the discriminator. `source_prediction` has
		    shape (n) and `domain_prediction` has shape (n, num_domains).
		  input_data: Tensor or a list of tensor of shape (n, h, w, c) representing
		    the real input images.
		  input_data_domain_label: Tensor or a list of tensor of shape (batch_size,
		    num_domains) representing the domain label associated with the real
		    images.
		  generator_scope: Optional generator variable scope. Useful if you want to
		    reuse a subgraph that has already been created.
		  discriminator_scope: Optional discriminator variable scope. Useful if you
		    want to reuse a subgraph that has already been created.
		
		Returns:
		  StarGANModel nametuple return the tensor that are needed to compute the
		  loss.
		
		Raises:
		  ValueError: If the shape of `input_data_domain_label` is not rank 2 or fully
		  defined in every dimensions.
	**/
	static public function stargan_model(generator_fn:Dynamic, discriminator_fn:Dynamic, input_data:Dynamic, input_data_domain_label:Dynamic, ?generator_scope:Dynamic, ?discriminator_scope:Dynamic):Dynamic;
}