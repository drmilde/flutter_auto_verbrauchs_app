class VerbrauchsRechner {
  double verbrauch; // auf 100 km
  double kilometer; // jahreskilometer

  VerbrauchsRechner();

  void calculate() {
    double result = kilometer / 100 * verbrauch;
    print (result);
  }
}
