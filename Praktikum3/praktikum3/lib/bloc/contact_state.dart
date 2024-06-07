part of "contact_cubit.dart";

abstract class ContactState extends Equatable{
  const ContactState();

  List<User> get props => [];
}

class ContactInitial extends ContactState{}
class ContactLoading extends ContactState{}
class ContactLoaded extends ContactState{
  final List<User> user;
  const ContactLoaded({required this.user})

  List<User> get props => user;
}
class ContactFailed extends ContactState{}
