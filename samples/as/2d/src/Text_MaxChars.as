package
{
	import laya.display.Input;
	import laya.display.Stage;
	import laya.utils.Browser;
	import laya.webgl.WebGL;
	
	public class Text_MaxChars
	{
		
		public function Text_MaxChars()
		{
			// 不支持WebGL时自动切换至Canvas
			Laya.init(Browser.clientWidth, Browser.clientHeight, WebGL);

			Laya.stage.alignV = Stage.ALIGN_MIDDLE;
			Laya.stage.alignH = Stage.ALIGN_CENTER;

			Laya.stage.scaleMode = Stage.SCALE_SHOWALL;
			Laya.stage.bgColor = "#232628";

			createInput();
		}

		private function createInput():void
		{
			var inputText:Input = new Input();
			
			inputText.size(350, 100);
			inputText.x = Laya.stage.width - inputText.width >> 1;
			inputText.y = Laya.stage.height - inputText.height >> 1;
			
			// 设置字体样式
			inputText.bold = true;
			inputText.bgColor = "#666666";
			inputText.color = "#ffffff";
			inputText.fontSize = 20;
			
			inputText.maxChars = 5;
			
			Laya.stage.addChild(inputText);
		}
	}
}