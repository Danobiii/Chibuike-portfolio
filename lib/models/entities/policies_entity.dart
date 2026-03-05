enum PolicyType { car, health, travel }

class PoliciesEntity {
  final int id;
  final PolicyType policyTypeIcon;
  final String policyDesc;
  final String policyNo;
  final String status;
  final String expires;

  PoliciesEntity({
    required this.id,
    required this.policyTypeIcon,
    required this.policyDesc,
    required this.policyNo,
    required this.status,
    required this.expires,
  });
  factory PoliciesEntity.fromJson(Map<String, dynamic> json) {
    try {
      return PoliciesEntity(
        id: int.parse(json["id"]),
        policyTypeIcon: _parsePolicyType(json["policyType"]),
        policyDesc: json["policyDesc"],
        status: json["status"],
        policyNo: json["policyNo"],
        expires: json["expires"],
      );
    } catch (e) {
      rethrow;
    }
  }

  static PolicyType _parsePolicyType(String type) {
    switch (type.toLowerCase()) {
      case 'car':
        return PolicyType.car;
      case 'health':
        return PolicyType.health;
      case 'travel':
        return PolicyType.travel;
      default:
        return PolicyType.car;
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "policyType": policyTypeIcon.name,
      "policyDesc": policyDesc,
      "status": status,
      "policyNo": policyNo,
      "expires": expires,
    };
  }
}
