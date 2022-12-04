public with sharing class TempCalculator {
  public static Decimal FahreheitToCelsius(Decimal fahreheit) {
    Decimal celsius = (fahreheit - 32) * 5 / 9;
    System.debug('Fahreheit: ' + fahreheit + ' Celsius: ' + celsius);
    return celsius.setScale(2);
  }
}