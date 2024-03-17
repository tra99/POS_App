import 'package:flutter/material.dart';
import 'package:flutter_slide_drawer/flutter_slide_widget.dart';

class App extends StatefulWidget {
  final BuildContext parentContext;
  App({Key? key, required this.parentContext}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final GlobalKey<SliderDrawerWidgetState> drawerKey = GlobalKey();

  bool toggleBackgroundState = false;

  void toggleBackgroundImage() {
    setState(() {
      toggleBackgroundState = !toggleBackgroundState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliderDrawerWidget(
      key: drawerKey,
      option: SliderDrawerOption(
        backgroundImage: toggleBackgroundState
            ? Image.asset("assets/sample_background.jpg")
            : Image.asset("assets/sample_background2.jpg"),
        backgroundColor: Colors.black,
        sliderEffectType: SliderEffectType.Rounded,
        upDownScaleAmount: 100,
        radiusAmount: 20,
        direction: SliderDrawerDirection.LTR,
      ),
      drawer: CustomDrawer(parentContext: widget.parentContext),
      body: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              drawerKey.currentState!.toggleDrawer();
            },
            child: const Icon(Icons.menu),
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "lib/images/logo_app_bar.jpg",
                width: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "ប្រព័ន្ធគ្រប់គ្រងការលក់",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                drawerKey.currentState!.toggleDrawer();
              },
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: toggleBackgroundImage,
                  child: const Text('Change Drawer Background'),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: List.generate(
                      100,
                      (index) => Container(
                        padding: const EdgeInsets.all(15),
                        child: Text("$index Contents "),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  final BuildContext parentContext;

  const CustomDrawer({Key? key, required this.parentContext}) : super(key: key);

  Widget _thumbnailPart() {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: CircleAvatar(
            backgroundImage:
                Image.asset("assets/default_user.png", fit: BoxFit.contain)
                    .image,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Sudarlife",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  "Boys, be ambitious",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget get _line => Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        height: 1,
        color: Colors.white.withOpacity(0.2),
      );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Drawer Header",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(parentContext).pop();
                    },
                    icon: Icon(Icons.close, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _thumbnailPart(),
                const SizedBox(height: 20),
                _line,
                const MenuBox(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                  icon: Icon(
                    Icons.add_chart,
                    color: Colors.white,
                  ),
                  menu: Text(
                    "Chart",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const MenuBox(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                  icon: Icon(
                    Icons.add_to_photos_outlined,
                    color: Colors.white,
                  ),
                  menu: Text(
                    "Photos",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const MenuBox(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                  icon: Icon(
                    Icons.announcement_rounded,
                    color: Colors.white,
                  ),
                  menu: Text(
                    "Service center",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const MenuBox(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  menu: Text(
                    "Setting",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MenuBox extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget? icon;
  final Widget menu;
  final Function()? onTap;
  const MenuBox({
    Key? key,
    required this.menu,
    this.padding = const EdgeInsets.all(10),
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          this.onTap!();
        }
      },
      child: Container(
        padding: padding,
        child: Row(
          children: [
            icon != null ? icon! : Container(),
            const SizedBox(width: 15),
            menu,
          ],
        ),
      ),
    );
  }
}
