//Sink
import 'dart:async';

class ChatGPTBloc {
  final _responseController = StreamController<String>(); // Stream controller for ChatGPT responses

  Sink<String> get responseSink => _responseController.sink; // Exposing the sink

  // Constructor to initialize with initial data
  ChatGPTBloc() {
    responseSink.add('Welcome! How can I assist you?'); // Adding initial data to the stream
  }

  // Method to send user input to ChatGPT API and listen for responses
  void sendUserInput(String userInput) {
    // Replace 'sendToChatGPTAPI' with the function to send user input to ChatGPT API
    String response = sendToChatGPTAPI(userInput); // Call ChatGPT API with user input
    responseSink.add(response); // Emitting the API response to the stream
  }

  void dispose() {
    _responseController.close();
  }
}