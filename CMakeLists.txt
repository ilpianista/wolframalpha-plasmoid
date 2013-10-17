project(wolframalpha-plasmoid)

find_package(KDE4 "4.8" REQUIRED)

include(KDE4Defaults)
 
install(DIRECTORY package/
        DESTINATION ${DATA_INSTALL_DIR}/plasma/plasmoids/wolframalpha)
 
install(FILES package/metadata.desktop
        DESTINATION ${SERVICES_INSTALL_DIR} RENAME plasma-applet-wolframalpha.desktop)
