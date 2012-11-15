package
{
	import org.flixel.*;
	
	public class Player extends FlxSprite {
		// primary properties
		private var _speed:uint = 128
		
		// each returns true of any of its corresponding direction keys is pressed
		private function get moveUp():Boolean { return FlxG.keys.UP || FlxG.keys.W; }
		private function get moveDown():Boolean { return FlxG.keys.DOWN || FlxG.keys.S; }
		private function get moveLeft():Boolean { return FlxG.keys.LEFT || FlxG.keys.A; }
		private function get moveRight():Boolean { return FlxG.keys.RIGHT || FlxG.keys.D; }
		
		// when the speed is updated, adjusts drag and maxVelocity accordingly
		public function set speed(speed:uint):void {
			_speed = speed;
			drag.x = drag.y = speed * 8;
			maxVelocity.x = maxVelocity.y = speed;
		}
		
		// constructor
		public function Player(X:Number, Y:Number) {
			// sets speed and size
			speed = 128;
			width = height = 10;
			
			// sets position
			x = X;
			y = Y;
			
			// creates a little square
			makeGraphic(width, height, 0xffff0000);
		}
		
		// update
		override public function update():void {
			// this is required so that you don't keep accelerating when you stop pressing things
			acceleration.x = acceleration.y = 0;
			
			// check for movement input
			movementInput();
			
			super.update();
		}
		
		// checks for movement input and then moves the player
		private function movementInput():void {
			if(moveUp)
				acceleration.y -= drag.y;
			if(moveDown)
				acceleration.y += drag.y;
			if(moveLeft)
				acceleration.x -= drag.x;
			if(moveRight)
				acceleration.x += drag.x;
		}
	}
}