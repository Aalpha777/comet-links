import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LaunchPadsRecord extends FirestoreRecord {
  LaunchPadsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "LaunchpadID" field.
  String? _launchpadID;
  String get launchpadID => _launchpadID ?? '';
  bool hasLaunchpadID() => _launchpadID != null;

  // "CurrentRedirectLink" field.
  String? _currentRedirectLink;
  String get currentRedirectLink => _currentRedirectLink ?? '';
  bool hasCurrentRedirectLink() => _currentRedirectLink != null;

  // "IsVerified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "IsLive" field.
  bool? _isLive;
  bool get isLive => _isLive ?? false;
  bool hasIsLive() => _isLive != null;

  // "PreviousRedirectLink" field.
  String? _previousRedirectLink;
  String get previousRedirectLink => _previousRedirectLink ?? '';
  bool hasPreviousRedirectLink() => _previousRedirectLink != null;

  // "PrimaryColor" field.
  Color? _primaryColor;
  Color? get primaryColor => _primaryColor;
  bool hasPrimaryColor() => _primaryColor != null;

  // "SecondaryColor" field.
  Color? _secondaryColor;
  Color? get secondaryColor => _secondaryColor;
  bool hasSecondaryColor() => _secondaryColor != null;

  // "BaseColor" field.
  Color? _baseColor;
  Color? get baseColor => _baseColor;
  bool hasBaseColor() => _baseColor != null;

  // "userOwner" field.
  DocumentReference? _userOwner;
  DocumentReference? get userOwner => _userOwner;
  bool hasUserOwner() => _userOwner != null;

  void _initializeFields() {
    _launchpadID = snapshotData['LaunchpadID'] as String?;
    _currentRedirectLink = snapshotData['CurrentRedirectLink'] as String?;
    _isVerified = snapshotData['IsVerified'] as bool?;
    _isLive = snapshotData['IsLive'] as bool?;
    _previousRedirectLink = snapshotData['PreviousRedirectLink'] as String?;
    _primaryColor = getSchemaColor(snapshotData['PrimaryColor']);
    _secondaryColor = getSchemaColor(snapshotData['SecondaryColor']);
    _baseColor = getSchemaColor(snapshotData['BaseColor']);
    _userOwner = snapshotData['userOwner'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LaunchPads');

  static Stream<LaunchPadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LaunchPadsRecord.fromSnapshot(s));

  static Future<LaunchPadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LaunchPadsRecord.fromSnapshot(s));

  static LaunchPadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LaunchPadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LaunchPadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LaunchPadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LaunchPadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LaunchPadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLaunchPadsRecordData({
  String? launchpadID,
  String? currentRedirectLink,
  bool? isVerified,
  bool? isLive,
  String? previousRedirectLink,
  Color? primaryColor,
  Color? secondaryColor,
  Color? baseColor,
  DocumentReference? userOwner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'LaunchpadID': launchpadID,
      'CurrentRedirectLink': currentRedirectLink,
      'IsVerified': isVerified,
      'IsLive': isLive,
      'PreviousRedirectLink': previousRedirectLink,
      'PrimaryColor': primaryColor,
      'SecondaryColor': secondaryColor,
      'BaseColor': baseColor,
      'userOwner': userOwner,
    }.withoutNulls,
  );

  return firestoreData;
}

class LaunchPadsRecordDocumentEquality implements Equality<LaunchPadsRecord> {
  const LaunchPadsRecordDocumentEquality();

  @override
  bool equals(LaunchPadsRecord? e1, LaunchPadsRecord? e2) {
    return e1?.launchpadID == e2?.launchpadID &&
        e1?.currentRedirectLink == e2?.currentRedirectLink &&
        e1?.isVerified == e2?.isVerified &&
        e1?.isLive == e2?.isLive &&
        e1?.previousRedirectLink == e2?.previousRedirectLink &&
        e1?.primaryColor == e2?.primaryColor &&
        e1?.secondaryColor == e2?.secondaryColor &&
        e1?.baseColor == e2?.baseColor &&
        e1?.userOwner == e2?.userOwner;
  }

  @override
  int hash(LaunchPadsRecord? e) => const ListEquality().hash([
        e?.launchpadID,
        e?.currentRedirectLink,
        e?.isVerified,
        e?.isLive,
        e?.previousRedirectLink,
        e?.primaryColor,
        e?.secondaryColor,
        e?.baseColor,
        e?.userOwner
      ]);

  @override
  bool isValidKey(Object? o) => o is LaunchPadsRecord;
}
