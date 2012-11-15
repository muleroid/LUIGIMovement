package
{
	import org.flixel.*;
	
	public class PlayState extends FlxState {
		public var _player:Player;
		
		override public function create():void {
			// makes the background white
			FlxG.bgColor = 0xffffffff;
			
			// this sets the world bounds to the size of the screen
			FlxG.worldBounds = new FlxRect(0, 0, FlxG.width, FlxG.height);
			
			// creates the player and adds it to the screen
			_player = new Player(FlxG.worldBounds.width / 2, FlxG.worldBounds.height / 2);
			add(_player);
		}
		
		override public function update():void {
			super.update();
		}
	}
}