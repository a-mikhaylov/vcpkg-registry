vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO a-mikhaylov/my-c-lib
    REF 2105b76
    SHA512 a8adf31496f4a2a9d82a43b178cc4bef001cf849c5283fbeea51b88e9a23514036ddaaea5a95b1d0bcfb23d1d8d3037037e781567f7060888bf22b1cd221c148    
    HEAD_REF main
)

set(VCPKG_POLICY_DLLS_WITHOUT_LIBS enabled)
set(VCPKG_POLICY_DLLS_WITHOUT_EXPORTS enabled)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/mycpplibtest" RENAME copyright)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")