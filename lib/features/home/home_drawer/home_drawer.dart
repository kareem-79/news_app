import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/resources/assets_managers.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:news/provider/config_provider.dart';
import 'package:news/provider/home_screen_provider.dart';
import 'package:provider/provider.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).shadowColor;
    HomeScreenProvider homeProvider=Provider.of<HomeScreenProvider>(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    AppLocalizations appLocalizations=AppLocalizations.of(context)!;
    return Drawer(
      width: 270.w,
      child: Column(
        children: [
          Container(
            width: 270.w,
            height: 165.h,
            decoration: BoxDecoration(color: shadowColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "News App",
                  style: textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    homeProvider.goToCategoriesView();
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(16.r),
                  child: Row(
                    children: [
                      Image.asset(AssetsManager.homeIcon,color: shadowColor,),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: Text(appLocalizations.go_to_home, style: textTheme.headlineMedium),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Divider(thickness: 2),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Image.asset(AssetsManager.themeIcon,color: shadowColor),
                    SizedBox(width: 10.w),
                    Text(appLocalizations.theme, style: textTheme.headlineMedium),
                  ],
                ),
                SizedBox(height: 8.h),
                Consumer<ConfigProvider>(
                  builder: (context, configProvider, child) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(appLocalizations.dark, style: Theme.of(context).textTheme.headlineMedium),
                        Switch(
                          value: configProvider.currentTheme == ThemeMode.dark,
                          onChanged: (bool newValue) {
                            final newTheme = newValue ? ThemeMode.dark : ThemeMode.light;
                            configProvider.changeAppTheme(newTheme);
                          },
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(height: 24.h),
                Divider(thickness: 2),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Image.asset(AssetsManager.languageIcon,color: shadowColor),
                    SizedBox(width: 10.w),
                    Text(appLocalizations.language, style: textTheme.headlineMedium),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(appLocalizations.english, style: textTheme.headlineMedium),
                    Switch(value: true, onChanged: (_) {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
