class DoctorsApi {
  DoctorsApi({
    this.doctorsId,
    this.doctorName,
    this.specialility,
    this.phone,
    this.aboutDoctor,
    this.experienceLevel,
    this.profileImage,
  });

  String? doctorsId;
  String? doctorName;
  String? specialility;
  String? phone;
  String? aboutDoctor;
  String? experienceLevel;
  String? profileImage;

  factory DoctorsApi.fromJson(Map<String, dynamic> json) => DoctorsApi(
        doctorsId: json["Doctors ID"],
        doctorName: json["doctorName"],
        specialility: json["specialility"],
        phone: json["phone"],
        aboutDoctor: json["aboutDoctor"],
        experienceLevel: json["experienceLevel"],
        profileImage: json["profileImage"],
      );
}
