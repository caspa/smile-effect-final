/*
class: XMLParser
author: Jean-Christophe Littfass
copyright: 2008
description: Liest eine XML-Datei und stellt die Daten als Objekt zur Verfügung
*/
import mx.utils.Delegate;
class XMLParser {
	var xml:XML;
	var url:String;
	var data:Object;
	var loaded:Boolean;
	var tag:String;
	function XMLParser(url:String) {
		this.xml = new XML();
		this.xml.contentType = "text/xml";
		this.xml.ignoreWhite = true;
		this.xml.xmlDecl = '<?xml version="1.0" encoding="UTF-8"?>';
		this.xml.onLoad = Delegate.create(this, this.onLoad);
		this.url = url;
		this.data = new Object();
		this.loaded = false;
		this.tag = "";
	}
	function parse(data:Object, node:XMLNode):Object {
		data[node.nodeName] = new Object();
		data[node.nodeName].text = node.firstChild.nodeValue;
		data[node.nodeName].tag = node.nodeName;
		for (var name in node.attributes) {
			data[node.nodeName][name] = node.attributes[name];
		}
		this.read(data[node.nodeName], node);
		return data[node.nodeName];
	}
	function read(data:Object, node:XMLNode) {
		if (node.hasChildNodes) {
			var i = 0;
			for (var child = node.firstChild; child != null; child=child.nextSibling) {
				if (!data[child.nodeName]) {
					data[child.nodeName] = new Array();
				}
				i=data[child.nodeName].length;
				if (child.nodeName) {
					data[child.nodeName][i] = new Object();
					data[child.nodeName][i] = this.parse(data[child.nodeName][i], child);
				}
			}
		}
	}
	function onLoad(success) {
		if (success) {
			this.tag = this.xml.firstChild.nodeName;
			this.parse(this.data, this.xml.firstChild);
			if (this.xml.loaded && (this.xml.status == 0)) {
				this.loaded = true;
			}
		} else {
			trace("Error loading XML");
		}
	}
	function load(url:String) {
		if (!url) {
			url = this.url;
		}
		if (url) {
			this.xml.load(url);
		} else {
			trace("No file to load");
		}
	}
}
