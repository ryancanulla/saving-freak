package com.ryancanulla.airforandroid.view
{
    import com.ryancanulla.airforandroid.utils.AssetsManager;

    import flash.display.Bitmap;
    import flash.display.Sprite;
    import flash.geom.Matrix;

    public class Swimmer extends Sprite
    {
        private var freak:Bitmap;
        private var _speed:Number;

        [Embed(source="/../assets/swimmer.png")]
        public var drowningMan:Class;

        public function Swimmer() {
            super();
            init();
        }

        public function get speed():Number {
            return _speed;
        }

        private function init():void {
            _speed = Math.random() * 5;
            createSwimmer();
        }

        private function createSwimmer():void {
            freak = new drowningMan();
            freak.x = 0;
            freak.y = 0;
            freak.cacheAsBitmapMatrix = new Matrix;
            freak.cacheAsBitmap = true;
            addChild(freak);
        }
    }
}
