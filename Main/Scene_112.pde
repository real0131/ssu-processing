void Scene_112_background_setup(DrawManager drawManager) {
  var bg = objectFactory.create("res/images/object/tiger_in_the_dark_bg_7.png");
  bg.setPosition(width / 2, height / 2);
  bg.setScale(0.17, 0.17);
  drawManager.addDrawable(bg);
}

public class Scene_112 extends BaseScene {
  @Override
  public int getPreviousScene() { return 112; }

  @Override
  public int getNextScene() { return 113; }
  public void setup() {
    Scene_112_background_setup(drawManager);

    var cloth = objectFactory.create("res/images/object/cloth_blood.png");
    cloth.setPosition(width / 2 - 100, height / 2);
    cloth.setScale(-1, 1);
    drawManager.addDrawable(cloth);
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
