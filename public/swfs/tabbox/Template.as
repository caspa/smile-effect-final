class Template {
	public static var length:Number = 0;
	var id:Number;
	var gui:Gui;
	var container:MovieClip;
	function Template(gui:Gui) {
		this.set_id();
		this.gui = gui ? gui : null;
	}
	function set_id():Void {
		this.id = Template.length++;
	}
	function connect(gui:Gui) {
		this.gui = gui;
		this.load(this.gui.data);
	}
	function load(data:Object):Void {
		trace(this.id);
	}
}
