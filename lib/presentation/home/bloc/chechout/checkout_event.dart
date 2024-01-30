part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  //add Checkout
  const factory CheckoutEvent.addCheckout(Product product) = _AddCheckout;
  // remove Checkout
  const factory CheckoutEvent.removeCheckout(Product product) = _RemoveCheckout;
  // remove Product
  const factory CheckoutEvent.removeProduct(Product product) = _RemoveProduct;
  //remove all products checkout product
  const factory CheckoutEvent.removeAllProduct(Product product) =
      _RemoveAlProduct;
}
