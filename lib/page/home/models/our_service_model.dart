import 'package:infinity_web_app/res/res.dart';

class OurServiceModel {
  final String? title, description, image;

  OurServiceModel({this.title, this.description, this.image});
}

List<OurServiceModel> ourServiceItems = [
  OurServiceModel(
    image: Res.mobile_app_icon,
    title: "Mobile App Development",
    description: "Build the native mobile application and cross-platform with the use of modern CI/CD tools and trending. ",
  ),
  OurServiceModel(
    image: Res.mobile_game_icon,
    title: "Mobile Games Development",
    description: "Design, and develop mobile games, apps, and other cross-platform GUI- established interactive programs",
  ),
  OurServiceModel(
    image: Res.web_dev_icon,
    title: "Web Development",
    description: "Create the website from scratch, redevelop the existing, host, and maintain based on requirements.",
  ),
  OurServiceModel(
    image: Res.ux_ui_icon,
    title: "UX/UI & Web Design",
    description: "Create user-centered designs by understanding business requirements, with a friendly UX and attractive UI. ",
  ),
  OurServiceModel(
    image: Res.digital_marketing_icon,
    title: "Digital Marketing",
    description: "Advertising delivers the innovative and strategic promotional programs that drive efficient results.",
  ),
  OurServiceModel(
    image: Res.creative_sol_icon,
    title: "Creative Solution",
    description: "With innovative, and creative team we assure to cover all your brand campaign objectives…",
  ),
];
