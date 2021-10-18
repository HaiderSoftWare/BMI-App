class ConstVal {
  int Hightcont;
  int WightCont;
  int Agecont;

  ConstVal({this.Agecont = 22, this.Hightcont = 170, this.WightCont = 70});

  void incrmentage() {
    Agecont++;
  }

  void incrmentwight() {
    WightCont++;
  }

  void decrmentawight() {
    WightCont--;
  }

  void decrmentage() {
    Agecont--;
  }
}
