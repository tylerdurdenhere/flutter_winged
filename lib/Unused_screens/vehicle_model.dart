class VehicleModel {
  final String imagePath;
  final String title;

  VehicleModel(this.imagePath, this.title);

  toJason() {
    return {
      "Image": imagePath,
      "Title": title,
    };
  }
}
