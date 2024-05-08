vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO a-mikhaylov/my-c-lib
    REF 66cc8d2
    SHA512 edc6376e605ca13602dc39a78db52772a830f01d830e025e7a6f37c7ff815419f03a9a1007b09dcc32b2f95f9ce34c1345775898412479f768b73c93b5440f3b    
    HEAD_REF main
)

# set(VCPKG_POLICY_DLLS_WITHOUT_LIBS enabled)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/mycpplibtest" RENAME copyright)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")