AC_DEFUN([BANSHEE_CHECK_GTK_SHARP],
[
	GTKSHARP3_REQUIRED=2.99

	PKG_CHECK_MODULES(GLIBSHARP, glib-sharp-3.0 >= $GTKSHARP3_REQUIRED)
	PKG_CHECK_MODULES(GTKSHARP, gtk-sharp-3.0 >= GTKSHARP3_REQUIRED)

	gtk_sharp_version=$(pkg-config --modversion gtk-sharp-3.0)

	AC_SUBST(GLIBSHARP_LIBS)
	AC_SUBST(GTKSHARP_LIBS)
])
