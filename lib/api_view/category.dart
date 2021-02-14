// import 'package:bazar_panda_partner/category_bloc.dart';
// import 'package:bazar_panda_partner/models/category_model.dart';
// import 'package:bazar_panda_partner/subcategory.dart';
// import 'package:bazar_panda_partner/subcategory_bloc.dart';
// import 'package:bazar_panda_partner/util/constants.dart';
// import 'package:bazar_panda_partner/widget_placeholder.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:rxdart/rxdart.dart';
// import 'attributes_bloc.dart';

// class Category extends StatefulWidget {
//   @override
//   _CategoryState createState() => _CategoryState();
// }

// class _CategoryState extends State<Category> {
//   @override
//   void dispose() {
//     _querySubject.close();
//     super.dispose();
//     CategoryBloc.getInstance().clearData();
//   }

//   final _querySubject = BehaviorSubject<String>.seeded("");
//   bool flag = false;

//   @override
//   void initState() {
//     super.initState();
//     CategoryBloc.getInstance().loadData();
//   }

//   Future<Null> refreshList() async {
//     await Future.delayed(Duration(seconds: 2));
//     setState(() {
//       Category();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           actions: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: IconButton(
//                 icon: Icon(Icons.search),
//                 onPressed: () {
//                   setState(() {
//                     flag = true;
//                   });
//                 },
//               ),
//             ),
//           ],
//           title: flag == true
//               ? Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: Theme(
//                         data: ThemeData(primaryColor: Colors.white),
//                         child: TextField(
//                           decoration: InputDecoration(hintText: "Search"),
//                           style: TextStyle(color: Colors.white),
//                           cursorColor: Colors.white,
//                           onChanged: _querySubject.add,
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               : Text("Category"),
//         ),
//         body: RefreshIndicator(
//           onRefresh: refreshList,
//           child: Stack(
//             fit: StackFit.expand,
//             children: <Widget>[
//               Container(),
//               StreamBuilder<List<CategoryModel>>(
//                   stream: Observable.combineLatest2(
//                       CategoryBloc.getInstance().categories.outStream,
//                       _querySubject.stream,
//                       (List<CategoryModel> a, String filter) =>
//                           filter?.isEmpty ?? true
//                               ? a
//                               : a
//                                   ?.where((e) => e.catName
//                                       .toLowerCase()
//                                       .contains(filter.toLowerCase()))
//                                   ?.toList()),
//                   builder: (context, catsnap) {
//                     if (catsnap.hasError) {
//                       final _error = catsnap.error as CategoryApiError;
//                       if (_error.errorCode == 200) {
//                         return Center(
//                             child: Text(
//                           "No data found",
//                           style: TextStyle(color: Colors.grey),
//                           textAlign: TextAlign.center,
//                         ));
//                       }
//                     }
//                     if (catsnap.data?.length == 0 ?? true) {
//                       return PlaceholderItemCard();
//                     }
//                     if (catsnap.hasError) {
//                       CategoryApiError e = catsnap.error;
//                       if (e.errorCode == -1) {
//                         return Center(
//                             child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Padding(
//                               padding: const EdgeInsets.all(48),
//                               child: Image.asset(
//                                 "assets/images/np.png",
//                                 fit: BoxFit.cover,
//                                 // color: Colors.white,
//                               ),
//                             ),
//                             Text(
//                               'Please check internet connection',
//                               textAlign: TextAlign.center,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .title
//                                   .copyWith(color: Colors.grey),
//                             ),
//                             CupertinoButton(
//                               child: Text("Retry"),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                             ),
//                           ],
//                         ));
//                       } else {
//                         return Container();
//                       }
//                     }
//                     if (catsnap.data?.length == 0 ?? true) {
//                       return Center(
//                           child: Text(
//                         "No Category Found!",
//                         style: Theme.of(context)
//                             .textTheme
//                             .title
//                             .copyWith(color: Colors.grey),
//                         textAlign: TextAlign.center,
//                       ));
//                     }
//                     return ListView.separated(
//                       separatorBuilder: (BuildContext context, int index) =>
//                           Divider(height: 0),
//                       itemCount: catsnap.data?.length ?? 0,
//                       itemBuilder: (context, i) => Container(
//                         child: GestureDetector(
//                           onTap: () {
//                             SubCategoryBloc.getInstance().loadData(
//                                 catsnap.data.elementAt(i).catId.toString());

//                             AttributesBloc.getInstance()
//                                 .catId
//                                 .inStream(catsnap.data.elementAt(i).catId);
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SubCategory(
//                                           title: catsnap.data[i]?.catName ?? "",
//                                         )));
//                           },
//                           child: Row(
//                             children: <Widget>[
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(4),
//                                   child: FadeInImage(
//                                     placeholder: AssetImage(
//                                       "assets/images/placeholder.png",
//                                     ),
//                                     fit: BoxFit.cover,
//                                     height: 80,
//                                     width: 100,
//                                     image: NetworkImage(
//                                       "${Constants.img}${catsnap.data[i].catImg}",
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     catsnap.data[i]?.catName?.toUpperCase() ??
//                                         "",
//                                     style: Theme.of(context).textTheme.subhead,
//                                     maxLines: 2,
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                   padding: const EdgeInsets.all(8),
//                                   child: Icon(
//                                     Icons.chevron_right,
//                                     color: Colors.grey,
//                                   )),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   }),
//             ],
//           ),
//         ));
//   }
// }
