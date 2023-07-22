import 'package:gift_card_app_ui_with_riverpod/model/card_model.dart';

// TODO: Create a provider with Riverpod generator to expose the repository

class CardRepository {
  Future<List<CardModel>> getAllCards() async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return CardModel.sampleCards;
    });
  }

  Future<CardModel> getCard(int cardId) async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return CardModel.sampleCards.where((card) => card.id == cardId).first;
    });
  }
}
