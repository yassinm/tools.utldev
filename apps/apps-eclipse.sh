#/bin/bash

UTLAPPS_eclipse_init(){
   alias eclipse-luna='UTLAPPS_eclipse_luna'
   alias eclipse-mars='UTLAPPS_eclipse_mars'
}

UTLAPPS_eclipse_env(){
   export ECLIPSE_ROOT="${UTL3RDP_APPS}/eclipse"
   export ECLIPSE_MARS="${ECLIPSE_ROOT}/eclipse-java-mars-1"

   #export GTK_RC_FILES=$GTK_RC_FILES:$ECLIPSE_LUNA_GTK
   #export GTK2_RC_FILES=$GTK2_RC_FILES:$ECLIPSE_LUNA_GTK

   #ECLIPSE_LUNA_GTK="${ECLIPSE_ROOT}/eclipse.luna.gtk"
   #ECLIPSE_LUNA="${ECLIPSE_ROOT}/eclipse-java-luna-SR1-linux-gtk-x86_64"

}

UTLAPPS_eclipse_luna(){
   UTLAPPS_eclipse_env
   ${ECLIPSE_LUNA}/eclipse
}

UTLAPPS_eclipse_mars(){
   UTLAPPS_eclipse_env
   ${ECLIPSE_MARS}/eclipse
}

UTLAPPS_eclipse_lunagtk(){
   UTLAPPS_eclipse_env
cat <<EOF> ${ECLIPSE_LUNA_GTK}
   style "compact" {
      GtkButton::default_border={10,10,10,10}
      GtkButton::default_outside_border={10,10,10,10}
      GtkButtonBox::child_min_width=0
      GtkButtonBox::child_min_heigth=0
      GtkButtonBox::child_internal_pad_x=0
      GtkButtonBox::child_internal_pad_y=0
      GtkMenu::vertical-padding=1
      GtkMenuBar::internal_padding=1
      GtkMenuItem::horizontal_padding=4
      GtkToolbar::internal-padding=1
      GtkToolbar::space-size=1
      GtkOptionMenu::indicator_size=0
      GtkOptionMenu::indicator_spacing=0
      GtkPaned::handle_size=4
      GtkRange::trough_border=0
      GtkRange::stepper_spacing=0
      GtkScale::value_spacing=0
      GtkScrolledWindow::scrollbar_spacing=0
      GtkExpander::expander_size=10
      GtkExpander::expander_spacing=0
      GtkTreeView::vertical-separator=0
      GtkTreeView::horizontal-separator=0
      GtkTreeView::expander-size=12
      GtkTreeView::fixed-height-mode=TRUE
      GtkWidget::focus_padding=0

      font_name="Liberation Sans,Sans Regular 14"
      text[SELECTED] = @selected_text_color
   }

   class "GtkWidget" style "compact"

   style "compact2" {
      xthickness=1
      ythickness=1
   }

   class "GtkButton" style "compact"
   class "GtkToolbar" style "compact"
   class "GtkPaned" style "compact"

EOF
}
