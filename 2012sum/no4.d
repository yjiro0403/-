import std.stdio, std.array, std.algorithm, std.conv;
import std.random;

const int RIGHT = 12;
const int LEFT  = 13;

int playerx = 2;

void main()
{
    int hyotekinum = 0;
    int hyotekix,hyotekiy;
    int velocity = RIGHT;
    int score;
    
    //int[] beamx, beamy;
    auto beamx = appender!(int[]), beamy = appender!(int[]);

    auto rnd = Random(unpredictableSeed);
    
    while(1){
        char[9][15] stage = ["|-------|",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|       |",
                     "|.......|",
                     ];

        string input = readln();
        char key = input[0];
        switch(key) {
        case 'j':
            if (playerx > 1)
                playerx--;
            break;
        case 'l':
            if (playerx < 7)
                playerx++;
            break;
        case 'i':
            beamx.put(playerx);
            beamy.put(14);
            break;
        default:
            break;
        }
        stage[14][playerx] = 'X';

        if(hyotekinum == 0) {
            int x = uniform(1, 8,rnd);
            stage[0][x] = 'V';
            hyotekix = x, hyotekiy = 0;
            hyotekinum++;
        } else {

            if (hyotekiy < 14) {
                if(velocity == RIGHT){
                    if (hyotekix<7){
                        hyotekix++;
                    }else{
                        hyotekix--;
                        velocity = LEFT;
                    }
                } else {
                    if (hyotekix > 1){
                        hyotekix--;
                    }else{
                        hyotekix++;
                        velocity = RIGHT;
                    }
                }
                
                hyotekiy++;
            }else{
                hyotekix = hyotekiy = 0;
                hyotekinum--;
            }

            stage[hyotekiy][hyotekix] = 'V';
        }

        //beam
        if(beamx.data.length != 0){
            foreach(int i; 0..beamx.data.length){
                stderr.writeln(i);
                if (beamy.data[i] > 0){
                    beamy.data[i] -= 1;
                    stage[beamy.data[i]][beamx.data[i]] = '^';

                    if((beamx.data[i] == hyotekix)&&(beamy.data[i] == hyotekiy)){
                        hyotekix = hyotekiy = 0;
                        hyotekinum--;
                        score++;
                    }
                        
                    
                }else{
                    beamx.data.remove(i);
                    beamy.data.remove(i);
                }
                    
            }
        }
        
        
        
        foreach(line; stage)
            stderr.writeln(line);
        stderr.writefln("score = %d\n",score);
    }
}
