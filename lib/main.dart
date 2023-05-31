import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_os/business/movies_bloc.dart';
import 'package:tv_os/framework/remote_controller.dart';
import 'package:tv_os/ui/focus/extensions.dart';
import 'package:tv_os/ui/focus/scale_widget.dart';
import 'package:tv_os/ui/movies_screen.dart';
import 'package:tv_os/ui/widgets/platform.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (MyPlatform.isTVOS) {
    RemoteController().init();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const screen = MoviesScreen();
    print(MyPlatform.isAndroidTV);
    print(kTvSize.width);
    print(width);
    print(pixelRatio);
    return MaterialApp(
      home: BlocProvider<MoviesBloc>(
        create: (_) => MoviesBloc()..add(MoviesEvent.initializing),
        child: isScaled
            ? ScaleWidget(
                child: screen,
              )
            : screen,
      ),
    );
  }
}
