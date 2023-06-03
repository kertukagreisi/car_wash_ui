//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Owner {
  /// Returns a new [Owner] instance.
  Owner({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.age,
    this.cars = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? age;

  List<Car> cars;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Owner &&
     other.id == id &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.phoneNumber == phoneNumber &&
     other.age == age &&
     other.cars == cars;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (age == null ? 0 : age!.hashCode) +
    (cars.hashCode);

  @override
  String toString() => 'Owner[id=$id, firstName=$firstName, lastName=$lastName, phoneNumber=$phoneNumber, age=$age, cars=$cars]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
    }
    if (this.age != null) {
      json[r'age'] = this.age;
    } else {
      json[r'age'] = null;
    }
      json[r'cars'] = this.cars;
    return json;
  }

  /// Returns a new [Owner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Owner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Owner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Owner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Owner(
        id: mapValueOfType<int>(json, r'id'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        age: mapValueOfType<int>(json, r'age'),
        cars: Car.listFromJson(json[r'cars']),
      );
    }
    return null;
  }

  static List<Owner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Owner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Owner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Owner> mapFromJson(dynamic json) {
    final map = <String, Owner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Owner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Owner-objects as value to a dart map
  static Map<String, List<Owner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Owner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Owner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

