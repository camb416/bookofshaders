import processing.core.PApplet;
import processing.opengl.*;

public class App extends PApplet {

    float noiseResolution;
    float timeResolution;
    int w,h;

    public void settings(){
        size(720,480, P3D);
    }
    public void setup(){
        println("setup!");
        w = 720;
        h = 480;

        noiseResolution = 0.002f;
        timeResolution = 0.1f;

        noiseDetail(3,0.5f);

    }
    public void draw(){
        // drawing 480p of noise with the CPU
        for(int j=0;j<h;j++){
            for(int i=0;i<w;i++){
                stroke(noise((float)i*noiseResolution,(float)j*noiseResolution,frameCount*timeResolution)*255);
                point(i,j);

            }
        }
    }
}
