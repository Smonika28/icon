part of 'fetch_all_service_bloc.dart';


abstract class FetchAllServiceEvent {}
class FetchAllServiceEvents extends FetchAllServiceEvent{}





abstract class FetchAllFieldEvent {}
class ServiceDetailsFieldEvent extends FetchAllFieldEvent{
  String serviceID;
  ServiceDetailsFieldEvent({required this.serviceID});
}