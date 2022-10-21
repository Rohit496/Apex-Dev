public with sharing class TempratureConvertor {
  public static Decimal FahrenheitToCelsius(Decimal fahrenheit) {
    Decimal celsius = (fahrenheit - 32) * 5 / 9;
    System.debug('celsius = ' + celsius);
    System.debug('fahrenheit = ' + fahrenheit);
    System.debug('Temp in celcius = ' + celsius.setScale(2));
    return celsius.setScale(2);
  }
}
