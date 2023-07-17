


//try
//catch
//on
//finally
//assert


void main() {
  //Try - Catch Block
  var storedPassword = 'pass123';
  var inputPassword = 'pass456';
  var myList = [1,2,3];
  
  print('Checking password');
  //if not true it stopes here
  assert(storedPassword == inputPassword, 'ERROR ON CHECK');
  print('After assert');
  
  
  try{ 
    print(12~/0);
  //print(myList[10]);
  }on RangeError{
    print('We had a range error');
  }catch(e){
    print('we have a $e error');
  }finally{
    print('this is in the final block');
  }  
  
  try{
    print(12~/0);
  }catch(error){
    print('12~/0 did not work!');
    print('Uh Uh $error');
  }
  
  // print(12~/0);
  // trancate the decimals 
  // print(7~/2);
}
