[Exposed=(Window,Worker,Worklet)]
namespace console { // but see namespace object requirements below
  // Logging
  void assert(optional boolean condition = false, any... data);
  void clear();
  void debug(any... data);
  void error(any... data);
  void info(any... data);
  void log(any... data);
  void table(any tabularData, optional sequence<DOMString> properties);
  void trace(any... data);
  void warn(any... data);
  void dir(any item, optional object? options);
  void dirxml(any... data);

  // Counting
  void count(optional DOMString label = "default");
  void countReset(optional DOMString label = "default");

  // Grouping
  void group(any... data);
  void groupCollapsed(any... data);
  void groupEnd();

  // Timing
  void time(optional DOMString label = "default");
  void timeLog(optional DOMString label = "default", any... data);
  void timeEnd(optional DOMString label = "default");
};
