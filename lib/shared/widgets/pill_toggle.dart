import 'package:flutter/material.dart';

import '../../core/gofamily_theme.dart';

class PillToggleOption {
  const PillToggleOption({required this.label, required this.value});

  final String label;
  final String value;
}

class PillToggle extends StatelessWidget {
  const PillToggle({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  final List<PillToggleOption> options;
  final String selectedValue;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          for (final option in options) ...[
            Expanded(
              child: _PillToggleItem(
                option: option,
                isSelected: option.value == selectedValue,
                onTap: () => onChanged(option.value),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _PillToggleItem extends StatelessWidget {
  const _PillToggleItem({
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  final PillToggleOption option;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(
          horizontal: GoFamilySpacing.md,
          vertical: GoFamilySpacing.sm,
        ),
        decoration: BoxDecoration(
          color: isSelected ? GoFamilyColors.tealMain : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            option.label,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : GoFamilyColors.tealMain,
            ),
          ),
        ),
      ),
    );
  }
}
