class BaseResponseModel<T> {
  List<T>? data;
  int? total;
  int? skip;
  int? limit;

  BaseResponseModel({
    this.data,
    this.total,
    this.skip,
    this.limit,
  });

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    final rawData = json['todos'] ?? json['data'];

    List<T>? dataList;
    if (rawData != null) {
      dataList = List<Map<String, dynamic>>.from(rawData)
          .map((item) => fromJsonT(item))
          .toList();
    }

    return BaseResponseModel<T>(
      data: dataList,
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
    );
  }
}
