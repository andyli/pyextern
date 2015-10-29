/* This file is generated, do not edit! */
package scipy.special;
@:pythonImport("scipy.special.specfun") extern class Specfun {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		xa,xb,xc,xd = airyzo(nt,[kf])
		
		Wrapper for ``airyzo``.
		
		Parameters
		----------
		nt : input int
		
		Other Parameters
		----------------
		kf : input int, optional
		    Default: 1
		
		Returns
		-------
		xa : rank-1 array('d') with bounds (nt)
		xb : rank-1 array('d') with bounds (nt)
		xc : rank-1 array('d') with bounds (nt)
		xd : rank-1 array('d') with bounds (nt)
	**/
	static public function airyzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s1f,s1d = aswfb(m,n,c,x,kd,cv)
		
		Wrapper for ``aswfb``.
		
		Parameters
		----------
		m : input int
		n : input int
		c : input float
		x : input float
		kd : input int
		cv : input float
		
		Returns
		-------
		s1f : float
		s1d : float
	**/
	static public function aswfb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bn = bernoa(n)
		
		Wrapper for ``bernoa``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		bn : rank-1 array('d') with bounds (n + 1)
	**/
	static public function bernoa(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bn = bernob(n)
		
		Wrapper for ``bernob``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		bn : rank-1 array('d') with bounds (n + 1)
	**/
	static public function bernob(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zo = cerzo(nt)
		
		Wrapper for ``cerzo``.
		
		Parameters
		----------
		nt : input int
		
		Returns
		-------
		zo : rank-1 array('D') with bounds (nt)
	**/
	static public function cerzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hg = chgm(a,b,x)
		
		Wrapper for ``chgm``.
		
		Parameters
		----------
		a : input float
		b : input float
		x : input float
		
		Returns
		-------
		hg : float
	**/
	static public function chgm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpm,cpd = clpmn(m,n,x,y,ntype)
		
		Wrapper for ``clpmn``.
		
		Parameters
		----------
		m : input int
		n : input int
		x : input float
		y : input float
		ntype : input int
		
		Returns
		-------
		cpm : rank-2 array('D') with bounds (m + 1,n + 1)
		cpd : rank-2 array('D') with bounds (m + 1,n + 1)
	**/
	static public function clpmn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpn,cpd = clpn(n,z)
		
		Wrapper for ``clpn``.
		
		Parameters
		----------
		n : input int
		z : input complex
		
		Returns
		-------
		cpn : rank-1 array('D') with bounds (n + 1)
		cpd : rank-1 array('D') with bounds (n + 1)
	**/
	static public function clpn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cqm,cqd = clqmn(m,n,z)
		
		Wrapper for ``clqmn``.
		
		Parameters
		----------
		m : input int
		n : input int
		z : input complex
		
		Returns
		-------
		cqm : rank-2 array('D') with bounds (mm + 1,n + 1)
		cqd : rank-2 array('D') with bounds (mm + 1,n + 1)
	**/
	static public function clqmn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cqn,cqd = clqn(n,z)
		
		Wrapper for ``clqn``.
		
		Parameters
		----------
		n : input int
		z : input complex
		
		Returns
		-------
		cqn : rank-1 array('D') with bounds (n + 1)
		cqd : rank-1 array('D') with bounds (n + 1)
	**/
	static public function clqn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpb,cpd = cpbdn(n,z)
		
		Wrapper for ``cpbdn``.
		
		Parameters
		----------
		n : input int
		z : input complex
		
		Returns
		-------
		cpb : rank-1 array('D') with bounds (abs(n)+2)
		cpd : rank-1 array('D') with bounds (abs(n)+2)
	**/
	static public function cpbdn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nm,csi,cdi,csk,cdk = csphik(n,z)
		
		Wrapper for ``csphik``.
		
		Parameters
		----------
		n : input int
		z : input complex
		
		Returns
		-------
		nm : int
		csi : rank-1 array('D') with bounds (n + 1)
		cdi : rank-1 array('D') with bounds (n + 1)
		csk : rank-1 array('D') with bounds (n + 1)
		cdk : rank-1 array('D') with bounds (n + 1)
	**/
	static public function csphik(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nm,csj,cdj,csy,cdy = csphjy(n,z)
		
		Wrapper for ``csphjy``.
		
		Parameters
		----------
		n : input int
		z : input complex
		
		Returns
		-------
		nm : int
		csj : rank-1 array('D') with bounds (n + 1)
		cdj : rank-1 array('D') with bounds (n + 1)
		csy : rank-1 array('D') with bounds (n + 1)
		cdy : rank-1 array('D') with bounds (n + 1)
	**/
	static public function csphjy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cv = cva1(kd,m,q)
		
		Wrapper for ``cva1``.
		
		Parameters
		----------
		kd : input int
		m : input int
		q : input float
		
		Returns
		-------
		cv : rank-1 array('d') with bounds (m)
	**/
	static public function cva1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zo,zv = cyzo(nt,kf,kc)
		
		Wrapper for ``cyzo``.
		
		Parameters
		----------
		nt : input int
		kf : input int
		kc : input int
		
		Returns
		-------
		zo : rank-1 array('D') with bounds (nt)
		zv : rank-1 array('D') with bounds (nt)
	**/
	static public function cyzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		en = eulera(n)
		
		Wrapper for ``eulera``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		en : rank-1 array('d') with bounds (n + 1)
	**/
	static public function eulera(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		en = eulerb(n)
		
		Wrapper for ``eulerb``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		en : rank-1 array('d') with bounds (n + 1)
	**/
	static public function eulerb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fc = fcoef(kd,m,q,a)
		
		Wrapper for ``fcoef``.
		
		Parameters
		----------
		kd : input int
		m : input int
		q : input float
		a : input float
		
		Returns
		-------
		fc : rank-1 array('d') with bounds (251)
	**/
	static public function fcoef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zo = fcszo(kf,nt)
		
		Wrapper for ``fcszo``.
		
		Parameters
		----------
		kf : input int
		nt : input int
		
		Returns
		-------
		zo : rank-1 array('D') with bounds (nt)
	**/
	static public function fcszo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,w = herzo(n)
		
		Wrapper for ``herzo``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		w : rank-1 array('d') with bounds (n)
	**/
	static public function herzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n,m,pcode,zo = jdzo(nt)
		
		Wrapper for ``jdzo``.
		
		Parameters
		----------
		nt : input int
		
		Returns
		-------
		n : rank-1 array('i') with bounds (1400)
		m : rank-1 array('i') with bounds (1400)
		pcode : rank-1 array('i') with bounds (1400)
		zo : rank-1 array('d') with bounds (1401)
	**/
	static public function jdzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rj0,rj1,ry0,ry1 = jyzo(n,nt)
		
		Wrapper for ``jyzo``.
		
		Parameters
		----------
		n : input int
		nt : input int
		
		Returns
		-------
		rj0 : rank-1 array('d') with bounds (nt)
		rj1 : rank-1 array('d') with bounds (nt)
		ry0 : rank-1 array('d') with bounds (nt)
		ry1 : rank-1 array('d') with bounds (nt)
	**/
	static public function jyzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zo = klvnzo(nt,kd)
		
		Wrapper for ``klvnzo``.
		
		Parameters
		----------
		nt : input int
		kd : input int
		
		Returns
		-------
		zo : rank-1 array('d') with bounds (nt)
	**/
	static public function klvnzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,w = lagzo(n)
		
		Wrapper for ``lagzo``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		w : rank-1 array('d') with bounds (n)
	**/
	static public function lagzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nm,bl,dl = lamn(n,x)
		
		Wrapper for ``lamn``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		nm : int
		bl : rank-1 array('d') with bounds (n + 1)
		dl : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lamn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vm,vl,dl = lamv(v,x)
		
		Wrapper for ``lamv``.
		
		Parameters
		----------
		v : input float
		x : input float
		
		Returns
		-------
		vm : float
		vl : rank-1 array('d') with bounds ((int)v+1)
		dl : rank-1 array('d') with bounds ((int)v+1)
	**/
	static public function lamv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,w = legzo(n)
		
		Wrapper for ``legzo``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		w : rank-1 array('d') with bounds (n)
	**/
	static public function legzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pm,pd = lpmn(m,n,x)
		
		Wrapper for ``lpmn``.
		
		Parameters
		----------
		m : input int
		n : input int
		x : input float
		
		Returns
		-------
		pm : rank-2 array('d') with bounds (m + 1,n + 1)
		pd : rank-2 array('d') with bounds (m + 1,n + 1)
	**/
	static public function lpmn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pm,pd = lpmns(m,n,x)
		
		Wrapper for ``lpmns``.
		
		Parameters
		----------
		m : input int
		n : input int
		x : input float
		
		Returns
		-------
		pm : rank-1 array('d') with bounds (n + 1)
		pd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lpmns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pn,pd = lpn(n,x)
		
		Wrapper for ``lpn``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		pn : rank-1 array('d') with bounds (n + 1)
		pd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lpn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pn,pd,pl = lpni(n,x)
		
		Wrapper for ``lpni``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		pn : rank-1 array('d') with bounds (n + 1)
		pd : rank-1 array('d') with bounds (n + 1)
		pl : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lpni(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qm,qd = lqmn(m,n,x)
		
		Wrapper for ``lqmn``.
		
		Parameters
		----------
		m : input int
		n : input int
		x : input float
		
		Returns
		-------
		qm : rank-2 array('d') with bounds (mm + 1,n + 1)
		qd : rank-2 array('d') with bounds (mm + 1,n + 1)
	**/
	static public function lqmn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qm,qd = lqmns(m,n,x)
		
		Wrapper for ``lqmns``.
		
		Parameters
		----------
		m : input int
		n : input int
		x : input float
		
		Returns
		-------
		qm : rank-1 array('d') with bounds (n + 1)
		qd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lqmns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qn,qd = lqna(n,x)
		
		Wrapper for ``lqna``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		qn : rank-1 array('d') with bounds (n + 1)
		qd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lqna(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qn,qd = lqnb(n,x)
		
		Wrapper for ``lqnb``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		qn : rank-1 array('d') with bounds (n + 1)
		qd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lqnb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pl,dpl = othpl(kf,n,x)
		
		Wrapper for ``othpl``.
		
		Parameters
		----------
		kf : input int
		n : input int
		x : input float
		
		Returns
		-------
		pl : rank-1 array('d') with bounds (n + 1)
		dpl : rank-1 array('d') with bounds (n + 1)
	**/
	static public function othpl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dv,dp,pdf,pdd = pbdv(v,x)
		
		Wrapper for ``pbdv``.
		
		Parameters
		----------
		v : input float
		x : input float
		
		Returns
		-------
		dv : rank-1 array('d') with bounds (abs((int)v)+2)
		dp : rank-1 array('d') with bounds (abs((int)v)+2)
		pdf : float
		pdd : float
	**/
	static public function pbdv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vv,vp,pvf,pvd = pbvv(v,x)
		
		Wrapper for ``pbvv``.
		
		Parameters
		----------
		v : input float
		x : input float
		
		Returns
		-------
		vv : rank-1 array('d') with bounds (abs((int)v)+2)
		vp : rank-1 array('d') with bounds (abs((int)v)+2)
		pvf : float
		pvd : float
	**/
	static public function pbvv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nm,rj,dj = rctj(n,x)
		
		Wrapper for ``rctj``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		nm : int
		rj : rank-1 array('d') with bounds (n + 1)
		dj : rank-1 array('d') with bounds (n + 1)
	**/
	static public function rctj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nm,ry,dy = rcty(n,x)
		
		Wrapper for ``rcty``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		nm : int
		ry : rank-1 array('d') with bounds (n + 1)
		dy : rank-1 array('d') with bounds (n + 1)
	**/
	static public function rcty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cv,eg = segv(m,n,c,kd)
		
		Wrapper for ``segv``.
		
		Parameters
		----------
		m : input int
		n : input int
		c : input float
		kd : input int
		
		Returns
		-------
		cv : float
		eg : rank-1 array('d') with bounds (n-m+2)
	**/
	static public function segv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nm,si,di = sphi(n,x)
		
		Wrapper for ``sphi``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		nm : int
		si : rank-1 array('d') with bounds (n + 1)
		di : rank-1 array('d') with bounds (n + 1)
	**/
	static public function sphi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nm,sj,dj = sphj(n,x)
		
		Wrapper for ``sphj``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		nm : int
		sj : rank-1 array('d') with bounds (n + 1)
		dj : rank-1 array('d') with bounds (n + 1)
	**/
	static public function sphj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nm,sk,dk = sphk(n,x)
		
		Wrapper for ``sphk``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		nm : int
		sk : rank-1 array('d') with bounds (n + 1)
		dk : rank-1 array('d') with bounds (n + 1)
	**/
	static public function sphk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nm,sy,dy = sphy(n,x)
		
		Wrapper for ``sphy``.
		
		Parameters
		----------
		n : input int
		x : input float
		
		Returns
		-------
		nm : int
		sy : rank-1 array('d') with bounds (n + 1)
		dy : rank-1 array('d') with bounds (n + 1)
	**/
	static public function sphy(args:haxe.extern.Rest<Dynamic>):Dynamic;
}