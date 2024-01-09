import 'package:bloc_demo/pages/quote/bloc/quote_bloc.dart';
import 'package:bloc_demo/pages/quote/widgets/custom_button.dart';
import 'package:bloc_demo/pages/quote/widgets/error_message.dart';
import 'package:bloc_demo/pages/quote/widgets/quote_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quote Home'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: Center(child: BlocBuilder<QuoteBloc, QuoteState>(
                builder: (context, state) {
                  if (state is QuoteInitial) {
                    return const Text('Your Quote is waiting');
                  } else if (state is QuoteStateLoading) {
                    return const CircularProgressIndicator(
                      color: Colors.purple,
                    );
                  } else if (state is QuoteStateLoaded) {
                    return QuoteWidget(quote: state.quote);
                  } else if (state is QuoteStateError) {
                    return ErrorMessage(
                      msg: state.msg,
                    );
                  }
                  return const ErrorMessage(msg: 'Something Went Wrong');
                },
              ))),
              const CustomButton()
            ],
          ),
        ),
      ),
    );
  }
}
