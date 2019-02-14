import processing.core.PApplet;

public class Main {
    public static void main(String[] args) {
        String[] processingArgs = {"App"};
        App myApp = new App();
        PApplet.runSketch(processingArgs, myApp);
    }
}