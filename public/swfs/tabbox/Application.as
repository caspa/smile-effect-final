﻿class Application {	var name:String;	var directory:String;	var src:String;	var data:XMLWrapper;	function Application(name:String) {		this.name = name;		this.directory=this.name?this.name+"/":"";		trace("run application: "+this.name+"...");		this.src = _root.src ? _root.src : this.directory+"data.xml";		trace("loading xml-document: "+this.src+"...");		this.data = new XMLWrapper(this.src);	}}