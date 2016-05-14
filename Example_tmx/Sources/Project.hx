package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;
import khatmx.TiledMap;
import khatmx.TiledObjectGroup;

class Project {
	
	// map reference
	public var map:TiledMap;
	public var collider:TiledObjectGroup;
	
	public function new() {
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
		Assets.loadEverything(create);
	}
	
	function create():Void{
		// load the map
		map = TiledMap.fromAssets(Assets.blobs.prehistoric_tmx.toString());
		
		// get the colliders
		collider = map.getObjectGroupByName("colliders");  // the layer name in TILED
		for(floor in collider){
			if(floor == null ) return;
			// do what you need here for the colliders
			// you'll get Position, size etc.
			trace(floor.x, floor.y, floor.width, floor.height);
		}
	}

	function update(): Void {
		
	}

	function render(framebuffer: Framebuffer): Void {
		if(map == null) return;  // safe check if not loaded
		
		var g = framebuffer.g2;
		g.begin();
		// render the map
		map.render(framebuffer);

		g.end();		
	}
}
