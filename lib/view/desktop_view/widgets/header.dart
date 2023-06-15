import 'package:fatdog/core/configs/extenstion.dart';
import '../../../core/widgets/logo_wid.dart';
import '../../../core/widgets/search_texfield.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return context.deviceWidth > 450
        ? Row(
            children: [
              const LogoWidget(),
              const Spacer(),
              SizedBox(
                width: context.deviceWidth * 0.4,
                child: SearchTextField(
                  controller: TextEditingController(),
                ),
              ),
              const Spacer(),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogoWidget(),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: context.deviceWidth,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SearchTextField(
                  controller: TextEditingController(),
                ),
              ),
            ],
          );
  }
}
