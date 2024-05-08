vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO a-mikhaylov/my-c-lib
    REF 6a773da3a292b1cd598d77824d3517fd1c8039a4
    SHA512 7976d84915e687df45bdd097e859f6a5c0a93a287f2f41a5e1f93b61c0289d160d746ea85a922c648514878973e20165fd94b7bd62682956f6dd89710ab6e60e
    HEAD_REF main
)

set(VCPKG_POLICY_DLLS_WITHOUT_LIBS enabled)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
    PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/mycpplibtest" RENAME copyright)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/lib" "${CURRENT_PACKAGES_DIR}/lib")