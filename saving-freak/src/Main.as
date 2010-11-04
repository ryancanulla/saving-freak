package
{
    import com.pblabs.engine.PBE;
    //import com.pblabs.engine.entity.allocateEntity;
    //import com.pblabs.engine.entity.IEntity;
    //import com.pblabs.engine.entity.PropertyReference;
    //import com.pblabs.rendering2D.SimpleShapeRenderer;
    //import com.pblabs.rendering2D.SimpleSpatialComponent;
    //import com.pblabs.rendering2D.ui.SceneView;

    import flash.display.Sprite;
    import flash.geom.Point;

    public class Main extends Sprite
    {
        public function Main() {
            PBE.startup(this);

            createScene();
            createHero();
        }

        private function createScene():void {
            //   var sceneView:SceneView = new SceneView();
            //   sceneView.width = 480;
            //   sceneView.height = 800;

            //PBE.initializeScene(sceneView);
        }

        private function createHero():void {
            //  var hero:IEntity = allocateEntity();

            //  var spatial:SimpleSpatialComponent = new SimpleSpatialComponent();
            //  spatial.position = new Point(0, 0);
            //  spatial.size = new Point(50, 50);
            //  spatial.spatialManager = PBE.spatialManager;

            //  hero.addComponent(spatial, "Spatial");

            //  var render:SimpleShapeRenderer = new SimpleShapeRenderer();
            //  render.fillColor = 0x0000FF0;
            //  render.isCircle = true;
            //  render.lineSize = 2;
            //  render.radius = 25;
            //  render.lineColor = 0x000000;
            //  render.scene = PBE.scene;
            //  render.positionProperty = new PropertyReference("@Spatial.position");
            // render.rotationProperty = new PropertyReference("@Spatial.rotation");

            // hero.addComponent(render, "Render");
            // hero.initialize("Hero");
        }

    }
}
