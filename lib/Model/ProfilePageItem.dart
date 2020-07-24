class ProfilePageItem {
  final String heading;
  final String data;

  const ProfilePageItem({
    this.heading,
    this.data,
  });
}

List<ProfilePageItem> items = [
  const ProfilePageItem(
    heading: "Name",
    data: "Citizen",
  ),
  const ProfilePageItem(
    heading: "Mobile No.",
    data: "1234567890",
  ),
  const ProfilePageItem(
    heading: "Email",
    data: "citizen@example.com",
  ),
  const ProfilePageItem(
    heading: "City",
    data: "Bangalore",
  ),
  const ProfilePageItem(
    heading: "State",
    data: "Karnataka",
  ),
  const ProfilePageItem(
    heading: "Pincode",
    data: "560001",
  ),
];
