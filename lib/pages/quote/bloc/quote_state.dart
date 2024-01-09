part of 'quote_bloc.dart';

@immutable
sealed class QuoteState {}

final class QuoteInitial extends QuoteState {}

class QuoteStateLoading extends QuoteState {}

class QuoteStateError extends QuoteState {
  final String msg;
  QuoteStateError({required this.msg});
}

class QuoteStateLoaded extends QuoteState {
  final String quote;
  QuoteStateLoaded({required this.quote});
}
