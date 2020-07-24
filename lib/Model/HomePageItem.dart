import 'package:citizen_app/Screens/FIRList.dart';
import 'package:citizen_app/Screens/missing.dart';

class HomePageItem {
  final String id;
  final String name;
  final String description;
  final String routeId;

  HomePageItem({this.id, this.name, this.description, this.routeId});
}

List<HomePageItem> items = [
  HomePageItem(
      id: "1", name: "FIR", description: "Know about the status of FIR", routeId: FIRStatus.id),
  HomePageItem(
      id: "2", name: "Missing", description: "Missing people information", routeId: Missing.id),
  HomePageItem(
    id: "3",
    name: "Instant Help",
    description: "Help on phone and mail",
      routeId: FIRStatus.id
  ),
  HomePageItem(
    id: "4",
    name: "My Profile",
    description: "Visit your profile",
    routeId: Missing.id
  )
];
