import 'package:eccommerce/pages/payament_sucess.dart';
import 'package:eccommerce/providers/cart_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/cart/order_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:flutter_paystack/flutter_paystack.dart";

class CheckoutScreen extends ConsumerStatefulWidget {
  const CheckoutScreen({super.key});

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  TextEditingController emailController = TextEditingController();
  String publicKey = "pk_test_1cda974805147e1bfd47a57dcb5e4ea81ede8b71";
  final plugin = PaystackPlugin();

  @override
  void initState() {
    super.initState();
    plugin.initialize(publicKey: publicKey);
  }

  @override
  Widget build(BuildContext context) {
    void makePayment() async {
      int price = int.parse(
          ref.watch(cartProvider.notifier).calculateSubTotl().toString());
      Charge charge = Charge()
        ..amount = price
        ..reference = 'ref ${DateTime.now()}'
        ..email = emailController.text
        ..currency = "NGN";

      CheckoutResponse response = await plugin.checkout(context,
          charge: charge, method: CheckoutMethod.card);

      if (response.status == true) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PaymentSuccessScreen()));
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Checkout"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppSizes.defualtPadding),
          child: Form(
            child: Column(
              children: [
                const OrderSummary(),
                TextFormField(
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Email";
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "email",
                      labelText: "Email",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        makePayment();
                      },
                      child: const Text("Pay Now")),
                )
              ],
            ),
          ),
        ));
  }
}
