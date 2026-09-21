abstract class StringUtils {
  static const String space = " ";
  static const String longDash = '—';
  static const String comma = ",";
  static const String https = "https://";
  static const String greaterThan = ">";
  static const String lessThan = "<";

  static String wrapInSpaces(String text) {
    return space + text + space;
  }

  static String addCommaAtEnd(String text) {
    return text + comma + space;
  }

  static String removeHttpsFromLink(String link) {
    return link.replaceAll(https, "");
  }
}