/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.eval.python.classifier_metrics;
@:pythonImport("tensorflow.contrib.gan.python.eval.python.classifier_metrics") extern class Classifier_metrics_Module {
	static public var INCEPTION_DEFAULT_IMAGE_SIZE : Dynamic;
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
		Classifier score for evaluating a conditional generative model.
		
		This is based on the Inception Score, but for an arbitrary classifier.
		
		This technique is described in detail in https://arxiv.org/abs/1606.03498. In
		summary, this function calculates
		
		exp( E[ KL(p(y|x) || p(y)) ] )
		
		which captures how different the network's classification prediction is from
		the prior distribution over classes.
		
		NOTE: This function consumes images, computes their logits, and then
		computes the classifier score. If you would like to precompute many logits for
		large batches, use classifier_score_from_logits(), which this method also
		uses.
		
		Args:
		  images: Images to calculate the classifier score for.
		  classifier_fn: A function that takes images and produces logits based on a
		    classifier.
		  num_batches: Number of batches to split `generated_images` in to in order to
		    efficiently run them through the classifier network.
		
		Returns:
		  The classifier score. A floating-point scalar of the same type as the output
		  of `classifier_fn`.
	**/
	static public function classifier_score(images:Dynamic, classifier_fn:Dynamic, ?num_batches:Dynamic):Dynamic;
	/**
		Classifier score for evaluating a generative model from logits.
		
		This method computes the classifier score for a set of logits. This can be
		used independently of the classifier_score() method, especially in the case
		of using large batches during evaluation where we would like precompute all
		of the logits before computing the classifier score.
		
		This technique is described in detail in https://arxiv.org/abs/1606.03498. In
		summary, this function calculates:
		
		exp( E[ KL(p(y|x) || p(y)) ] )
		
		which captures how different the network's classification prediction is from
		the prior distribution over classes.
		
		Args:
		  logits: Precomputed 2D tensor of logits that will be used to
		    compute the classifier score.
		
		Returns:
		  The classifier score. A floating-point scalar of the same type as the output
		  of `logits`.
	**/
	static public function classifier_score_from_logits(logits:Dynamic):Dynamic;
	/**
		Classifier distance for evaluating a generative model.
		
		This is based on the Frechet Inception distance, but for an arbitrary
		classifier.
		
		This technique is described in detail in https://arxiv.org/abs/1706.08500.
		Given two Gaussian distribution with means m and m_w and covariance matrices
		C and C_w, this function calcuates
		
		        |m - m_w|^2 + (sigma + sigma_w - 2(sigma x sigma_w)^(1/2))
		
		which captures how different the distributions of real images and generated
		images (or more accurately, their visual features) are. Note that unlike the
		Inception score, this is a true distance and utilizes information about real
		world images. In this variant, we compute diagonal-only covariance matrices.
		As a result, instead of computing an expensive matrix square root, we can do
		something much simpler, and has O(n) vs O(n^2) space complexity.
		
		Note that when computed using sample means and sample covariance matrices,
		Frechet distance is biased. It is more biased for small sample sizes. (e.g.
		even if the two distributions are the same, for a small sample size, the
		expected Frechet distance is large). It is important to use the same
		sample size to compute frechet classifier distance when comparing two
		generative models.
		
		Args:
		  real_activations: Real images to use to compute Frechet Inception distance.
		  generated_activations: Generated images to use to compute Frechet Inception
		    distance.
		
		Returns:
		  The diagonal-only Frechet Inception distance. A floating-point scalar of
		  the same type as the output of the activations.
		
		Raises:
		  ValueError: If the shape of the variance and mean vectors are not equal.
	**/
	static public function diagonal_only_frechet_classifier_distance_from_activations(real_activations:Dynamic, generated_activations:Dynamic):Dynamic;
	/**
		Classifier distance for evaluating a generative model.
		
		This is based on the Frechet Inception distance, but for an arbitrary
		classifier.
		
		This technique is described in detail in https://arxiv.org/abs/1706.08500.
		Given two Gaussian distribution with means m and m_w and covariance matrices
		C and C_w, this function calculates
		
		            |m - m_w|^2 + Tr(C + C_w - 2(C * C_w)^(1/2))
		
		which captures how different the distributions of real images and generated
		images (or more accurately, their visual features) are. Note that unlike the
		Inception score, this is a true distance and utilizes information about real
		world images.
		
		Note that when computed using sample means and sample covariance matrices,
		Frechet distance is biased. It is more biased for small sample sizes. (e.g.
		even if the two distributions are the same, for a small sample size, the
		expected Frechet distance is large). It is important to use the same
		sample size to compute Frechet classifier distance when comparing two
		generative models.
		
		NOTE: This function consumes images, computes their activations, and then
		computes the classifier score. If you would like to precompute many
		activations for real and generated images for large batches, please use
		frechet_clasifier_distance_from_activations(), which this method also uses.
		
		Args:
		  real_images: Real images to use to compute Frechet Inception distance.
		  generated_images: Generated images to use to compute Frechet Inception
		    distance.
		  classifier_fn: A function that takes images and produces activations
		    based on a classifier.
		  num_batches: Number of batches to split images in to in order to
		    efficiently run them through the classifier network.
		
		Returns:
		  The Frechet Inception distance. A floating-point scalar of the same type
		  as the output of `classifier_fn`.
	**/
	static public function frechet_classifier_distance(real_images:Dynamic, generated_images:Dynamic, classifier_fn:Dynamic, ?num_batches:Dynamic):Dynamic;
	/**
		Classifier distance for evaluating a generative model.
		
		This methods computes the Frechet classifier distance from activations of
		real images and generated images. This can be used independently of the
		frechet_classifier_distance() method, especially in the case of using large
		batches during evaluation where we would like precompute all of the
		activations before computing the classifier distance.
		
		This technique is described in detail in https://arxiv.org/abs/1706.08500.
		Given two Gaussian distribution with means m and m_w and covariance matrices
		C and C_w, this function calculates
		
		              |m - m_w|^2 + Tr(C + C_w - 2(C * C_w)^(1/2))
		
		which captures how different the distributions of real images and generated
		images (or more accurately, their visual features) are. Note that unlike the
		Inception score, this is a true distance and utilizes information about real
		world images.
		
		Note that when computed using sample means and sample covariance matrices,
		Frechet distance is biased. It is more biased for small sample sizes. (e.g.
		even if the two distributions are the same, for a small sample size, the
		expected Frechet distance is large). It is important to use the same
		sample size to compute frechet classifier distance when comparing two
		generative models.
		
		Args:
		  real_activations: 2D Tensor containing activations of real data. Shape is
		    [batch_size, activation_size].
		  generated_activations: 2D Tensor containing activations of generated data.
		    Shape is [batch_size, activation_size].
		
		Returns:
		 The Frechet Inception distance. A floating-point scalar of the same type
		 as the output of the activations.
	**/
	static public function frechet_classifier_distance_from_activations(real_activations:Dynamic, generated_activations:Dynamic):Dynamic;
	static public function frechet_inception_distance(real_images:Dynamic, generated_images:Dynamic, ?classifier_fn:Dynamic, ?num_batches:Dynamic):Dynamic;
	/**
		Get a GraphDef proto from a disk location.
	**/
	static public function get_graph_def_from_disk(filename:Dynamic):Dynamic;
	/**
		Get a GraphDef proto from within a .par file.
	**/
	static public function get_graph_def_from_resource(filename:Dynamic):Dynamic;
	/**
		Get a GraphDef proto from a tarball on the web.
		
		Args:
		  url: Web address of tarball
		  filename: Filename of graph definition within tarball
		  tar_filename: Temporary download filename (None = always download)
		
		Returns:
		  A GraphDef loaded from a file in the downloaded tarball.
	**/
	static public function get_graph_def_from_url_tarball(url:Dynamic, filename:Dynamic, ?tar_filename:Dynamic):Dynamic;
	static public function inception_score(images:Dynamic, ?classifier_fn:Dynamic, ?num_batches:Dynamic):Dynamic;
	/**
		Kernel "classifier" distance for evaluating a generative model.
		
		This is based on the Kernel Inception distance, but for an arbitrary
		embedding.
		
		This technique is described in detail in https://arxiv.org/abs/1801.01401.
		Given two distributions P and Q of activations, this function calculates
		
		    E_{X, X' ~ P}[k(X, X')] + E_{Y, Y' ~ Q}[k(Y, Y')]
		      - 2 E_{X ~ P, Y ~ Q}[k(X, Y)]
		
		where k is the polynomial kernel
		
		    k(x, y) = ( x^T y / dimension + 1 )^3.
		
		This captures how different the distributions of real and generated images'
		visual features are. Like the Frechet distance (and unlike the Inception
		score), this is a true distance and incorporates information about the
		target images. Unlike the Frechet score, this function computes an
		*unbiased* and asymptotically normal estimator, which makes comparing
		estimates across models much more intuitive.
		
		The estimator used takes time quadratic in max_block_size. Larger values of
		max_block_size will decrease the variance of the estimator but increase the
		computational cost. This differs slightly from the estimator used by the
		original paper; it is the block estimator of https://arxiv.org/abs/1307.1954.
		
		NOTE: the blocking code assumes that real_activations and
		generated_activations are both in random order. If either is sorted in a
		meaningful order, the estimator will behave poorly.
		
		NOTE: This function consumes images, computes their activations, and then
		computes the classifier score. If you would like to precompute many
		activations for real and generated images for large batches, or to compute
		multiple scores based on the same images, please use
		kernel_clasifier_distance_from_activations(), which this method also uses.
		
		Args:
		  real_images: Real images to use to compute Kernel Inception distance.
		  generated_images: Generated images to use to compute Kernel Inception
		    distance.
		  classifier_fn: A function that takes images and produces activations based
		    on a classifier.
		  num_classifier_batches: Number of batches to split images in to in order to
		    efficiently run them through the classifier network.
		  max_estimator_block_size: integer, default 1024. The distance estimator
		    splits samples into blocks for computational efficiency. Larger values are
		    more computationally expensive but decrease the variance of the distance
		    estimate.
		  dtype: if not None, coerce activations to this dtype before computations.
		
		Returns:
		 The Kernel Inception Distance. A floating-point scalar of the same type
		 as the output of the activations.
	**/
	static public function kernel_classifier_distance(real_images:Dynamic, generated_images:Dynamic, classifier_fn:Dynamic, ?num_classifier_batches:Dynamic, ?max_block_size:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Kernel "classifier" distance for evaluating a generative model.
		
		This is based on the Kernel Inception distance, but for an arbitrary
		embedding. Also returns an estimate of the standard error of the distance
		estimator.
		
		This technique is described in detail in https://arxiv.org/abs/1801.01401.
		Given two distributions P and Q of activations, this function calculates
		
		    E_{X, X' ~ P}[k(X, X')] + E_{Y, Y' ~ Q}[k(Y, Y')]
		      - 2 E_{X ~ P, Y ~ Q}[k(X, Y)]
		
		where k is the polynomial kernel
		
		    k(x, y) = ( x^T y / dimension + 1 )^3.
		
		This captures how different the distributions of real and generated images'
		visual features are. Like the Frechet distance (and unlike the Inception
		score), this is a true distance and incorporates information about the
		target images. Unlike the Frechet score, this function computes an
		*unbiased* and asymptotically normal estimator, which makes comparing
		estimates across models much more intuitive.
		
		The estimator used takes time quadratic in max_block_size. Larger values of
		max_block_size will decrease the variance of the estimator but increase the
		computational cost. This differs slightly from the estimator used by the
		original paper; it is the block estimator of https://arxiv.org/abs/1307.1954.
		
		NOTE: the blocking code assumes that real_activations and
		generated_activations are both in random order. If either is sorted in a
		meaningful order, the estimator will behave poorly.
		
		NOTE: This function consumes images, computes their activations, and then
		computes the classifier score. If you would like to precompute many
		activations for real and generated images for large batches, or to compute
		multiple scores based on the same images, please use
		kernel_clasifier_distance_from_activations(), which this method also uses.
		
		Args:
		  real_images: Real images to use to compute Kernel Inception distance.
		  generated_images: Generated images to use to compute Kernel Inception
		    distance.
		  classifier_fn: A function that takes images and produces activations based
		    on a classifier.
		  num_classifier_batches: Number of batches to split images in to in order to
		    efficiently run them through the classifier network.
		  max_estimator_block_size: integer, default 1024. The distance estimator
		    splits samples into blocks for computational efficiency. Larger values are
		    more computationally expensive but decrease the variance of the distance
		    estimate. Having a smaller block size also gives a better estimate of the
		    standard error.
		  dtype: if not None, coerce activations to this dtype before computations.
		
		Returns:
		 The Kernel Inception Distance. A floating-point scalar of the same type
		   as the output of the activations.
		 An estimate of the standard error of the distance estimator (a scalar of
		   the same type).
	**/
	static public function kernel_classifier_distance_and_std(real_images:Dynamic, generated_images:Dynamic, classifier_fn:Dynamic, ?num_classifier_batches:Dynamic, ?max_block_size:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Kernel "classifier" distance for evaluating a generative model.
		
		This methods computes the kernel classifier distance from activations of
		real images and generated images. This can be used independently of the
		kernel_classifier_distance() method, especially in the case of using large
		batches during evaluation where we would like to precompute all of the
		activations before computing the classifier distance, or if we want to
		compute multiple metrics based on the same images. It also returns a rough
		estimate of the standard error of the estimator.
		
		This technique is described in detail in https://arxiv.org/abs/1801.01401.
		Given two distributions P and Q of activations, this function calculates
		
		    E_{X, X' ~ P}[k(X, X')] + E_{Y, Y' ~ Q}[k(Y, Y')]
		      - 2 E_{X ~ P, Y ~ Q}[k(X, Y)]
		
		where k is the polynomial kernel
		
		    k(x, y) = ( x^T y / dimension + 1 )^3.
		
		This captures how different the distributions of real and generated images'
		visual features are. Like the Frechet distance (and unlike the Inception
		score), this is a true distance and incorporates information about the
		target images. Unlike the Frechet score, this function computes an
		*unbiased* and asymptotically normal estimator, which makes comparing
		estimates across models much more intuitive.
		
		The estimator used takes time quadratic in max_block_size. Larger values of
		max_block_size will decrease the variance of the estimator but increase the
		computational cost. This differs slightly from the estimator used by the
		original paper; it is the block estimator of https://arxiv.org/abs/1307.1954.
		The estimate of the standard error will also be more reliable when there are
		more blocks, i.e. when max_block_size is smaller.
		
		NOTE: the blocking code assumes that real_activations and
		generated_activations are both in random order. If either is sorted in a
		meaningful order, the estimator will behave poorly.
		
		Args:
		  real_activations: 2D Tensor containing activations of real data. Shape is
		    [batch_size, activation_size].
		  generated_activations: 2D Tensor containing activations of generated data.
		    Shape is [batch_size, activation_size].
		  max_block_size: integer, default 1024. The distance estimator splits samples
		    into blocks for computational efficiency. Larger values are more
		    computationally expensive but decrease the variance of the distance
		    estimate. Having a smaller block size also gives a better estimate of the
		    standard error.
		  dtype: if not None, coerce activations to this dtype before computations.
		
		Returns:
		 The Kernel Inception Distance. A floating-point scalar of the same type
		   as the output of the activations.
		 An estimate of the standard error of the distance estimator (a scalar of
		   the same type).
	**/
	static public function kernel_classifier_distance_and_std_from_activations(real_activations:Dynamic, generated_activations:Dynamic, ?max_block_size:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Kernel "classifier" distance for evaluating a generative model.
		
		This methods computes the kernel classifier distance from activations of
		real images and generated images. This can be used independently of the
		kernel_classifier_distance() method, especially in the case of using large
		batches during evaluation where we would like to precompute all of the
		activations before computing the classifier distance, or if we want to
		compute multiple metrics based on the same images.
		
		This technique is described in detail in https://arxiv.org/abs/1801.01401.
		Given two distributions P and Q of activations, this function calculates
		
		    E_{X, X' ~ P}[k(X, X')] + E_{Y, Y' ~ Q}[k(Y, Y')]
		      - 2 E_{X ~ P, Y ~ Q}[k(X, Y)]
		
		where k is the polynomial kernel
		
		    k(x, y) = ( x^T y / dimension + 1 )^3.
		
		This captures how different the distributions of real and generated images'
		visual features are. Like the Frechet distance (and unlike the Inception
		score), this is a true distance and incorporates information about the
		target images. Unlike the Frechet score, this function computes an
		*unbiased* and asymptotically normal estimator, which makes comparing
		estimates across models much more intuitive.
		
		The estimator used takes time quadratic in max_block_size. Larger values of
		max_block_size will decrease the variance of the estimator but increase the
		computational cost. This differs slightly from the estimator used by the
		original paper; it is the block estimator of https://arxiv.org/abs/1307.1954.
		
		NOTE: the blocking code assumes that real_activations and
		generated_activations are both in random order. If either is sorted in a
		meaningful order, the estimator will behave poorly.
		
		Args:
		  real_activations: 2D Tensor containing activations of real data. Shape is
		    [batch_size, activation_size].
		  generated_activations: 2D Tensor containing activations of generated data.
		    Shape is [batch_size, activation_size].
		  max_block_size: integer, default 1024. The distance estimator splits samples
		    into blocks for computational efficiency. Larger values are more
		    computationally expensive but decrease the variance of the distance
		    estimate.
		  dtype: if not None, coerce activations to this dtype before computations.
		
		Returns:
		 The Kernel Inception Distance. A floating-point scalar of the same type
		 as the output of the activations.
	**/
	static public function kernel_classifier_distance_from_activations(real_activations:Dynamic, generated_activations:Dynamic, ?max_block_size:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function kernel_inception_distance(real_images:Dynamic, generated_images:Dynamic, ?classifier_fn:Dynamic, ?num_classifier_batches:Dynamic, ?max_block_size:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function kernel_inception_distance_and_std(real_images:Dynamic, generated_images:Dynamic, ?classifier_fn:Dynamic, ?num_classifier_batches:Dynamic, ?max_block_size:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Classifier distance for evaluating a generative model from activations.
		
		Given two Gaussian distribution with means m and m_w and covariance matrices
		C and C_w, this function calcuates
		
		                              |m - m_w|^2
		
		which captures how different the distributions of real images and generated
		images (or more accurately, their visual features) are. Note that unlike the
		Inception score, this is a true distance and utilizes information about real
		world images.
		
		Note that when computed using sample means and sample covariance matrices,
		Frechet distance is biased. It is more biased for small sample sizes. (e.g.
		even if the two distributions are the same, for a small sample size, the
		expected Frechet distance is large). It is important to use the same
		sample size to compute frechet classifier distance when comparing two
		generative models.
		
		In this variant, we only compute the difference between the means of the
		fitted Gaussians. The computation leads to O(n) vs. O(n^2) memory usage, yet
		still retains much of the same information as FID.
		
		Args:
		  real_activations: 2D array of activations of real images of size
		    [num_images, num_dims] to use to compute Frechet Inception distance.
		  generated_activations: 2D array of activations of generated images of size
		    [num_images, num_dims] to use to compute Frechet Inception distance.
		
		Returns:
		  The mean-only Frechet Inception distance. A floating-point scalar of the
		  same type as the output of the activations.
	**/
	static public function mean_only_frechet_classifier_distance_from_activations(real_activations:Dynamic, generated_activations:Dynamic):Dynamic;
	/**
		Prepare a batch of images for evaluation.
		
		This is the preprocessing portion of the graph from
		http://download.tensorflow.org/models/image/imagenet/inception-2015-12-05.tgz.
		
		Note that it expects Tensors in [0, 255]. This function maps pixel values to
		[-1, 1] and resizes to match the InceptionV1 network.
		
		Args:
		  images: 3-D or 4-D Tensor of images. Values are in [0, 255].
		  height: Integer. Height of resized output image.
		  width: Integer. Width of resized output image.
		  scope: Optional scope for name_scope.
		
		Returns:
		  3-D or 4-D float Tensor of prepared image(s). Values are in [-1, 1].
	**/
	static public function preprocess_image(images:Dynamic, ?height:Dynamic, ?width:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Runs a network from a frozen graph.
		
		Args:
		  tensor: An Input tensor.
		  graph_def: A GraphDef proto.
		  input_tensor: Name of input tensor in graph def.
		  output_tensor: A tensor name or list of tensor names in graph def.
		  scope: Name scope for classifier.
		
		Returns:
		  Classifier output if `output_tensor` is a string, or a list of outputs if
		  `output_tensor` is a list.
		
		Raises:
		  ValueError: If `input_tensor` or `output_tensor` aren't in the graph_def.
	**/
	static public function run_image_classifier(tensor:Dynamic, graph_def:Dynamic, input_tensor:Dynamic, output_tensor:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Run images through a pretrained Inception classifier.
		
		Args:
		  images: Input tensors. Must be [batch, height, width, channels]. Input shape
		    and values must be in [-1, 1], which can be achieved using
		    `preprocess_image`.
		  graph_def: A GraphDef proto of a pretrained Inception graph. If `None`,
		    call `default_graph_def_fn` to get GraphDef.
		  default_graph_def_fn: A function that returns a GraphDef. Used if
		    `graph_def` is `None. By default, returns a pretrained InceptionV3 graph.
		  image_size: Required image width and height. See unit tests for the default
		    values.
		  input_tensor: Name of input Tensor.
		  output_tensor: Name or list of output Tensors. This function will compute
		    activations at the specified layer. Examples include INCEPTION_V3_OUTPUT
		    and INCEPTION_V3_FINAL_POOL which would result in this function computing
		    the final logits or the penultimate pooling layer.
		
		Returns:
		  Tensor or Tensors corresponding to computed `output_tensor`.
		
		Raises:
		  ValueError: If images are not the correct size.
		  ValueError: If neither `graph_def` nor `default_graph_def_fn` are provided.
	**/
	static public function run_inception(images:Dynamic, ?graph_def:Dynamic, ?default_graph_def_fn:Dynamic, ?image_size:Dynamic, ?input_tensor:Dynamic, ?output_tensor:Dynamic):Dynamic;
}