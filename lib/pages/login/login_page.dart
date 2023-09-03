import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_realm_music/pages/login/login_view_model.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
      child: const _LoginBody(),
    );
  }
}

class _LoginBody extends StatefulWidget {
  const _LoginBody();

  @override
  State<_LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<_LoginBody> {
  late StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    final viewModel = Provider.of<LoginViewModel>(context, listen: false);
    subscription = viewModel.loginSuccessEvent.listen((event) {
      Navigator.of(context).pushReplacementNamed('/main');
    });
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(builder: (context, viewModel, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('扫码登录'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: _buildQrView(viewModel.qrUrl),
              ),
              ListTile(
                title: ElevatedButton(
                    onPressed: viewModel.loading
                        ? null
                        : () {
                            viewModel.startLogin();
                          },
                    child: const Text('登录')),
              ),
              ListTile(
                title: OutlinedButton(
                    onPressed: viewModel.loading
                        ? null
                        : () {
                            viewModel.refresh();
                          },
                    child: const Text('刷新')),
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _buildQrView(String? content) {
    if (content == null) {
      return const SizedBox(
          width: 32, height: 32, child: CircularProgressIndicator());
    } else if (content.isEmpty) {
      return const Text('出错了');
    } else {
      return QrImageView(data: content);
    }
  }
}
