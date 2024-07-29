import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuantityWrapper extends ConsumerStatefulWidget {
  const QuantityWrapper({
    super.key,
    required this.quantity,
    required this.handleIncreaseQuantity,
    required this.handleReduceQuantity,
    required this.handelDeleteCartItem,
  });

  final int quantity;
  final Function handleReduceQuantity;
  final Function handleIncreaseQuantity;
  final Function handelDeleteCartItem;

  @override
  ConsumerState<QuantityWrapper> createState() => _QuantityWrapperState();
}

class _QuantityWrapperState extends ConsumerState<QuantityWrapper> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: QuantityBtn(
              element: const Text(
                "-",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                widget.handleReduceQuantity();
              },
            ),
          ),
          Expanded(
            child: Text(widget.quantity.toString()),
          ),
          Expanded(
            child: QuantityBtn(
              element: const Text(
                "+",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                widget.handleIncreaseQuantity();
              },
            ),
          ),
          Expanded(
            child: QuantityBtn(
              element: const Icon(Icons.delete),
              onPressed: widget.handelDeleteCartItem,
            ),
          ),
        ],
      ),
    );
  }
}

class QuantityBtn extends StatelessWidget {
  const QuantityBtn(
      {super.key, required this.element, required this.onPressed});

  final Widget element;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          fixedSize: const Size(5, 5),
          shape: const CircleBorder()),
      onPressed: () {
        onPressed();
      },
      child: element,
    );
  }
}
