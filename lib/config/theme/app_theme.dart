import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        // ═══════════════════════════════════════════════════════════
        // 1. SISTEMA DE COLORES
        // ═══════════════════════════════════════════════════════════
        primaryColor: const Color(0xFF007AFF),
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),

        colorScheme: const ColorScheme.light(
          primary: Color(0xFF007AFF),
          secondary: Color(0xFF1A1A1A),
          surface: Colors.white,
          background: Color(0xFFFAFAFA),
          error: Color(0xFFFF3B30),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Color(0xFF1A1A1A),
          onBackground: Color(0xFF1A1A1A),
        ),

        // ═══════════════════════════════════════════════════════════
        // 2. TIPOGRAFÍA
        // ═══════════════════════════════════════════════════════════
        textTheme: const TextTheme(
          // Títulos
          headlineLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1A1A1A),
            letterSpacing: -0.5,
          ),
          headlineMedium: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1A1A1A),
            letterSpacing: -0.5,
          ),
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A1A1A),
          ),

          // Cuerpo
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF424242),
          ),
          bodyMedium: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xFF424242),
          ),
          bodySmall: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Color(0xFF757575),
          ),

          // Labels
          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF424242),
            letterSpacing: 0.5,
          ),
          labelMedium: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color(0xFF424242),
          ),
        ),

        // ═══════════════════════════════════════════════════════════
        // 3. BOTONES ELEVADOS (Primarios)
        // ═══════════════════════════════════════════════════════════
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1A1A1A),
            foregroundColor: Colors.white,
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ),

        // ═══════════════════════════════════════════════════════════
        // 4. BOTONES DE TEXTO
        // ═══════════════════════════════════════════════════════════
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF007AFF),
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // ═══════════════════════════════════════════════════════════
        // 5. BOTONES OUTLINED (Secundarios)
        // ═══════════════════════════════════════════════════════════
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color(0xFF1A1A1A),
            side: const BorderSide(color: Color(0xFFE0E0E0), width: 1),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ),

        // ═══════════════════════════════════════════════════════════
        // 6. CAMPOS DE TEXTO (TextFormField)
        // ═══════════════════════════════════════════════════════════
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),

          // Bordes
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF007AFF), width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFFF3B30), width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFFF3B30), width: 2),
          ),

          // Estilos de texto
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Color(0xFFBDBDBD),
          ),
          labelStyle: const TextStyle(
            fontSize: 15,
            color: Color(0xFF757575),
          ),

          // Iconos
          prefixIconColor: const Color(0xFF9E9E9E),
          suffixIconColor: const Color(0xFF9E9E9E),
        ),

        // ═══════════════════════════════════════════════════════════
        // 7. CARDS
        // ═══════════════════════════════════════════════════════════
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFE0E0E0), width: 1),
          ),
          margin: const EdgeInsets.all(8),
        ),

        // ═══════════════════════════════════════════════════════════
        // 8. DIVIDERS
        // ═══════════════════════════════════════════════════════════
        dividerTheme: const DividerThemeData(
          color: Color(0xFFE0E0E0),
          thickness: 1,
          space: 1,
        ),

        // ═══════════════════════════════════════════════════════════
        // 9. APP BAR
        // ═══════════════════════════════════════════════════════════
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF1A1A1A),
          elevation: 0,
          centerTitle: false,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A1A1A),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFF1A1A1A),
            size: 24,
          ),
        ),

        // ═══════════════════════════════════════════════════════════
        // 10. BOTTOM NAVIGATION BAR
        // ═══════════════════════════════════════════════════════════
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF007AFF),
          unselectedItemColor: Color(0xFF9E9E9E),
          type: BottomNavigationBarType.fixed,
          elevation: 8,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),

        // ═══════════════════════════════════════════════════════════
        // 11. SNACKBAR
        // ═══════════════════════════════════════════════════════════
        snackBarTheme: SnackBarThemeData(
          backgroundColor: const Color(0xFF1A1A1A),
          contentTextStyle: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        // ═══════════════════════════════════════════════════════════
        // 12. DIALOG
        // ═══════════════════════════════════════════════════════════
        dialogTheme: DialogThemeData(
          backgroundColor: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A1A1A),
          ),
          contentTextStyle: const TextStyle(
            fontSize: 15,
            color: Color(0xFF424242),
          ),
        ),

        // ═══════════════════════════════════════════════════════════
        // 13. ICONOS
        // ═══════════════════════════════════════════════════════════
        iconTheme: const IconThemeData(
          color: Color(0xFF424242),
          size: 24,
        ),

        // ═══════════════════════════════════════════════════════════
        // 14. OTRAS CONFIGURACIONES
        // ═══════════════════════════════════════════════════════════
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
