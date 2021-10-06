part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailed extends HomeState {}

class HomeSuccess extends HomeState {
  final List<MovieModel> data;

  HomeSuccess(this.data);

  @override
  List<Object> get props => [data];
}
