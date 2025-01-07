
part of 'charachtar_cubit.dart';


@immutable
sealed class CharachtarState {}

 class CharachtarInitial extends CharachtarState {
  CharachtarInitial();
}
 class CharachtarLoading extends CharachtarState {
  CharachtarLoading();
}
 class CharachtarLoaded extends CharachtarState {
 List<CharachterModel> listCharachterModel;
  CharachtarLoaded({required this.listCharachterModel});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)){ return true;}
    return other is CharachtarLoaded && other.listCharachterModel == listCharachterModel;
   
    }

    @override 
    int get hashCode => listCharachterModel.hashCode;
  
  }
 class CharachtarError extends CharachtarState {
  final String message;
  CharachtarError({required this.message});
  @override
  bool operator ==(Object other) {
    if (identical(this, other)){ return true;}
    return other is CharachtarError&& other.message == message;
   
    }

    @override 
    int get hashCode => message.hashCode;
}

