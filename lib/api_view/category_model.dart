class CategoryModel {
  final int catId;
  final String catName;
  final String catImg;
  final String desc;
  final String sequence;

  CategoryModel({
    this.catId,
    this.catName,
    this.catImg,
    this.desc,
    this.sequence,
  });

  factory CategoryModel.fromJson(Map m) => CategoryModel(
        catId: int.parse(m["cat_id"]),
        catName: m["cat_name"],
        catImg: m["cat_img"],
        desc: m["desc"],
        sequence: m["sequence"],
      );
}
