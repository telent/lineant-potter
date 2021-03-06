# LineageOS with Micro G and ANT+ support for Moto G5 Plus ("potter")

Although Motorola don't support ANT on this device, the hardware is
capable of it. As far as I can determine, the SoC is a Qualcomm
MSM8953 which contains within it a WCN3680B "wireless connectivity"
IC, which is capable of dualband WiFi, FM radio, Bluetooth and ANT+

This repo contains a script and a suitable manifest and a patch to
build a degoogled phone with ANT+ enabled:

- LineageOS 15.1
- MicroG and F-Droid
- ANT patches and libraries

It works on phones that originally had Nougat (7.0) - it won't work if
your stock ROM was Oreo (8.1). The LineageOS release it's based on
predates stock Oreo, and something changed in the firmware (maybe
related to Treble) between those two versions.  I don't know how to
build a Lineageos 15.1 that works properly with the newer firmware,
but I would gratefully take advice or patches.

(You can, if you dare, flash the older firmware on your phone before
you flash this ROM.  I followed the procedure at
https://forum.xda-developers.com/t/nougat-stock-rom-twrp-flashable-stock-builds.3813351/
and nothing exploded, but don't take that as a recommendation)


# Usage

It depends on the [Docker image](https://github.com/lineageos4microg/docker-lineage-cicd)
created by the [microG Project](https://lineage.microg.org/) so you'll
need Docker to build it. 

    $ bash build.sh

Now wait for a long time. If you want to see how long, it logs its
progress to `logs/potter/lineage-15.1-YYYYMMDD-UNOFFICIAL-potter.log`
(substitute today's date for YYYYMMDD)

When it's done, it will have created a zip in the `zips/potter/` directory which you can install following the instructions at https://lineage.microg.org/

## See also

* https://github.com/ant-wireless/ANT_in_Android
* https://developer.qualcomm.com/download/sd410/wcn3680b-wcn3660b-device-spec.pdf
* https://forum.xda-developers.com/t/ref-which-devices-have-ant-hardware.2879990/page-2


## Future directions

- I am unlikely to add more apps or customise it further

- I may try *removing* some of the bundled apps - there are lots of gallery and
music player apps, there's no point in having one baked in

- I *might* try building a newer Android version, though honestly, probably not
unless/until 8.1 security updates stop being a thing).