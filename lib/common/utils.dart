import 'package:intl/intl.dart';

class Utils {
  static String parseDataFormat(String? dateTime) {
    if (dateTime == null) print(dateTime);
    var inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ss');
    var inputDate = inputFormat.parse('$dateTime');

    var outputFormat = DateFormat('dd-MMMM-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }
}
