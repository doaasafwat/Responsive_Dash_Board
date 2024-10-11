import 'package:flutter/material.dart';
import 'package:responsive_desh_board/widgets/custom_background_container.dart';
import 'package:responsive_desh_board/widgets/latest_transaction.dart';
import 'package:responsive_desh_board/widgets/quick_invoice_form.dart';
import 'package:responsive_desh_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            color: Color(0xFFF1F1F1),
              height: 48,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
