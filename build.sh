CWD=`pwd`
docker run -it \
    -e "BRANCH_NAME=lineage-15.1" \
    -e "DEVICE_LIST=potter" \
    -e "SIGN_BUILDS=false" \
    -e "SIGNATURE_SPOOFING=restricted" \
    -e "INCLUDE_PROPRIETARY=false" \
    -e "WITH_SU=true" \
    -e "CUSTOM_PACKAGES=GmsCore GsfProxy FakeStore MozillaNlpBackend NominatimNlpBackend com.google.android.maps.jar FDroid FDroidPrivilegedExtension ANTRadioService ANTPlusPluginsService ANTUSBService" \
    -v "$CWD/lineage:/srv/src" \
    -v "$CWD/zips:/srv/zips" \
    -v "$CWD/logs:/srv/logs" \
    -v "$CWD/cache:/srv/ccache" \
    -v "$CWD/keys:/srv/keys" \
    -v "$CWD/userscripts:/srv/userscripts" \
    -v "$CWD/manifests:/srv/local_manifests" \
    -v "$HOME/src/android/telent:/srv/telent" \
    lineageos4microg/docker-lineage-cicd:latest
