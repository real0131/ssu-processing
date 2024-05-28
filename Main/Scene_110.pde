public class Scene_110 extends BaseScene {
  @Override
  public int getPreviousScene() { return 110; }

  @Override
  public int getNextScene() { return 111; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("110001"));

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.scream);
    tiger.setPosition(width/2, height / 2);
    tiger.setScale(2.3, 2.3);
    drawManager.addDrawable(tiger);

    var mom = objectFactory.create(CharacterType.mom, CharacterPoseType.back);
    mom.setPosition(width / 2, 650);
    mom.setScale(0.35, 0.35);
    drawManager.addDrawable(mom);
  }
 
  public void draw() {
    pushStyle();
    
    background(#606060);
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
