import 'dart:async';

// Future<String> fetchUsername(){
//   return Future.delayed( Duration(seconds: 3),() => 'Nguyen DUc Minh');
// }
//
// void main(){
//   fetchUsername().then((username ){
//     print('user name: $username');
//   });
//}

Future<String> fetchUsernameAsync() async{
  await Future.delayed(Duration(seconds: 3));
  return 'Nguyen Duc Minh';
}

Future<void> main() async{
  try{
    String username = await fetchUsernameAsync();
  }catch(error){
    print('Error: $error');

  }
}