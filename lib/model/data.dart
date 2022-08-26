class Data {
  String id;
  double process;
  String destination;
  String sent;
  String status;
  List<List<String>> position;

  Data({
    required this.id,
    required this.process,
    required this.destination,
    required this.sent,
    required this.status,
    required this.position,
  });
}

var dataList = [
  Data(
    id: 'JX32152435',
    process: 0.79,
    destination: 'Jakarta, Indonesia',
    sent: '24 Agt 2022',
    status: 'Transit',
    position: [
      ['Sent to destination city', 'Jakarta, Indonesia', '24 Agt 2022'],
      ['Arrived in Indonesia', 'Jakarta, Indonesia', '20 Agt 2022'],
      ['Accepted by Jx Express', 'Jakarta, Indonesia', '19 Agt 2022'],
    ],
  ),
  Data(
    id: 'JX32152433',
    process: 0.69,
    destination: 'Semarang, Indonesia',
    sent: '24 Agt 2022',
    status: 'Delivery Complete',
    position: [
      ['Sent to destination city', 'Jakarta, Indonesia', '24 Agt 2022'],
      ['Sent to destination city', 'Jakarta, Indonesia', '24 Agt 2022'],
    ],
  ),
  Data(
    id: 'JX32152434',
    process: 0.64,
    destination: 'Jakarta, Indonesia',
    sent: '24 Agt 2022',
    status: 'Transit',
    position: [
      ['Sent to destination city', 'Jakarta, Indonesia', '24 Agt 2022'],
      ['Sent to destination city', 'Jakarta, Indonesia', '24 Agt 2022'],
    ],
  ),
];
