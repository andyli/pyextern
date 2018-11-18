/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.losses.python.losses_wargs;
@:pythonImport("tensorflow.contrib.gan.python.losses.python.losses_wargs") extern class Losses_wargs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		ACGAN loss for the discriminator.
		
		The ACGAN loss adds a classification loss to the conditional discriminator.
		Therefore, the discriminator must output a tuple consisting of
		  (1) the real/fake prediction and
		  (2) the logits for the classification (usually the last conv layer,
		      flattened).
		
		For more details:
		  ACGAN: https://arxiv.org/abs/1610.09585
		
		Args:
		  discriminator_real_classification_logits: Classification logits for real
		    data.
		  discriminator_gen_classification_logits: Classification logits for generated
		    data.
		  one_hot_labels: A Tensor holding one-hot labels for the batch.
		  label_smoothing: A float in [0, 1]. If greater than 0, smooth the labels for
		    "discriminator on real data" as suggested in
		    https://arxiv.org/pdf/1701.00160
		  real_weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `discriminator_real_outputs`, and must be broadcastable to
		    `discriminator_real_outputs` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding dimension).
		  generated_weights: Same as `real_weights`, but for
		    `discriminator_gen_classification_logits`.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. Shape depends on `reduction`.
		
		Raises:
		  TypeError: If the discriminator does not output a tuple.
	**/
	static public function acgan_discriminator_loss(discriminator_real_classification_logits:Dynamic, discriminator_gen_classification_logits:Dynamic, one_hot_labels:Dynamic, ?label_smoothing:Dynamic, ?real_weights:Dynamic, ?generated_weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		ACGAN loss for the generator.
		
		The ACGAN loss adds a classification loss to the conditional discriminator.
		Therefore, the discriminator must output a tuple consisting of
		  (1) the real/fake prediction and
		  (2) the logits for the classification (usually the last conv layer,
		      flattened).
		
		For more details:
		  ACGAN: https://arxiv.org/abs/1610.09585
		
		Args:
		  discriminator_gen_classification_logits: Classification logits for generated
		    data.
		  one_hot_labels: A Tensor holding one-hot labels for the batch.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `discriminator_gen_classification_logits`, and must be broadcastable to
		    `discriminator_gen_classification_logits` (i.e., all dimensions must be
		    either `1`, or the same as the corresponding dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. Shape depends on `reduction`.
		
		Raises:
		  ValueError: if arg module not either `generator` or `discriminator`
		  TypeError: if the discriminator does not output a tuple.
	**/
	static public function acgan_generator_loss(discriminator_gen_classification_logits:Dynamic, one_hot_labels:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Utility to combine main and adversarial losses.
		
		This utility combines the main and adversarial losses in one of two ways.
		1) Fixed coefficient on adversarial loss. Use `weight_factor` in this case.
		2) Fixed ratio of gradients. Use `gradient_ratio` in this case. This is often
		  used to make sure both losses affect weights roughly equally, as in
		  https://arxiv.org/pdf/1705.05823.
		
		One can optionally also visualize the scalar and gradient behavior of the
		losses.
		
		Args:
		  main_loss: A floating scalar Tensor indicating the main loss.
		  adversarial_loss: A floating scalar Tensor indication the adversarial loss.
		  weight_factor: If not `None`, the coefficient by which to multiply the
		    adversarial loss. Exactly one of this and `gradient_ratio` must be
		    non-None.
		  gradient_ratio: If not `None`, the ratio of the magnitude of the gradients.
		    Specifically,
		      gradient_ratio = grad_mag(main_loss) / grad_mag(adversarial_loss)
		    Exactly one of this and `weight_factor` must be non-None.
		  gradient_ratio_epsilon: An epsilon to add to the adversarial loss
		    coefficient denominator, to avoid division-by-zero.
		  variables: List of variables to calculate gradients with respect to. If not
		    present, defaults to all trainable variables.
		  scalar_summaries: Create scalar summaries of losses.
		  gradient_summaries: Create gradient summaries of losses.
		  scope: Optional name scope.
		
		Returns:
		  A floating scalar Tensor indicating the desired combined loss.
		
		Raises:
		  ValueError: Malformed input.
	**/
	static public function combine_adversarial_loss(main_loss:Dynamic, adversarial_loss:Dynamic, ?weight_factor:Dynamic, ?gradient_ratio:Dynamic, ?gradient_ratio_epsilon:Dynamic, ?variables:Dynamic, ?scalar_summaries:Dynamic, ?gradient_summaries:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Defines the cycle consistency loss.
		
		The cyclegan model has two partial models where `model_x2y` generator F maps
		data set X to Y, `model_y2x` generator G maps data set Y to X. For a `data_x`
		in data set X, we could reconstruct it by
		* reconstructed_data_x = G(F(data_x))
		Similarly
		* reconstructed_data_y = F(G(data_y))
		
		The cycle consistency loss is about the difference between data and
		reconstructed data, namely
		* loss_x2x = |data_x - G(F(data_x))| (L1-norm)
		* loss_y2y = |data_y - F(G(data_y))| (L1-norm)
		* loss = (loss_x2x + loss_y2y) / 2
		where `loss` is the final result.
		
		For the L1-norm, we follow the original implementation:
		https://github.com/junyanz/CycleGAN/blob/master/models/cycle_gan_model.lua
		we use L1-norm of pixel-wise error normalized by data size such that
		`cycle_loss_weight` can be specified independent of image size.
		
		See https://arxiv.org/abs/1703.10593 for more details.
		
		Args:
		  data_x: A `Tensor` of data X.
		  reconstructed_data_x: A `Tensor` of reconstructed data X.
		  data_y: A `Tensor` of data Y.
		  reconstructed_data_y: A `Tensor` of reconstructed data Y.
		  scope: The scope for the operations performed in computing the loss.
		    Defaults to None.
		  add_summaries: Whether or not to add detailed summaries for the loss.
		    Defaults to False.
		
		Returns:
		  A scalar `Tensor` of cycle consistency loss.
	**/
	static public function cycle_consistency_loss(data_x:Dynamic, reconstructed_data_x:Dynamic, data_y:Dynamic, reconstructed_data_y:Dynamic, ?scope:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Least squares discriminator loss.
		
		This loss comes from `Least Squares Generative Adversarial Networks`
		(https://arxiv.org/abs/1611.04076).
		
		L = 1/2 * (D(x) - `real`) ** 2 +
		    1/2 * (D(G(z)) - `fake_label`) ** 2
		
		where D(y) are discriminator logits.
		
		Args:
		  discriminator_real_outputs: Discriminator output on real data.
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		  real_label: The value that the discriminator tries to output for real data.
		  fake_label: The value that the discriminator tries to output for fake data.
		  real_weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `discriminator_real_outputs`, and must be broadcastable to
		    `discriminator_real_outputs` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding dimension).
		  generated_weights: Same as `real_weights`, but for
		    `discriminator_gen_outputs`.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. The shape depends on `reduction`.
	**/
	static public function least_squares_discriminator_loss(discriminator_real_outputs:Dynamic, discriminator_gen_outputs:Dynamic, ?real_label:Dynamic, ?fake_label:Dynamic, ?real_weights:Dynamic, ?generated_weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Least squares generator loss.
		
		This loss comes from `Least Squares Generative Adversarial Networks`
		(https://arxiv.org/abs/1611.04076).
		
		L = 1/2 * (D(G(z)) - `real_label`) ** 2
		
		where D(y) are discriminator logits.
		
		Args:
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		  real_label: The value that the generator is trying to get the discriminator
		    to output on generated data.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `discriminator_gen_outputs`, and must be broadcastable to
		    `discriminator_gen_outputs` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. The shape depends on `reduction`.
	**/
	static public function least_squares_generator_loss(discriminator_gen_outputs:Dynamic, ?real_label:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Original minimax discriminator loss for GANs, with label smoothing.
		
		Note that the authors don't recommend using this loss. A more practically
		useful loss is `modified_discriminator_loss`.
		
		L = - real_weights * log(sigmoid(D(x)))
		    - generated_weights * log(1 - sigmoid(D(G(z))))
		
		See `Generative Adversarial Nets` (https://arxiv.org/abs/1406.2661) for more
		details.
		
		Args:
		  discriminator_real_outputs: Discriminator output on real data.
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		  label_smoothing: The amount of smoothing for positive labels. This technique
		    is taken from `Improved Techniques for Training GANs`
		    (https://arxiv.org/abs/1606.03498). `0.0` means no smoothing.
		  real_weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `real_data`, and must be broadcastable to `real_data` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding
		    dimension).
		  generated_weights: Same as `real_weights`, but for `generated_data`.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. The shape depends on `reduction`.
	**/
	static public function minimax_discriminator_loss(discriminator_real_outputs:Dynamic, discriminator_gen_outputs:Dynamic, ?label_smoothing:Dynamic, ?real_weights:Dynamic, ?generated_weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Original minimax generator loss for GANs.
		
		Note that the authors don't recommend using this loss. A more practically
		useful loss is `modified_generator_loss`.
		
		L = log(sigmoid(D(x))) + log(1 - sigmoid(D(G(z))))
		
		See `Generative Adversarial Nets` (https://arxiv.org/abs/1406.2661) for more
		details.
		
		Args:
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		  label_smoothing: The amount of smoothing for positive labels. This technique
		    is taken from `Improved Techniques for Training GANs`
		    (https://arxiv.org/abs/1606.03498). `0.0` means no smoothing.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `discriminator_gen_outputs`, and must be broadcastable to
		    `discriminator_gen_outputs` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. The shape depends on `reduction`.
	**/
	static public function minimax_generator_loss(discriminator_gen_outputs:Dynamic, ?label_smoothing:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Same as minimax discriminator loss.
		
		See `Generative Adversarial Nets` (https://arxiv.org/abs/1406.2661) for more
		details.
		
		Args:
		  discriminator_real_outputs: Discriminator output on real data.
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		  label_smoothing: The amount of smoothing for positive labels. This technique
		    is taken from `Improved Techniques for Training GANs`
		    (https://arxiv.org/abs/1606.03498). `0.0` means no smoothing.
		  real_weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `discriminator_gen_outputs`, and must be broadcastable to
		    `discriminator_gen_outputs` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding dimension).
		  generated_weights: Same as `real_weights`, but for
		    `discriminator_gen_outputs`.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. The shape depends on `reduction`.
	**/
	static public function modified_discriminator_loss(discriminator_real_outputs:Dynamic, discriminator_gen_outputs:Dynamic, ?label_smoothing:Dynamic, ?real_weights:Dynamic, ?generated_weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Modified generator loss for GANs.
		
		L = -log(sigmoid(D(G(z))))
		
		This is the trick used in the original paper to avoid vanishing gradients
		early in training. See `Generative Adversarial Nets`
		(https://arxiv.org/abs/1406.2661) for more details.
		
		Args:
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		  label_smoothing: The amount of smoothing for positive labels. This technique
		    is taken from `Improved Techniques for Training GANs`
		    (https://arxiv.org/abs/1606.03498). `0.0` means no smoothing.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `discriminator_gen_outputs`, and must be broadcastable to `labels` (i.e.,
		    all dimensions must be either `1`, or the same as the corresponding
		    dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. The shape depends on `reduction`.
	**/
	static public function modified_generator_loss(discriminator_gen_outputs:Dynamic, ?label_smoothing:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Returns a penalty on the mutual information in an InfoGAN model.
		
		This loss comes from an InfoGAN paper https://arxiv.org/abs/1606.03657.
		
		Args:
		  structured_generator_inputs: A list of Tensors representing the random noise
		    that must  have high mutual information with the generator output. List
		    length should match `predicted_distributions`.
		  predicted_distributions: A list of `tfp.distributions.Distribution`s.
		    Predicted by the recognizer, and used to evaluate the likelihood of the
		    structured noise. List length should match `structured_generator_inputs`.
		  weights: Optional `Tensor` whose rank is either 0, or the same dimensions as
		    `structured_generator_inputs`.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A scalar Tensor representing the mutual information loss.
	**/
	static public function mutual_information_penalty(structured_generator_inputs:Dynamic, predicted_distributions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Wasserstein discriminator loss for GANs.
		
		See `Wasserstein GAN` (https://arxiv.org/abs/1701.07875) for more details.
		
		Args:
		  discriminator_real_outputs: Discriminator output on real data.
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		  real_weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `discriminator_real_outputs`, and must be broadcastable to
		    `discriminator_real_outputs` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding dimension).
		  generated_weights: Same as `real_weights`, but for
		    `discriminator_gen_outputs`.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. The shape depends on `reduction`.
	**/
	static public function wasserstein_discriminator_loss(discriminator_real_outputs:Dynamic, discriminator_gen_outputs:Dynamic, ?real_weights:Dynamic, ?generated_weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		Wasserstein generator loss for GANs.
		
		See `Wasserstein GAN` (https://arxiv.org/abs/1701.07875) for more details.
		
		Args:
		  discriminator_gen_outputs: Discriminator output on generated data. Expected
		    to be in the range of (-inf, inf).
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `discriminator_gen_outputs`, and must be broadcastable to
		    `discriminator_gen_outputs` (i.e., all dimensions must be either `1`, or
		    the same as the corresponding dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add detailed summaries for the loss.
		
		Returns:
		  A loss Tensor. The shape depends on `reduction`.
	**/
	static public function wasserstein_generator_loss(discriminator_gen_outputs:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
	/**
		The gradient penalty for the Wasserstein discriminator loss.
		
		See `Improved Training of Wasserstein GANs`
		(https://arxiv.org/abs/1704.00028) for more details.
		
		Args:
		  real_data: Real data.
		  generated_data: Output of the generator.
		  generator_inputs: Exact argument to pass to the generator, which is used
		    as optional conditioning to the discriminator.
		  discriminator_fn: A discriminator function that conforms to TFGAN API.
		  discriminator_scope: If not `None`, reuse discriminators from this scope.
		  epsilon: A small positive number added for numerical stability when
		    computing the gradient norm.
		  target: Optional Python number or `Tensor` indicating the target value of
		    gradient norm. Defaults to 1.0.
		  one_sided: If `True`, penalty proposed in https://arxiv.org/abs/1709.08894
		    is used. Defaults to `False`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `real_data` and `generated_data`, and must be broadcastable to
		    them (i.e., all dimensions must be either `1`, or the same as the
		    corresponding dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: A `tf.losses.Reduction` to apply to loss.
		  add_summaries: Whether or not to add summaries for the loss.
		
		Returns:
		  A loss Tensor. The shape depends on `reduction`.
		
		Raises:
		  ValueError: If the rank of data Tensors is unknown.
	**/
	static public function wasserstein_gradient_penalty(real_data:Dynamic, generated_data:Dynamic, generator_inputs:Dynamic, discriminator_fn:Dynamic, discriminator_scope:Dynamic, ?epsilon:Dynamic, ?target:Dynamic, ?one_sided:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?add_summaries:Dynamic):Dynamic;
}