//States
import 'dart:async';

import 'events.dart';

class ChatGPTState {
  final String response;

  ChatGPTState(this.response);
}

class ChatGPTBloc {
  final _responseController = StreamController<ChatGPTState>(); // Stream controller for ChatGPT responses

  Stream<ChatGPTState> get responseStream => _responseController.stream; // Exposing the stream

  // Method to send user input to ChatGPT API and listen for responses
  void mapEventToState(ChatGPTEvent event, String userInput) {
    if (event == ChatGPTEvent.sendUserInput) {
      // Replace 'sendToChatGPTAPI' with the function to send user input to ChatGPT API
      String response = sendToChatGPTAPI(userInput); // Call ChatGPT API with user input
      _responseController.sink.add(ChatGPTState(response)); // Emitting the API response state to the stream
    }
  }

  void dispose() {
    _responseController.close();
  }
}