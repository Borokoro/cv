import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/constants/style_constants.dart';
import 'package:cv/types/enum/project.dart';
import 'package:cv/utils/string_utils.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:cv/view/pages/projects/components/glass_container.dart';
import 'package:cv/view/pages/projects/components/project_details.dart';
import 'package:cv/view/shared_components/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  static const double _viewportFraction = 1.0;

  final CarouselSliderController _carouselController = CarouselSliderController();
  final List<Project> _allProjects = Project.values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(isCvPage: false),
      body: SafeArea(child: GlassContainer(child: _getProjectPageBody(context))),
    );
  }

  Widget _getProjectPageBody(BuildContext context) {
    return Row(
      children: [
        _getArrow(context, isArrowLeft: true),
        Expanded(child: _getProjectInformation()),
        _getArrow(context, isArrowLeft: false),
      ],
    );
  }

  Widget _getArrow(BuildContext context, {required bool isArrowLeft}) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Material(
      type: MaterialType.transparency,
      child: Ink(
        child: InkWell(
          hoverColor: ColorConstants.black.withValues(alpha: 0.5),
          onTap: () => onArrowTap(isArrowLeft),
          child: Padding(
            padding: StyleConstants.edgeInsetsH20,
            child: Center(
              child: Text(
                isArrowLeft ? StringUtils.lessThan : StringUtils.greaterThan,
                style: textTheme.fontBigArrows.copyWith(color: ColorConstants.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onArrowTap(bool isArrowLeft) {
    if(isArrowLeft) {
      _carouselController.previousPage();
    }
    else {
      _carouselController.nextPage();
    }
  }

  Widget _getProjectInformation() {
    return CarouselSlider(
      items: _getProjects(),
      options: CarouselOptions(height: double.infinity, viewportFraction: _viewportFraction),
      carouselController: _carouselController,
    );
  }

  List<Widget> _getProjects() {
    List<Widget> projects = [];
    for (Project project in _allProjects) {
      projects.add(ProjectDetails(project: project));
    }
    return projects;
  }
}
