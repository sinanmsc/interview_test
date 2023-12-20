import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/provider/update_user_provider/update_user_provider.dart';
import 'package:interview_test/service/authentication_service.dart';
import 'package:interview_test/view/authantication/auth_page.dart';
import 'package:interview_test/core/extension/widgets/CustomTextField.dart';

class DrawerWidget extends ConsumerWidget {
  const DrawerWidget({
    super.key,
  });

  void updatUser(WidgetRef ref, BuildContext context) async {
    final isUpdated = await ref.read(updateUserProvider.notifier).update(ref);
    if (isUpdated) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('updated Successfully'),
          ),
        );
        Navigator.pop(context);
        Navigator.pop(context);
      }
    }
  }

  void deletingUser(BuildContext context, WidgetRef ref) async {
    final bool isDeleted = await AuthenticationService.delete(ref);
    if (isDeleted) {
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AuthPage(),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      backgroundColor: Colors.teal[300],
      child: ListView(
        children: [
          ListTile(
            tileColor: Colors.teal[50],
            leading: const Icon(Icons.update),
            title: const Text(
              'Update Name and Password',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextField(
                        label: 'New Name',
                        controller:
                            ref.watch(updateUserProvider).nameController,
                      ),
                      CustomTextField(
                        label: 'New Password',
                        controller:
                            ref.watch(updateUserProvider).passwordController,
                      ),
                      ElevatedButton(
                          onPressed: () async => updatUser(ref, context),
                          child: const Text('Done'))
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.white,
            leading: const Icon(Icons.delete),
            title: const Text(
              'Delet Account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => deletingUser(context, ref),
          )
        ],
      ),
    );
  }
}
