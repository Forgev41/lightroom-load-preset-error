# lightroom-load-preset-error
This little Lightroom plug-in demonstrates an error while reading an existing preset (disables settings)

Steps to reproduce:
1. Select a photo that has no edits
2. Set exposure to 0.5
3. Create a preset from these settings by clicking the "+"

![Create preset](https://i.imgur.com/yArbmg4.png)

When saving, deselect all settings execpt the Exposure"
![Check None - except Exposure](https://i.imgur.com/2m3Vah9.png)

4. Give the preset the name "Exposure 0.50".
5. Add to the photo some local adjustment
<br>Notice: by default all the settings panels are active / turned on!

![Original with local adjustment](https://i.imgur.com/sSwtdX0.png)

6. Run the plug-in
7. Check that all the panels are set to false
<br>See that all the settings panels have been turned off

![After running plugin](https://i.imgur.com/a2OlH0G.png)

Also the local adjustment seems to have been disappeared, however also this setting has been turned off

![Local adjustments panels set to false](https://i.imgur.com/gemcM40.png)
