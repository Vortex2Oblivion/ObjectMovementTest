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
		// Pixel Perfect Rendering so the sprite doesn't look wonky.
		sprite.pixelPerfectRender = true;
		sprite.x = 100;
		sprite.y = -50;
		add(sprite);

		// Makes the sprite move around
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
