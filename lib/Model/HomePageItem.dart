class HomePageItem {
  final String id;
  final String name;
  final String description;

  const HomePageItem({this.id, this.name, this.description});
}

List<HomePageItem> items = [
  const HomePageItem(
      id: "1", name: "FIR", description: "Kow about the status of FIR"),
  const HomePageItem(
      id: "2", name: "Missing", description: "Missing people information"),
  const HomePageItem(
    id: "3",
    name: "Instant Help",
    description: "Help on phone and mail",
  ),
  const HomePageItem(
    id: "4",
    name: "My Profile",
    description: "Visit your profile",
  )
];
