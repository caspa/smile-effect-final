﻿class Label {	var id:Number;	public static var length=0;	var container:MovieClip;	var panel:MovieClip;	var textformat:TextFormat;	var field:TextField;	var width:Number;	var height:Number;	var alpha:Number;	function Label(container:MovieClip, text, font:String, size:Number, bold:Boolean, color:Number, width:Number, height:Number, x:Number, y:Number, alpha:Number) {		this.set_id();		this.container = container;		this.panel = this.container.createEmptyMovieClip("label_panel_"+this.id, this.container.getNextHighestDepth());		this.width = width != null ? width : Stage.width;		this.height = height != null ? height : 24;		this.alpha = alpha != null ? alpha : 100;		this.panel._alpha = this.alpha;		this.panel._x = x!=null?x:0;		this.panel._y = y!=null?y:0;		this.textformat = new TextFormat();		this.field = this.panel.createTextField("label_"+this.id, this.panel.getNextHighestDepth(), 0, 0, this.width, this.height);		this.text(text);		this.define(true,"normal",false,"left",true,true,true);		this.format(font, size, bold, color);	}	function set_id() {		this.id = Label.length++;	}	function text(text) {		this.field.text = text;		this.field.htmlText = text;	}	function define(embedfonts:Boolean, antialias:String, html:Boolean, autosize, wordwrap:Boolean, multiline:Boolean, condensewhite:Boolean) {		this.field.html = html;		this.field.selectable=false;		this.field.autoSize = autosize;		this.field.wordWrap = wordwrap;		this.field.multiline = multiline;		this.field.condenseWhite = condensewhite;		this.field.embedFonts = embedfonts;		this.field.antiAliasType = antialias;	}	function format(font:String, size:Number, bold:Boolean, color:Number) {		this.textformat.font = font;		this.textformat.size = size;		this.textformat.bold = bold;		this.textformat.color = color;		this.field.setTextFormat(this.textformat);	}}