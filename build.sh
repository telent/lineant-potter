docker run -it \
    -e "BRANCH_NAME=lineage-15.1" \
    -e "DEVICE_LIST=potter" \
    -e "SIGN_BUILDS=false" \
    -e "SIGNATURE_SPOOFING=restricted" \
    -e "INCLUDE_PROPRIETARY=false" \
    -e "WITH_SU=true" \
    -e "CUSTOM_PACKAGES=GmsCore GsfProxy FakeStore MozillaNlpBackend NominatimNlpBackend com.google.android.maps.jar FDroid FDroidPrivilegedExtension ANTRadioService ANTPlusPluginsService ANTUSBService" \
    -v "/$HOME/src/android/l4mg/lineage:/srv/src" \
    -v "/$HOME/src/android/l4mg/zips:/srv/zips" \
    -v "/$HOME/src/android/l4mg/logs:/srv/logs" \
    -v "/$HOME/src/android/l4mg/cache:/srv/ccache" \
    -v "/$HOME/src/android/l4mg/keys:/srv/keys" \
    -v "/$HOME/src/android/l4mg/userscripts:/srv/userscripts" \
    -v "/$HOME/src/android/l4mg/manifests:/srv/local_manifests" \
    -v "$HOME/src/android/telent:/srv/telent" \
    lineageos4microg/docker-lineage-cicd:latest
