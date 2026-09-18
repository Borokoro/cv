import 'package:auto_route/auto_route.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/view/pages/shared_components/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(isCvPage: false,),
      body: SafeArea(child: Container(color: ColorConstants.red,)),
    );
  }
}
