package;

import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var sprite:FlxSprite;

	override public function create()
	{
		super.create();
		sprite = new FlxSprite();
		sprite.loadGraphic(AssetPaths.wp__png);
		sprite.x = 100;
		sprite.y = -50;
		add(sprite);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
