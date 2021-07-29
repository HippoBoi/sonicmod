package;
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
//I TOOK THIS FROM MATT 3.0 MOD but it seems this was used on the sky mod
/**
 * ...
 * @author bbpanzu
 */
class EndingState extends FlxState
{

	var _goodEnding:Bool = false;
	
	public function new(goodEnding:Bool = true) 
	{
		super();
		_goodEnding = goodEnding;
		
	}
	
	override public function create():Void 
	{
		trace(PlayState.SONG.song.toLowerCase());
		super.create();	
		var end:FlxSprite = new FlxSprite(0, 0);
		
			FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
			if (PlayState.SONG.song.toLowerCase() == 'keep-it-up')
			    {
					FlxG.sound.playMusic(Paths.music('freakyMenu'), 1);
			        end.loadGraphic(Paths.image("ending3"));
			        add(end);
			    }
			
			if (PlayState.SONG.song.toLowerCase() == 'doll')
			    {
					end.loadGraphic(Paths.image("endingtails"));
			        add(end);
				}
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.ENTER){
			endIt();
		}
		
	}
	
	
	public function endIt(e:FlxTimer=null){
		trace("ENDING");
		FlxG.switchState(new StoryMenuState());
	}
	
}