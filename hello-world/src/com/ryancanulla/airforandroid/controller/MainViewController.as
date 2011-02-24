package com.ryancanulla.airforandroid.controller
{
    import com.ryancanulla.airforandroid.utils.DebuggerDataLayer;
    import com.ryancanulla.airforandroid.view.StatusBar;

    import flash.display.Sprite;
    import flash.events.AccelerometerEvent;
    import flash.events.Event;
    import flash.events.TimerEvent;
    import flash.sensors.Accelerometer;
    import flash.utils.Timer;


    public class MainViewController
    {
        private var swimmerController:SwimmerController;
        private var raftController:RaftController;
        private var statusBar:StatusBar;

        private var debugger:DebuggerDataLayer;

        private var timer:Timer;
        private var _view:Sprite;

        private var accelerometer:Accelerometer;

        public function MainViewController(e:Sprite) {
            _view = e;
            init();
        }

        private function init():void {
            swimmerController = new SwimmerController(_view);
            raftController = new RaftController(_view);

            debugger = new DebuggerDataLayer(_view);
            _view.addChild(debugger);

            statusBar = new StatusBar();
            //statusBar.rotation += 90;
            _view.addChild(statusBar);

            timer = new Timer(1000 / 40, 1000 * 10000);
            timer.addEventListener(TimerEvent.TIMER, update);
            timer.start();

            if (Accelerometer.isSupported) {
                accelerometer = new Accelerometer();
                accelerometer.addEventListener(AccelerometerEvent.UPDATE, updateAccelerometer);
            }
        }

        private function update(e:Event):void {

            raftController.updateLayout();
            swimmerController.updateLayout();
            debugger.invalidateProperties();
        }

        private function updateAccelerometer(e:AccelerometerEvent):void {
            raftController.setAcceleration(e.accelerationX, e.accelerationY);
            debugger.setAcceleration(e.accelerationX, e.accelerationY, e.accelerationZ);
        }

        public function start():void {
            timer.start();
        }

        public function stop():void {
            timer.stop();
        }

    }
}
