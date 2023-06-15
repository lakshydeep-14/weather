import '../configs/extenstion.dart';

class SearchTextField extends StatefulWidget {
  final TextEditingController controller;

  const SearchTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        scrollPadding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).viewInsets.bottom + 20),
        controller: widget.controller,
        decoration: InputDecoration(
          errorStyle: const TextStyle(height: 0.1, fontSize: 8),
          errorMaxLines: 2,
          fillColor: AppColors.white.withOpacity(0.14),
          filled: true,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          prefixIcon: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0).copyWith(left: 20),
            child: const Icon(
              Icons.search,
              color: AppColors.white,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          hintText: 'Search for places',
          hintStyle: context.text.headline3!.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.white,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 1),
        ),
        style: context.text.headline5!.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
    );
  }
}
