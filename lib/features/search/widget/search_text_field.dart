import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/resources/assets_managers.dart';
import 'package:news/features/search/search_view_model/search_view_model.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).shadowColor;
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return TextField(
      autocorrect: true,
      controller: context.read<SearchViewModel>().searchController,
      cursorColor: shadowColor,
      cursorHeight: 30,
      keyboardType: TextInputType.text,
      onSubmitted: (query) {
        context.read<SearchViewModel>().search(query);
      },
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: appLocalizations.search,
        prefixIcon: InkWell(
          borderRadius: BorderRadius.circular(30.r),
          onTap: () {
            String query = context
                .read<SearchViewModel>()
                .searchController
                .text;
            context.read<SearchViewModel>().search(query);
          },
          child: Image.asset(AssetsManager.searchIcon),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            context.read<SearchViewModel>().searchController.clear();
          },
          icon: const Icon(Icons.clear_all_rounded),
        ),
      ),
      style: GoogleFonts.inter(
        color: shadowColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}
