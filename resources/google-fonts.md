# Using Google Fonts

Using Google Fonts used to be more intuitive than it seems to be now. This is a super quick primer on how do to it.

1. Go to [Google Fonts](https://fonts.google.com/).
1. Browse or search for a font you want.
1. Click on the font page so you can see all the styles available.
1. Click on the **+ Select this style** link to add the font to your selections.

![fonts-select](../images/fonts-select.png)

Repeat this for all the font and font styles you want, but be selective. Don't choose fonts you won't use, and don't use too many. (Each font increases your page size, slowing down your site.)

Once you have selected all your fonts, if the tray on the right is not open already, click on the box-like icon at the top right to open it.

![fonts-tray](../images/fonts-tray.png)

All your selected fonts will be rolled together into one `<link>` line.

1. Copy the `<link>` line and put it on each HTML page (or template) that will use the fonts.
1. In your CSS, write rules that specify the font as needed.

The "CSS rules to specify families" example in Google Fonts shows you how to write each individual font as part of a style rule. Realize this is just _part_ of the style rule. If you want to apply this Roboto font to all H1 elements, you would write in your CSS like this:

```css
h1 {
  font-family: 'Roboto', sans-serif;
}
```
