class PlanModel {
  final String title;
  final String price;
  final String period;
  final String description;
  final bool isPopular;

  const PlanModel({
    required this.title,
    required this.price,
    required this.period,
    this.description = 'Include Family Sharing',
    this.isPopular = false,
  });
}

List<PlanModel> plans = [
  PlanModel(title: 'Monthly', price: '\$5 USD', period: '/Month'),
  PlanModel(title: 'Annually', price: '\$50 USD', period: '/Year'),
];
