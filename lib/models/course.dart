class Course {
  final String title;
  final String imageUrl;
  final int charges;
  final String chargesUnit;
  final int duration;
  final String durationUnit;
  final String classDays;
  final String classTiming;
  final int batchNo;
  final int programId;

  Course({
    required this.title,
    required this.imageUrl,
    required this.charges,
    required this.chargesUnit,
    required this.duration,
    required this.durationUnit,
    required this.classDays,
    required this.classTiming,
    required this.batchNo,
    required this.programId,
  });
  factory Course.fromJson(Map<String, dynamic> json) => Course(
        title: json['title'],
        imageUrl: json['imageUrl'],
        charges: json['charges'],
        chargesUnit: json['chargesUnit'],
        duration: json['duration'],
        durationUnit: json['durationUnit'],
        classDays: json['classDays'],
        classTiming: json['classTiming'],
        batchNo: json['batchNo'],
        programId: json['programId'],
      );
}
