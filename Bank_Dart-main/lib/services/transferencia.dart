import 'package:dart_bank/models/account.dart';

void transferencia(Account origin, Account destination, double value) {
  if (origin == destination) {
    throw Exception("Erro! ATENÇÃO: A conta origem é a mesma da conta de transferência.");
  }

  if (value <= 0) {
    throw Exception("O valor da transferência deve ser maior que zero.");
  }

  if (origin.getBalance() < value) {
    throw Exception("Saldo insuficiente na conta.");
  }

  origin.removeBalance(value);
  destination.addBalance(value);
}



