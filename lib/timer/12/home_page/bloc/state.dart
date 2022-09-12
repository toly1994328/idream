part of 'bloc.dart';

enum StopWatchType {
  none, // 初始态
  stopped, // 已停止
  running, // 运行中
}

class StopWatchState {
  final StopWatchType type;
  final List<TimeRecord> durationRecord;
  final Duration duration;

  Duration get secondDuration {
    if (durationRecord.isNotEmpty) {
      return duration - durationRecord.last.record;
    }
    return duration;
  }

  const StopWatchState({
    this.type = StopWatchType.none,
    this.durationRecord = const [],
    this.duration = Duration.zero,
  });

  StopWatchState copyWith({
    StopWatchType? type,
    List<TimeRecord>? durationRecord,
    Duration? duration,
  }) {
    return StopWatchState(
      type: type ?? this.type,
      durationRecord: durationRecord ?? this.durationRecord,
      duration: duration ?? this.duration,
    );
  }
}
