# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
bank = Bank.create!(
  name: "Banco de la Felicidad",
)

bluey = Person.create!(
  firstName: "Bluey",
  lastName: "Heeler",
)

checking_1 = Account.create!(
  accountType: "chequing",
  balance: 80.0,
  bank: bank,
  person: bluey,
)

Transaction.create!(
  [
    {
      account: checking_1,
      description: "deposit",
      value: 100.0,
    },
    {
      account: checking_1,
      description: "debit",
      value: -10.0,
    },
    {
      account: checking_1,
      description: "debit",
      value: -10.0,
    },
  ]
)

bingo = Person.create!(
  firstName: "Bingo",
  lastName: "Heeler",
)

checking_2 = Account.create!(
  accountType: "chequing",
  balance: 0.0,
  bank: bank,
  person: bingo,
)

Transaction.create!(
  [
    {
      account: checking_2,
      description: "deposit",
      value: 70.0,
    },
    {
      account: checking_2,
      description: "debit",
      value: -5.0,
    },
    {
      account: checking_2,
      description: "debit",
      value: -25.0,
    },
  ]
)
