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

8. Original Exposure 0.50.xmp file<br>
`<x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core 5.6-c140 79.160451, 2017/05/06-01:08:21        ">
 <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about=""
    xmlns:crs="http://ns.adobe.com/camera-raw-settings/1.0/"
   crs:PresetType="Normal"
   crs:Cluster=""
   crs:UUID="41AE3A89A1C9A8429C7CE3F3B1A21FCD"
   crs:SupportsAmount="False"
   crs:SupportsColor="True"
   crs:SupportsMonochrome="True"
   crs:SupportsHighDynamicRange="True"
   crs:SupportsNormalDynamicRange="True"
   crs:SupportsSceneReferred="True"
   crs:SupportsOutputReferred="True"
   crs:CameraModelRestriction=""
   crs:Copyright=""
   crs:ContactInfo=""
   crs:Version="13.0"
   crs:ProcessVersion="11.0"
   crs:Exposure2012="+0.50"
   crs:HasSettings="True">
   <crs:Name>
    <rdf:Alt>
     <rdf:li xml:lang="x-default">Exposure 0.50</rdf:li>
    </rdf:Alt>
   </crs:Name>
   <crs:ShortName>
    <rdf:Alt>
     <rdf:li xml:lang="x-default"/>
    </rdf:Alt>
   </crs:ShortName>
   <crs:SortName>
    <rdf:Alt>
     <rdf:li xml:lang="x-default"/>
    </rdf:Alt>
   </crs:SortName>
   <crs:Group>
    <rdf:Alt>
     <rdf:li xml:lang="x-default">Relative presets</rdf:li>
    </rdf:Alt>
   </crs:Group>
   <crs:Description>
    <rdf:Alt>
     <rdf:li xml:lang="x-default"/>
    </rdf:Alt>
   </crs:Description>
  </rdf:Description>
 </rdf:RDF>
</x:xmpmeta>
`

9. Printing the preset contents<br>
`
10/24/2020 15:20:55 INFO	Preset settings 	 {
  EnableCalibration = false,
  EnableCircularGradientBasedCorrections = false,
  EnableColorAdjustments = false,
  EnableDetail = false,
  EnableEffects = false,
  EnableGradientBasedCorrections = false,
  EnableGrayscaleMix = false,
  EnableLensCorrections = false,
  EnablePaintBasedCorrections = false,
  EnableRedEye = false,
  EnableRetouch = false,
  EnableSplitToning = false,
  EnableToneCurve = false,
  EnableTransform = false,
  Exposure2012 = 0.5,
  ProcessVersion = "11.0",
  Version = "13.0"
}
`