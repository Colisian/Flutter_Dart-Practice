//Events

import 'dart:async';

enum ChatGPTEvent {
  sendUserInput,
}

class ChatGPTBloc {
  final _responseController = StreamController<String>(); // Stream controller for ChatGPT responses

  Stream<String> get responseStream => _responseController.stream; // Exposing the stream

  // Method to send user input to ChatGPT API and listen for responses
  void mapEventToState(ChatGPTEvent event, String userInput) {
    if (event == ChatGPTEvent.sendUserInput) {
      // Replace 'sendToChatGPTAPI' with the function to send user input to ChatGPT API
      String response = sendToChatGPTAPI(userInput); // Call ChatGPT API with user input
      _responseController.sink.add(response); // Emitting the API response to the stream
    }
  }

  void dispose() {
    _responseController.close();
  }
}
