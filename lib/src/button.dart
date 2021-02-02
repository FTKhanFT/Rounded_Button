part of rounded_button;

class RoundedButton extends StatelessWidget {
  /// Button text [required]
  final String text;

  /// Function that Handle Button Press [required]
  final void Function() onPressed;

  /// Add icon to button
  final Widget icon;

  /// Primary Color of the button [required]
  final Color primaryColor;

  /// Splass color of the button. By default it is [primarycolor].
  final Color splashColor;

  /// Border color of the button. By default it is [primarycolor].
  final Color borderColor;

  /// Text color of the button. By default it is [primarycolor].
  final Color textColor;

  /// Background color of the button. By default it is [scaffoldBackgroundColor].
  final Color backgroundColor;

  /// Text Style of the Button
  final TextStyle textStyle;

  /// Elevation of the button. By default it is [3.5]
  final double elevation;

  /// Button padding inside the Border. By default it is [const EdgeInsets.all(15.0)]
  final EdgeInsetsGeometry padding;

  /// Border Redius of the button
  final BorderRadiusGeometry borderRadius;

  /// Rounded Button
  RoundedButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    @required this.primaryColor,
    this.icon,
    this.borderColor,
    this.textColor,
    this.splashColor,
    this.backgroundColor,
    this.elevation = 3.5,
    this.textStyle,
    this.borderRadius,
    this.padding = const EdgeInsets.all(15.0),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: icon != null
          ? RaisedButton.icon(
              padding: padding,
              splashColor: splashColor != null ? splashColor : primaryColor,
              elevation: elevation,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius != null
                      ? borderRadius
                      : BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: borderColor != null ? borderColor : primaryColor,
                  )),
              textColor: textColor != null ? textColor : primaryColor,
              onPressed: onPressed,
              icon: icon,
              label: Text(
                text,
                style: textStyle,
              ),
              color: backgroundColor != null
                  ? backgroundColor
                  : Theme.of(context).scaffoldBackgroundColor,
            )
          : RaisedButton(
              padding: padding,
              splashColor: splashColor != null ? splashColor : primaryColor,
              elevation: elevation,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius != null
                      ? borderRadius
                      : BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: borderColor != null ? borderColor : primaryColor,
                  )),
              textColor: textColor != null ? textColor : primaryColor,
              onPressed: onPressed,
              child: Text(
                text,
                style: textStyle,
              ),
              color: backgroundColor != null
                  ? backgroundColor
                  : Theme.of(context).scaffoldBackgroundColor,
            ),
    );
  }
}
