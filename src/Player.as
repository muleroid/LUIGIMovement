package
{
	import org.flixel.*;
	
	public class Player extends FlxSprite {
		private function get moveUp():Boolean {
			return FlxG.keys.UP || FlxG.keys.W;
		}
		
		public function Player() {
			var speed:uint = 128;
			drag.x = drag.y = speed * 8;
			maxVelocity.x = maxVelocity.y = speed;
		}
		
		override public function update():void {
			super.update();
			
			movementInput();
		}
		
		private function movementInput():void {
			if(moveUp)
				acceleration.y -= drag.y;
		}
	}
}