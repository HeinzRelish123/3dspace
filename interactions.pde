void keyPressed() {
  if (key=='w' || key== 'W') w = true;
  if (key=='s' || key=='S') s = true;
  if (key =='a' || key=='A') a = true;
  if (key=='d' || key =='D') d = true;
  if (key == ' ') space = true;
}

void keyReleased() {
  if (key=='w' || key== 'W') w = false;
  if (key=='s' || key=='S') s = false;
  if (key =='a' || key=='A') a = false;
  if (key=='d' || key =='D') d = false;
  if (key == ' ') space = false;
}

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}
