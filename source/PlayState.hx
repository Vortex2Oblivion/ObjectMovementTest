package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.tweens.FlxTween;

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

		FlxTween.tween(sprite, {
			x: FlxG.width - sprite.width
			y: FlxG.height - sprite.height
			angle: 360.0
		}, 5, {type: FlxTween.PINGPONG});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
