import 'package:intl/intl.dart' show DateFormat, NumberFormat;

class Tformatters {
  static String fomatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String fomatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_Us', symbol: '\$').format(amount);
  }

  static String fomatPhoneNumber(String phoneNumber) {
    //Phone number has 7 digits : 76 888 888
    return '${phoneNumber.substring(0, 2)} ${phoneNumber.substring(2, 8)}';
  }

  static String internationalFomatPhoneNumber(String phoneNumber) {
    //Remove all non digit in the string

    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    //Add the remain digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;

    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write('');
      }
      i = end;
    }

    return '${phoneNumber.substring(0, 2)} ${phoneNumber.substring(2, 8)}';
  }
}
