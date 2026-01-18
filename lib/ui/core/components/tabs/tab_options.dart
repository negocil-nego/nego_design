import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class TabOptions extends StatefulWidget {
  final Function(TabOptionModel model)? onSelected;
  final List<TabOptionModel> items;

  const TabOptions({super.key, this.onSelected, this.items = const []});

  @override
  State<TabOptions> createState() => _TabOptionsState();
}

class _TabOptionsState extends State<TabOptions> {
  List<TabOptionModel> options = [];
  late TabOptionModel selected;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      selected = widget.items.firstWhere((it) => it.selected);
      options = widget.items;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 34,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: colorScheme.outline.withAlpha(100)),
            ),
          ),
          child: ListView.separated(
            itemCount: options.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemBuilder: (context, index) {
              final model = options[index];
              final isSelected = selected == model;

              return InkWell(
                onTap: () {
                  setState(() { selected = model; });
                  if (widget.onSelected != null) widget.onSelected!(model);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.easeInOut,
                      style: TextStyle(
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected ? colorScheme.primary : colorScheme.onSurface,
                        fontSize: 15,
                      ),
                      child: Text(model.text),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      curve: Curves.easeInOut,
                      height: 5,
                      width: isSelected ? 50 : 0,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        if(selected.child != null) ...[
          const SizedBox(height: 20,),
          selected.child!
        ],
      ],
    );
  }
}