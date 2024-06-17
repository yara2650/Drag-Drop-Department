 class Weighteddegrees5y0m_5y3m{

 static information(int raw)  {
       if(raw>=16&&raw<=17){ return 0; }
       else if(raw==6){ return 1; }
       else if(raw==7|| raw==8){ return 2; }
       else if(raw==9){ return 3; }
       else if(raw==10|| raw==11){ return 4; }
       else if(raw==12|| raw==13){ return 5; }
       else if(raw==14|| raw==15){ return 6; }
       else if(raw==16){ return 7; }
       else if(raw==17){ return 8; }
       else if(raw==18){ return 9; }
       else if(raw==19|| raw==20){ return 10; }
       else if(raw==21){ return 11; }
       else if(raw==22){ return 12; }
       else if(raw==23){ return 13; }
       else if(raw==24){ return 14; }
       else if(raw==25){ return 16; }
       else if(raw==26){ return 17; }
       else if(raw==27){ return 18; }
       else if(raw==28|| raw==29){ return 19; }
       else if(raw==30){ return 20; }
   }
 static understand(int raw) {
        if (raw == 0) {return 3;}
        else if (raw == 1) {return 4;}
        else if (raw == 2) {return 6;}
        else if (raw == 3) {return 8;}
        else if (raw == 4) {return 9;}
        else if (raw == 5) {return 10;}
        else if (raw == 6) { return 12;}
        else if (raw == 7) {return 13;}
        else if (raw == 8) { return 14;}
        else if (raw == 9) {return 16;}
        else if (raw == 10) {return 18;}
        else if (raw >=11&&raw<=28) {return 20;}
    }
  static  calculation(int raw){
      if (raw == 0) { return 5;}
      else if (raw == 1) { return 7;}
      else if (raw == 2) {return 9;}
      else if (raw == 3) {return 10;}
      else if (raw == 4) {return 12;}
      else if (raw == 5) {return 15;}
      else if (raw == 6) {return 18;}
      else if (raw >=7&&raw<=16) {return 20;}
    }
  static  similarity(int raw){
      if (raw == 0) {return 4;}
      else if (raw == 1) {return 6;}
      else if (raw == 2) {return 8;}
      else if (raw == 3) {return 10;}
      else if (raw == 4) {return 11;}
      else if (raw == 5) {return 13;}
      else if (raw == 6) {return 14;}
      else if (raw == 7) {return 16;}
      else if (raw == 8) {return 17;}
      else if (raw == 9) {return 19;}
      else if (raw >=10&&raw<=28) {return 20;}
    }
  static  vocublary(int raw){
      if(raw==0||raw==1){return 2;  }
      else if(raw>=2&&raw<=4){return 3;}
      else if(raw>=5&&raw<=7){return 4;}
      else if(raw==8||raw==9){return 5;}
      else if(raw==10||raw==11){return 6;}
      else if(raw == 12){return 7;}
      else if(raw == 13){return 8;}
      else if(raw == 14){return 9;}
      else if(raw == 15){return 10;}
      else if(raw==16||raw==17){return 11;}
      else if(raw == 18){return 12;}
      else if(raw == 19){return 13;}
      else if(raw == 20){return 14;}
      else if(raw == 21){return 15;}
      else if(raw==22||raw==23){return 16;}
      else if(raw==24||raw==25){return 17;}
      else if(raw == 26){return 18;}
      else if(raw == 27){return 19;}
      else if(raw>=28&&raw<=80){return 20;}
  }
  repeatnumber(int raw){
    if (raw == 0) {return 3;}
    else if (raw == 1) {return 4;}
    else if (raw == 2) {return 5;}
    else if (raw == 3) {return 6;}
    else if (raw == 4) {return 8;}
    else if (raw == 5) {return 10;}
    else if (raw == 6) {return 12;}
    else if (raw == 7) {return 13;}
    else if (raw == 8) {return 14;}
    else if (raw == 9) {return 16;}
    else if (raw == 10) {return 18;}
    else if (raw >=11&&raw<=17) {return 20;}
  }
  picturecomplete(int raw){
    if (raw == 0) {return 3;}
    else if (raw == 1) {return 5;}
    else if (raw == 2) {return 6;}
    else if (raw == 3) {return 7;}
    else if (raw == 4) {return 8;}
    else if (raw == 5) {return 9;}
    else if (raw == 6) {return 10;}
    else if (raw == 7) {return 12;}
    else if (raw == 8) {return 14;}
    else if (raw == 9) {return 15;}
    else if (raw == 10) {return 16;}
    else if (raw == 11) {return 17;}
    else if (raw == 12) {return 18;}
    else if (raw == 13) {return 19;}
    else if (raw >=14&&raw<=20) {return 20;}
  }
  picturearrangement(int raw){
    if (raw == 0) {return 3;}
    else if (raw == 1) {return 5;}
    else if (raw == 2) {return 7;}
    else if (raw == 3) {return 9;}
    else if (raw == 4) {return 11;}
    else if (raw == 5) {return 12;}
    else if (raw == 6||raw==7) {return 13;}
    else if (raw >=8&&raw<=10) {return 14;}
    else if (raw >=11&&raw<=13) {return 15;}
    else if (raw >=14&&raw<=15) {return 16;}
    else if (raw >=16&&raw<=17) {return 17;}
    else if (raw >=18&&raw<=19) {return 18;}
    else if (raw >=20&&raw<=21) {return 19;}
    else if (raw >=22&&raw<=57) {return 20;}
  }
  blockdesign(int raw){
    if (raw == 0) {return 5;}
    else if (raw == 1) {return 7;}
    else if (raw == 2) {return 8;}
    else if (raw == 3) {return 9;}
    else if (raw == 4) {return 10;}
    else if (raw == 5) {return 12;}
    else if (raw == 6) {return 13;}
    else if (raw >=7&&raw<=9) {return 14;}
    else if (raw >=10&&raw<=12) {return 15;}
    else if (raw >=13&&raw<=14) {return 16;}
    else if (raw >=15&&raw<=16) {return 17;}
    else if (raw >=17&&raw<=18) {return 18;}
    else if (raw >=19&&raw<=20) {return 19;}
    else if (raw >=21&&raw<=55) {return 20;}
  }
  maze(int raw){
    if (raw == 0) {return 5;}
    else if (raw == 1) {return 7;}
    else if (raw >=2&&raw<=3) {return 8;}
    else if (raw == 4) {return 9;}
    else if (raw == 5) {return 10;}
    else if (raw >=11&&raw<=12) {return 14;}
    else if (raw >=13&&raw<=14) {return 15;}
    else if (raw == 15) {return 16;}
    else if (raw == 16) {return 17;}
    else if (raw == 17) {return 18;}
    else if (raw == 18) {return 19;}
    else if (raw >=19&&raw<=21) {return 20;}
  }
 }