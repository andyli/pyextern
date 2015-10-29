/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate._fitpack") extern class _Fitpack {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		[z,ier] = _bispev(tx,ty,c,kx,ky,x,y,nux,nuy)
	**/
	static public function _bispev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B = _bspldismat(order,xk)
		Construct the kth derivative discontinuity jump constraint matrix 
		for spline fitting of order k given sample positions in xk.
		
		If xk is an integer (N+1), then the result is equivalent to
		xk=arange(N+1)+x0 for any value of x0.   This produces the
		integer-spaced matrix a bit faster.  If xk is a 2-tuple (N+1,dx)
		then it produces the result as if the sample distance were dx
	**/
	static public function _bspldismat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = _bspleval(xx,xk,coef,k,{deriv (0)})
		
		The spline is defined by the approximation interval xk[0] to xk[-1],
		the length of xk (N+1), the order of the spline, k, and 
		the number of coeficients N+k.  The coefficients range from xk_{-K}
		to xk_{N-1} inclusive and are all the coefficients needed to define
		an arbitrary spline of order k, on the given approximation interval
		
		Extra knot points are internally added using knot-point symmetry 
		around xk[0] and xk[-1]
	**/
	static public function _bspleval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B = _bsplmat(order,xk)
		Construct the constraint matrix for spline fitting of order k
		given sample positions in xk.
		
		If xk is an integer (N+1), then the result is equivalent to
		xk=arange(N+1)+x0 for any value of x0.   This produces the
		integer-spaced, or cardinal spline matrix a bit faster.
	**/
	static public function _bsplmat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[t,c,o] = _curfit(x,y,w,xb,xe,k,iopt,s,t,nest,wrk,iwrk,per)
	**/
	static public function _curfit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[tt,cc,ier] = _insert(iopt,t,c,k,x,m)
	**/
	static public function _insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[t,c,o] = _parcur(x,w,u,ub,ue,k,iopt,ipar,s,t,nest,wrk,iwrk,per)
	**/
	static public function _parcur(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[d,ier] = _spalde(t,c,k,x)
	**/
	static public function _spalde(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[y,ier] = _spl_(x,nu,t,c,k,e)
	**/
	static public function _spl_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[aint,wrk] = _splint(t,c,k,a,b)
	**/
	static public function _splint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[z,ier] = _sproot(t,c,k,mest)
	**/
	static public function _sproot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[tx,ty,c,o] = _surfit(x, y, z, w, xb, xe, yb, ye, kx,ky,iopt,s,eps,tx,ty,nxest,nyest,wrk,lwrk1,lwrk2)
	**/
	static public function _surfit(args:haxe.extern.Rest<Dynamic>):Dynamic;
}