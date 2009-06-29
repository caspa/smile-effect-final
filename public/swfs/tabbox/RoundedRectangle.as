﻿class RoundedRectangle {	public static var length:Number = 0;	var id:Number;	var container:MovieClip;	var shape:MovieClip;	var w:Number;	var h:Number;	var rad:Number;	var x:Number;	var y:Number;	var stroke:Object;	var fill:Object;	function RoundedRectangle(container:MovieClip, w:Number, h:Number, rad:Number, x:Number, y:Number, stroke:Object, fill:Object) {		this.set_id();		this.container = container;		this.w = w;		this.h = h;		this.rad = rad;		this.x = x;		this.y = y;		this.stroke = stroke;		this.fill = fill;		this.shape = this.container.createEmptyMovieClip("rectangle_"+this.id, this.container.getNextHighestDepth());		this.paint();	}	function set_id():Void {		this.id = RoundedRectangle.length++;	}	function paint() {		this.shape.lineStyle(this.stroke.width, this.stroke.color, this.stroke.alpha);		this.shape.beginFill(this.fill.color, this.fill.alpha);		this.shape.moveTo(0+this.rad, 0);		this.shape.lineTo(this.w-this.rad, 0);		this.shape.curveTo(this.w, 0, this.w, this.rad);		this.shape.lineTo(this.w, this.h-this.rad);		this.shape.curveTo(this.w, this.h, this.w-this.rad, this.h);		this.shape.lineTo(0+this.rad, this.h);		this.shape.curveTo(0, this.h, 0, this.h-this.rad);		this.shape.lineTo(0, 0+this.rad);		this.shape.curveTo(0, 0, 0+this.rad, 0);		this.shape.endFill();		this.shape._x = x;		this.shape._y = y;	}}