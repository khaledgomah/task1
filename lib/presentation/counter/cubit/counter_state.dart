part of 'counter_cubit.dart';

sealed class CounterState {}

final class CounterInitial extends CounterState {}
final class CounterChangeState extends CounterState {}
