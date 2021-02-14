// import 'dart:convert';
// import 'package:http/http.dart' as http;

// import 'category_model.dart';

// class CategoryBloc {
//   CategoryBloc._();
//   static CategoryBloc _instance;
//   static CategoryBloc getInstance() {
//     if (_instance == null) _instance = CategoryBloc._();
//     return _instance;
//   }

//   final categories = StreamedList<CategoryModel>();
  
//     clearData() {
//       categories.inStream([]);
//     }
  
//     loadData() async {
//       var response;
  
//       try {
//         response = await http.post("http://easy.itestbox.in/api/requestHandler.php", body: {
//           "GET_FEATURE": " ",
//           "api_token": "XYZ",
//         });
//       } on Exception catch (_) {
//         categories.stream.sink.addError(
//             CategoryApiError(message: "An error occured", errorCode: -1));
//         return;
//       }
//       if (response.statusCode == 200) {
//         final map = json.decode(response.body);
//         if (!map["error"]) {
//           categories.inStream((map["result"] as List)
//               .map((e) => CategoryModel.fromJson(e))
//               .toList());
//         } else {
//         categories.stream.sink.addError(CategoryApiError(
//             message: "An error occured", errorCode: response.statusCode));
//         }
//       } else {
//         categories.stream.sink.addError(CategoryApiError(
//             message: "An error occured", errorCode: response.statusCode));
//       }
//     }
//   }
  
//   class StreamedList {
// }

// class CategoryApiError extends Error {
//   final String message;
//   final int errorCode;

//   CategoryApiError({this.message, this.errorCode});

//   @override
//   String toString() => "$errorCode : $message";
// }
