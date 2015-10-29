/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate.dfitpack") extern class Dfitpack {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		z,ier = bispeu(tx,ty,c,kx,ky,x,y)
		
		Wrapper for ``bispeu``.
		
		Parameters
		----------
		tx : input rank-1 array('d') with bounds (nx)
		ty : input rank-1 array('d') with bounds (ny)
		c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		kx : input int
		ky : input int
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (m)
		
		Returns
		-------
		z : rank-1 array('d') with bounds (m)
		ier : int
	**/
	static public function bispeu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z,ier = bispev(tx,ty,c,kx,ky,x,y)
		
		Wrapper for ``bispev``.
		
		Parameters
		----------
		tx : input rank-1 array('d') with bounds (nx)
		ty : input rank-1 array('d') with bounds (ny)
		c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		kx : input int
		ky : input int
		x : input rank-1 array('d') with bounds (mx)
		y : input rank-1 array('d') with bounds (my)
		
		Returns
		-------
		z : rank-2 array('d') with bounds (mx,my)
		ier : int
	**/
	static public function bispev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n,c,fp,ier = curfit(iopt,x,y,w,t,wrk,iwrk,[xb,xe,k,s])
		
		Wrapper for ``curfit``.
		
		Parameters
		----------
		iopt : input int
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (m)
		w : input rank-1 array('d') with bounds (m)
		t : in/output rank-1 array('d') with bounds (nest)
		wrk : in/output rank-1 array('d') with bounds (lwrk)
		iwrk : in/output rank-1 array('i') with bounds (nest)
		
		Other Parameters
		----------------
		xb : input float, optional
		    Default: x[0]
		xe : input float, optional
		    Default: x[m-1]
		k : input int, optional
		    Default: 3
		s : input float, optional
		    Default: 0.0
		
		Returns
		-------
		n : int
		c : rank-1 array('d') with bounds (n)
		fp : float
		ier : int
	**/
	static public function curfit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dblint = dblint(tx,ty,c,kx,ky,xb,xe,yb,ye)
		
		Wrapper for ``dblint``.
		
		Parameters
		----------
		tx : input rank-1 array('d') with bounds (nx)
		ty : input rank-1 array('d') with bounds (ny)
		c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		kx : input int
		ky : input int
		xb : input float
		xe : input float
		yb : input float
		ye : input float
		
		Returns
		-------
		dblint : float
	**/
	static public function dblint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ier = fpchec(x,t,k)
		
		Wrapper for ``fpchec``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (m)
		t : input rank-1 array('d') with bounds (n)
		k : input int
		
		Returns
		-------
		ier : int
	**/
	static public function fpchec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y,w,xb,xe,k,s,n,t,c,fp,fpint,nrdata,ier = fpcurf0(x,y,k,[w,xb,xe,s,nest])
		
		Wrapper for ``fpcurf0``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (m)
		k : input int
		
		Other Parameters
		----------------
		w : input rank-1 array('d') with bounds (m), optional
		    Default: 1.0
		xb : input float, optional
		    Default: x[0]
		xe : input float, optional
		    Default: x[m-1]
		s : input float, optional
		    Default: m
		nest : input int, optional
		    Default: (s==0.0?m+k+1:MAX(m/2,2*k1))
		
		Returns
		-------
		x : rank-1 array('d') with bounds (m)
		y : rank-1 array('d') with bounds (m)
		w : rank-1 array('d') with bounds (m)
		xb : float
		xe : float
		k : int
		s : float
		n : int
		t : rank-1 array('d') with bounds (nest)
		c : rank-1 array('d') with bounds (nest)
		fp : float
		fpint : rank-1 array('d') with bounds (nest)
		nrdata : rank-1 array('i') with bounds (nest)
		ier : int
	**/
	static public function fpcurf0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y,w,xb,xe,k,s,n,t,c,fp,fpint,nrdata,ier = fpcurf1(x,y,w,xb,xe,k,s,n,t,c,fp,fpint,nrdata,ier,[overwrite_x,overwrite_y,overwrite_w,overwrite_t,overwrite_c,overwrite_fpint,overwrite_nrdata])
		
		Wrapper for ``fpcurf1``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (m)
		w : input rank-1 array('d') with bounds (m)
		xb : input float
		xe : input float
		k : input int
		s : input float
		n : input int
		t : input rank-1 array('d') with bounds (nest)
		c : input rank-1 array('d') with bounds (nest)
		fp : input float
		fpint : input rank-1 array('d') with bounds (nest)
		nrdata : input rank-1 array('i') with bounds (nest)
		ier : input int
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 1
		overwrite_w : input int, optional
		    Default: 1
		overwrite_t : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 1
		overwrite_fpint : input int, optional
		    Default: 1
		overwrite_nrdata : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('d') with bounds (m)
		y : rank-1 array('d') with bounds (m)
		w : rank-1 array('d') with bounds (m)
		xb : float
		xe : float
		k : int
		s : float
		n : int
		t : rank-1 array('d') with bounds (nest)
		c : rank-1 array('d') with bounds (nest)
		fp : float
		fpint : rank-1 array('d') with bounds (nest)
		nrdata : rank-1 array('i') with bounds (nest)
		ier : int
	**/
	static public function fpcurf1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y,w,xb,xe,k,s,n,t,c,fp,fpint,nrdata,ier = fpcurfm1(x,y,k,t,[w,xb,xe,overwrite_t])
		
		Wrapper for ``fpcurfm1``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (m)
		k : input int
		t : input rank-1 array('d') with bounds (n)
		
		Other Parameters
		----------------
		w : input rank-1 array('d') with bounds (m), optional
		    Default: 1.0
		xb : input float, optional
		    Default: x[0]
		xe : input float, optional
		    Default: x[m-1]
		overwrite_t : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('d') with bounds (m)
		y : rank-1 array('d') with bounds (m)
		w : rank-1 array('d') with bounds (m)
		xb : float
		xe : float
		k : int
		s : float
		n : int
		t : rank-1 array('d') with bounds (n)
		c : rank-1 array('d') with bounds (nest)
		fp : float
		fpint : rank-1 array('d') with bounds (nest)
		nrdata : rank-1 array('i') with bounds (nest)
		ier : int
	**/
	static public function fpcurfm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n,c,fp,ier = parcur(iopt,ipar,idim,u,x,w,ub,ue,t,wrk,iwrk,[k,s])
		
		Wrapper for ``parcur``.
		
		Parameters
		----------
		iopt : input int
		ipar : input int
		idim : input int
		u : in/output rank-1 array('d') with bounds (m)
		x : input rank-1 array('d') with bounds (mx)
		w : input rank-1 array('d') with bounds (m)
		ub : input float
		ue : input float
		t : in/output rank-1 array('d') with bounds (nest)
		wrk : in/output rank-1 array('d') with bounds (lwrk)
		iwrk : in/output rank-1 array('i') with bounds (nest)
		
		Other Parameters
		----------------
		k : input int, optional
		    Default: 3.0
		s : input float, optional
		    Default: 0.0
		
		Returns
		-------
		n : int
		c : rank-1 array('d') with bounds (nc)
		fp : float
		ier : int
	**/
	static public function parcur(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z,ier = parder(tx,ty,c,kx,ky,nux,nuy,x,y)
		
		Wrapper for ``parder``.
		
		Parameters
		----------
		tx : input rank-1 array('d') with bounds (nx)
		ty : input rank-1 array('d') with bounds (ny)
		c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		kx : input int
		ky : input int
		nux : input int
		nuy : input int
		x : input rank-1 array('d') with bounds (mx)
		y : input rank-1 array('d') with bounds (my)
		
		Returns
		-------
		z : rank-2 array('d') with bounds (mx,my)
		ier : int
	**/
	static public function parder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z,ier = pardeu(tx,ty,c,kx,ky,nux,nuy,x,y)
		
		Wrapper for ``pardeu``.
		
		Parameters
		----------
		tx : input rank-1 array('d') with bounds (nx)
		ty : input rank-1 array('d') with bounds (ny)
		c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		kx : input int
		ky : input int
		nux : input int
		nuy : input int
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (m)
		
		Returns
		-------
		z : rank-1 array('d') with bounds (m)
		ier : int
	**/
	static public function pardeu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n,c,fp,ier = percur(iopt,x,y,w,t,wrk,iwrk,[k,s])
		
		Wrapper for ``percur``.
		
		Parameters
		----------
		iopt : input int
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (m)
		w : input rank-1 array('d') with bounds (m)
		t : in/output rank-1 array('d') with bounds (nest)
		wrk : in/output rank-1 array('d') with bounds (lwrk)
		iwrk : in/output rank-1 array('i') with bounds (nest)
		
		Other Parameters
		----------------
		k : input int, optional
		    Default: 3
		s : input float, optional
		    Default: 0.0
		
		Returns
		-------
		n : int
		c : rank-1 array('d') with bounds (n)
		fp : float
		ier : int
	**/
	static public function percur(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nx,tx,ny,ty,c,fp,ier = regrid_smth(x,y,z,[xb,xe,yb,ye,kx,ky,s])
		
		Wrapper for ``regrid_smth``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (mx)
		y : input rank-1 array('d') with bounds (my)
		z : input rank-1 array('d') with bounds (mx*my)
		
		Other Parameters
		----------------
		xb : input float, optional
		    Default: dmin(x,mx)
		xe : input float, optional
		    Default: dmax(x,mx)
		yb : input float, optional
		    Default: dmin(y,my)
		ye : input float, optional
		    Default: dmax(y,my)
		kx : input int, optional
		    Default: 3
		ky : input int, optional
		    Default: 3
		s : input float, optional
		    Default: 0.0
		
		Returns
		-------
		nx : int
		tx : rank-1 array('d') with bounds (nxest)
		ny : int
		ty : rank-1 array('d') with bounds (nyest)
		c : rank-1 array('d') with bounds ((nxest-kx-1)*(nyest-ky-1))
		fp : float
		ier : int
	**/
	static public function regrid_smth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nu,tu,nv,tv,c,fp,ier = regrid_smth_spher(iopt,ider,u,v,r,[r0,r1,s])
		
		Wrapper for ``regrid_smth_spher``.
		
		Parameters
		----------
		iopt : input rank-1 array('i') with bounds (3)
		ider : input rank-1 array('i') with bounds (4)
		u : input rank-1 array('d') with bounds (mu)
		v : input rank-1 array('d') with bounds (mv)
		r : input rank-1 array('d') with bounds (mu*mv)
		
		Other Parameters
		----------------
		r0 : input float
		r1 : input float
		s : input float, optional
		    Default: 0.0
		
		Returns
		-------
		nu : int
		tu : rank-1 array('d') with bounds (nuest)
		nv : int
		tv : rank-1 array('d') with bounds (nvest)
		c : rank-1 array('d') with bounds ((nuest-4)*(nvest-4))
		fp : float
		ier : int
	**/
	static public function regrid_smth_spher(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,ier = spalde(t,c,k,x)
		
		Wrapper for ``spalde``.
		
		Parameters
		----------
		t : input rank-1 array('d') with bounds (n)
		c : input rank-1 array('d') with bounds (n)
		k : input int
		x : input float
		
		Returns
		-------
		d : rank-1 array('d') with bounds (k + 1)
		ier : int
	**/
	static public function spalde(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tt,tp,c,fp,ier = spherfit_lsq(teta,phi,r,tt,tp,[w,eps,overwrite_tt,overwrite_tp])
		
		Wrapper for ``spherfit_lsq``.
		
		Parameters
		----------
		teta : input rank-1 array('d') with bounds (m)
		phi : input rank-1 array('d') with bounds (m)
		r : input rank-1 array('d') with bounds (m)
		tt : input rank-1 array('d') with bounds (ntest)
		tp : input rank-1 array('d') with bounds (npest)
		
		Other Parameters
		----------------
		w : input rank-1 array('d') with bounds (m), optional
		    Default: 1.0
		eps : input float, optional
		    Default: 1e-16
		overwrite_tt : input int, optional
		    Default: 1
		overwrite_tp : input int, optional
		    Default: 1
		
		Returns
		-------
		tt : rank-1 array('d') with bounds (ntest)
		tp : rank-1 array('d') with bounds (npest)
		c : rank-1 array('d') with bounds ((nt-4)*(np-4))
		fp : float
		ier : int
	**/
	static public function spherfit_lsq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nt,tt,np,tp,c,fp,ier = spherfit_smth(teta,phi,r,[w,s,eps])
		
		Wrapper for ``spherfit_smth``.
		
		Parameters
		----------
		teta : input rank-1 array('d') with bounds (m)
		phi : input rank-1 array('d') with bounds (m)
		r : input rank-1 array('d') with bounds (m)
		
		Other Parameters
		----------------
		w : input rank-1 array('d') with bounds (m), optional
		    Default: 1.0
		s : input float, optional
		    Default: m
		eps : input float, optional
		    Default: 1e-16
		
		Returns
		-------
		nt : int
		tt : rank-1 array('d') with bounds (ntest)
		np : int
		tp : rank-1 array('d') with bounds (npest)
		c : rank-1 array('d') with bounds ((ntest-4)*(npest-4))
		fp : float
		ier : int
	**/
	static public function spherfit_smth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = splder(t,c,k,x,[nu,e])
		
		Wrapper for ``splder``.
		
		Parameters
		----------
		t : input rank-1 array('d') with bounds (n)
		c : input rank-1 array('d') with bounds (n)
		k : input int
		x : input rank-1 array('d') with bounds (m)
		
		Other Parameters
		----------------
		nu : input int, optional
		    Default: 1
		e : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (m)
	**/
	static public function splder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = splev(t,c,k,x,[e])
		
		Wrapper for ``splev``.
		
		Parameters
		----------
		t : input rank-1 array('d') with bounds (n)
		c : input rank-1 array('d') with bounds (n)
		k : input int
		x : input rank-1 array('d') with bounds (m)
		
		Other Parameters
		----------------
		e : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (m)
	**/
	static public function splev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		splint = splint(t,c,k,a,b)
		
		Wrapper for ``splint``.
		
		Parameters
		----------
		t : input rank-1 array('d') with bounds (n)
		c : input rank-1 array('d') with bounds (n)
		k : input int
		a : input float
		b : input float
		
		Returns
		-------
		splint : float
	**/
	static public function splint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zero,m,ier = sproot(t,c,[mest])
		
		Wrapper for ``sproot``.
		
		Parameters
		----------
		t : input rank-1 array('d') with bounds (n)
		c : input rank-1 array('d') with bounds (n)
		
		Other Parameters
		----------------
		mest : input int, optional
		    Default: 3*(n-7)
		
		Returns
		-------
		zero : rank-1 array('d') with bounds (mest)
		m : int
		ier : int
	**/
	static public function sproot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tx,ty,c,fp,ier = surfit_lsq(x,y,z,tx,ty,[w,xb,xe,yb,ye,kx,ky,eps,lwrk2,overwrite_tx,overwrite_ty])
		
		Wrapper for ``surfit_lsq``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (m)
		z : input rank-1 array('d') with bounds (m)
		tx : input rank-1 array('d') with bounds (nx)
		ty : input rank-1 array('d') with bounds (ny)
		
		Other Parameters
		----------------
		w : input rank-1 array('d') with bounds (m), optional
		    Default: 1.0
		xb : input float, optional
		    Default: calc_b(x,m,tx,nx)
		xe : input float, optional
		    Default: calc_e(x,m,tx,nx)
		yb : input float, optional
		    Default: calc_b(y,m,ty,ny)
		ye : input float, optional
		    Default: calc_e(y,m,ty,ny)
		kx : input int, optional
		    Default: 3
		ky : input int, optional
		    Default: 3
		eps : input float, optional
		    Default: 1e-16
		overwrite_tx : input int, optional
		    Default: 1
		overwrite_ty : input int, optional
		    Default: 1
		lwrk2 : input int, optional
		    Default: calc_surfit_lwrk2(m,kx,ky,nxest,nyest)
		
		Returns
		-------
		tx : rank-1 array('d') with bounds (nx)
		ty : rank-1 array('d') with bounds (ny)
		c : rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		fp : float
		ier : int
	**/
	static public function surfit_lsq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nx,tx,ny,ty,c,fp,wrk1,ier = surfit_smth(x,y,z,[w,xb,xe,yb,ye,kx,ky,s,nxest,nyest,eps,lwrk2])
		
		Wrapper for ``surfit_smth``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (m)
		z : input rank-1 array('d') with bounds (m)
		
		Other Parameters
		----------------
		w : input rank-1 array('d') with bounds (m), optional
		    Default: 1.0
		xb : input float, optional
		    Default: dmin(x,m)
		xe : input float, optional
		    Default: dmax(x,m)
		yb : input float, optional
		    Default: dmin(y,m)
		ye : input float, optional
		    Default: dmax(y,m)
		kx : input int, optional
		    Default: 3
		ky : input int, optional
		    Default: 3
		s : input float, optional
		    Default: m
		nxest : input int, optional
		    Default: imax(kx+1+sqrt(m/2),2*(kx+1))
		nyest : input int, optional
		    Default: imax(ky+1+sqrt(m/2),2*(ky+1))
		eps : input float, optional
		    Default: 1e-16
		lwrk2 : input int, optional
		    Default: calc_surfit_lwrk2(m,kx,ky,nxest,nyest)
		
		Returns
		-------
		nx : int
		tx : rank-1 array('d') with bounds (nmax)
		ny : int
		ty : rank-1 array('d') with bounds (nmax)
		c : rank-1 array('d') with bounds ((nxest-kx-1)*(nyest-ky-1))
		fp : float
		wrk1 : rank-1 array('d') with bounds (lwrk1)
		ier : int
	**/
	static public function surfit_smth(args:haxe.extern.Rest<Dynamic>):Dynamic;
}