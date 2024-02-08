//Streambuilder
import 'streams.dart';

class ChatScreen extends StatelessWidget {
  final ChatGPTBloc chatGPTBloc;

  ChatScreen(this.chatGPTBloc);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>( 
      //In this example, StreamBuilder<String> is used to create a widget that builds itself based 
      //on the latest snapshot of interaction with a Stream<String>. The type argument <String> 
      //is provided to specify that the stream contains String data.
      stream: chatGPTBloc.responseStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ChatBubble(text: snapshot.data); // Displaying the ChatGPT response
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
  
  StreamBuilder({required Stream<String> stream, required Function(dynamic context, dynamic snapshot) builder}) {}
  
  ChatBubble({required text}) {}
  
  CircularProgressIndicator() {} 
  //The CircularProgressIndicator you've mentioned is a widget in Flutter that shows a spinning circle, 
  //usually used to indicate that the app is busy or waiting for something. It doesn't take any type arguments.
}

class StatelessWidget {
}

class Widget {
}

class BuildContext {
}


