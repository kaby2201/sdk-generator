import '../lib/appwrite.dart';

void main() async {
  Client client = Client();
  Foo foo = Foo(client);
  Bar bar = Bar(client);
  General general = General(client);

  client.addHeader('Origin', 'http://localhost');
  client.setSelfSigned();

// Foo Tests

  Response response;
  response = await foo.get(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

  response = await foo.post(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

  response = await foo.put(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

  response = await foo.patch(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

  response = await foo.delete(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

// Bar Tests

  response = await bar.get(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

  response = await bar.post(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

  response = await bar.put(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

  response = await bar.patch(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

  response = await bar.delete(x: 'string', y: 123, z: ['string in array']);
  print(response.data['result']);

  // General Tests

  response = await general.redirect();
  print(response.data['result']);
}
