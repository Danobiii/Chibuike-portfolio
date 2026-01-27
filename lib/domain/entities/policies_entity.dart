class PoliciesEntity {
  final String id;
  final String policyType;
  final String policyDesc;
  final String policyNo;
  final String status;
  final String expires;

  PoliciesEntity({
    required this.id,
    required this.policyType,
    required this.policyDesc,
    required this.policyNo,
    required this.status,
    required this.expires,
  });
  factory PoliciesEntity.fromJson(Map<String, dynamic> json) {
    return PoliciesEntity(
      id: json["id"],
      policyType: json["policyType"],
      policyDesc: json["policyDesc"],
      status: json["status"],
      policyNo: json["policyNo"],
      expires: json["expires"],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "policyType": policyType,
      "policyDesc": policyDesc,
      "status": status,
      "policyNo": policyNo,
      "expires": expires,
    };
  }
}
