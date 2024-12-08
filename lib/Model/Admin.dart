class Admin {
  String? adminId;
  String? username;
  String? password;
  PersonalInfo? personalInfo;
  SecurityInfo? securityInfo;
  SocialMedia? socialMedia;
  String? rolesId;
  CreateAt? createdAt;
  CreateAt? updatedAt;


  Admin({
    this.adminId,
    this.username,
    this.password,
    this.personalInfo,
    this.securityInfo,
    this.socialMedia,
    this.rolesId,
    this.createdAt,
    this.updatedAt,
  });

  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      adminId: json['Admin_id'],
      username: json['Username'],
      password: json['Password'],
      personalInfo: json['Personal_info'] != null ? PersonalInfo.fromJson(json['Personal_info']) : null,
      securityInfo: json['Security_info'] != null ? SecurityInfo.fromJson(json['Security_info']) : null,
      socialMedia: json['Social_media'] != null ? SocialMedia.fromJson(json['Social_media']) : null,
      rolesId: json['Roles_id'],
      createdAt: json['Created_at'] != null ? CreateAt.fromJson(json['Created_at']) : null,
      updatedAt: json['Updated_at'] != null ? CreateAt.fromJson(json['Updated_at']) : null,

    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['Admin_id'] = adminId;
    data['Username'] = username;
    data['Password'] = password;
    if(personalInfo != null) {
      data['Personal_info'] = personalInfo!.toJson();
    }
    if(securityInfo != null) {
      data['Security_info'] = securityInfo!.toJson();
    }
    if(socialMedia != null) {
      data['Social_media'] = socialMedia!.toJson();
    }
    data['Roles_id'] = rolesId;
    if(createdAt != null) {
      data['Created_at'] = createdAt!.toJson();
    }
    if(updatedAt != null) {
      data['Updated_at'] = updatedAt!.toJson();
    }

    return data;
  }
}

class PersonalInfo {
  String? fullName;
  String? phoneNumber;
  String? address;
  String? evocativeName;

  PersonalInfo({
    this.fullName,
    this.phoneNumber,
    this.address,
    this.evocativeName,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) {
    return PersonalInfo(
      fullName: json['Full_name'],
      phoneNumber: json['Phone_number'],
      address: json['Address'],
      evocativeName: json['Evocation_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Full_name': fullName,
      'Phone_number': phoneNumber,
      'Address': address,
      'Evocation_name': evocativeName,
    };
  }
}

class SecurityInfo {
  String? email;
  String? identityNumber;
  List<String>? favoriteCategories;
  String? gender;
  String? dateOfBirth;

  SecurityInfo({
    this.email,
    this.dateOfBirth,
    this.favoriteCategories,
    this.gender,
    this.identityNumber,
  });

  factory SecurityInfo.fromJson(Map<String, dynamic> json) {
    return SecurityInfo(
      email: json['Email'],
      identityNumber: json['Identity_number'],
      favoriteCategories: json['Favorite_categories'] != null
        ? List<String>.from(json['Favorite_categories'])
          : [],
      gender: json['Gender'],
      dateOfBirth: json['Date_of_birth']['\$date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Email': email,
      'Identity_number': identityNumber,
      'Favorite_categories': favoriteCategories,
      'Gender': gender,
      'Date_of_birth': dateOfBirth,
    };
  }
}

class SocialMedia {
  String? facebook;
  String? google;
  String? appleId;

  SocialMedia({this.facebook, this.google, this.appleId});

  factory SocialMedia.fromJson(Map<String, dynamic> json) {
    return SocialMedia(
      facebook: json['Facebook'],
      google: json['Google'],
      appleId: json['Apple_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Facebook': facebook,
      'Google': google,
      'Apple_id': appleId,
    };
  }
}

class CreateAt {
  String? date;

  CreateAt({this.date});

  factory CreateAt.fromJson(Map<String, dynamic> json) {
    return CreateAt(date: json['\$date']);
  }

  Map<String, dynamic> toJson() {
    return {'\$date': date};
  }
}