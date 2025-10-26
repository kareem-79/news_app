import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/api/api_service.dart';
import 'package:news/api/models/sources.dart';
import 'package:news/model/category_model.dart';
class SourcesView extends StatelessWidget {
  const SourcesView({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.sp),
      child: FutureBuilder(
        future: ApiService.getSources(category),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          List<Source>sources=snapshot.data?.sources??[];
          return DefaultTabController(
            length: sources.length,
            child: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              tabs: sources.map((source) => Tab(text: source.name)).toList(),
            ),
          );
        },
      ),
    );
  }
}
