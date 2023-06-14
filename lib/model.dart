import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class DaysModel with _$DaysModel {
  const factory DaysModel({
    int? id,
     String? day,
     List<TimeSlotModel>? products,
  }) = _DaysModel;

  factory DaysModel.empty() => DaysModel();
}

@freezed
class TimeSlotModel with _$TimeSlotModel {
  const factory TimeSlotModel({
     String? from,
     String? to,
  }) = _TimeSlotModel;

  factory TimeSlotModel.empty() => TimeSlotModel();
}
