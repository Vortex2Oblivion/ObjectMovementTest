package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.tweens.FlxTween;
import js.html.svg.Angle;

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
			x: FlxG.width - sprite.width,
			y: FlxG.height - sprite.height,
			angle: 360
		}, 5, {type: FlxTweenType.PINGPONG});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
