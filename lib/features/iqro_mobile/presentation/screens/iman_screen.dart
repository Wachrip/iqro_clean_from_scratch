import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/presentation/cubits/iman_cubit/iman_category_list_cubit.dart';

class ImanScreen extends StatelessWidget {
  const ImanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Iman Screen')),
      body: Center(
          child: BlocBuilder<ImanCategoryListCubit, ImanCategoryListState>(
        builder: (context, state) {
          print('State in iman screen: ${state}');
          return Column(
            children: [
              const Text('Test button'),
              ElevatedButton(
                  onPressed: () => {
                        context
                            .read<ImanCategoryListCubit>()
                            .getImanCategoryList()
                      },
                  child: const Text('Test firebase'))
            ],
          );
        },
      )),
    );
  }
}
