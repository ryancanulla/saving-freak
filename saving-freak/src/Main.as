package
{
	import com.ryancanulla.airforandroid.model.MainModel;
	import com.ryancanulla.airforandroid.view.MainViewContainer;

	import flash.desktop.NativeApplication;
	import flash.desktop.SystemIdleMode;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;

	[SWF(backgroundColor="#0072BB", frameRate="30")]
	public class Main extends Sprite
	{
		private var model:MainModel = MainModel.getInstance();
		private var mainView:MainViewContainer;

		public function Main()
		{
			super();

			NativeApplication.nativeApplication.systemIdleMode = SystemIdleMode.KEEP_AWAKE;

			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			model.referenceToStage = this.stage;

			mainView = new MainViewContainer();
			addChild(mainView);
		}
	}
}