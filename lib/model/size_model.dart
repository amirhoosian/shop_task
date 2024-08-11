class SizeModel {
  String? size;
  bool? isSelected;
  SizeModel({required this.size, required this.isSelected});

  static List<SizeModel> getSize() {
    List<SizeModel> size = [];

    size.add(SizeModel(size: 'Us6', isSelected: false));
    size.add(SizeModel(size: 'Us7', isSelected: false));
    size.add(SizeModel(size: 'Us8', isSelected: false));
    size.add(SizeModel(size: 'Us9', isSelected: false));

    return size;
  }
}
