import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/resources/assets_managers.dart';
import 'package:news/features/home/widget/article_widget.dart';
import 'package:news/features/search/search_view_model/search_view_model.dart';
import 'package:news/features/search/widget/search_text_field.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).shadowColor;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
          child: Column(
            children: [
              SearchTextField(),
              SizedBox(height: 8.h),
              Consumer<SearchViewModel>(
                builder: (context, searchViewModel, child) {
                  if (searchViewModel.articles.isEmpty) {
                    return Expanded(
                      child: Center(
                        child: Image.asset(
                          AssetsManager.newsLogo,
                          color: shadowColor,
                        ),
                      ),
                    );
                  }
                  if (searchViewModel.isLoading) {
                    return Expanded(
                      child: Center(
                        child: CircularProgressIndicator(color: shadowColor),
                      ),
                    );
                  }
                  if (searchViewModel.errorMessage != null) {
                    return Expanded(
                      child: Center(
                        child: Text(
                          searchViewModel.errorMessage ?? "",
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    );
                  }
                  return Expanded(
                    child: ListView.separated(
                      controller: searchViewModel.scrollController,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        if (searchViewModel.paginationLoading =
                            true && index == searchViewModel.articles.length) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(
                              color: shadowColor,
                            ),
                          );
                        }
                        return ArticleWidget(
                          article: searchViewModel.articles[index],
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 16.h),
                      itemCount:
                          searchViewModel.articles.length +
                          (searchViewModel.isLoading ? 1 : 0),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
