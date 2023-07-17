//async allows us to add await infront
//of any function that we want to 
//wait for 

void main() async {
  print('Requesting Order');
  //wait
  var order = await fetchUserOrder();
  print(order);
  print('code after fetch user order');
 

  
//   String createOrderMessage() {
//     //fetchUserOrder amazon shipment
//     //how can we tell dart to wait
//     var order = fetchUserOrder();
//     return 'Customer order was: $order';
//   }

//   print(createOrderMessage());
}

//aws -- customer Order
 Future<String> fetchUserOrder() {
    return Future.delayed(const Duration(seconds: 2, ), ()=> '123',);
  }