// To parse this JSON data, do
//
//     final ForumHistori = ForumHistoriFromJson(jsonString);

import 'dart:convert';

List<ForumHistori> ForumHistoriFromJson(String str) => List<ForumHistori>.from(json.decode(str).map((x) => ForumHistori.fromJson(x)));

String ForumHistoriToJson(List<ForumHistori> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ForumHistori {
    String namaPasien;
    DateTime tanggalKirim;
    String jamKirim;
    Role role;
    String textPertanyaan;
    String jumlahLike;
    String jumlahKomen;

    ForumHistori({
        required this.namaPasien,
        required this.tanggalKirim,
        required this.jamKirim,
        required this.role,
        required this.textPertanyaan,
        required this.jumlahLike,
        required this.jumlahKomen,
    });

    factory ForumHistori.fromJson(Map<String, dynamic> json) => ForumHistori(
        namaPasien: json["nama_pasien"],
        tanggalKirim: DateTime.parse(json["tanggal_kirim"]),
        jamKirim: json["jam_kirim"],
        role: roleValues.map[json["role"]]!,
        textPertanyaan: json["text_pertanyaan"],
        jumlahLike: json["jumlah_like"],
        jumlahKomen: json["jumlah_komen"],
    );

    Map<String, dynamic> toJson() => {
        "nama_pasien": namaPasien,
        "tanggal_kirim": "${tanggalKirim.year.toString().padLeft(4, '0')}-${tanggalKirim.month.toString().padLeft(2, '0')}-${tanggalKirim.day.toString().padLeft(2, '0')}",
        "jam_kirim": jamKirim,
        "role": roleValues.reverse[role],
        "text_pertanyaan": textPertanyaan,
        "jumlah_like": jumlahLike,
        "jumlah_komen": jumlahKomen,
    };
}

enum Role {
    DOKTER,
    PASIEN
}

final roleValues = EnumValues({
    "dokter": Role.DOKTER,
    "pasien": Role.PASIEN
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
