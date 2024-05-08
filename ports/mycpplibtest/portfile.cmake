vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO a-mikhaylov/my-c-lib
    REF ede70b4b376cb4a5cc0c1759282277f69b306332
    SHA512 a3578a9350efb0ba85e7838d4102cfb72c520d38114964a516440b822e4043a4b5867b3e4d4439470012ba6afd52c1d3b5dece2f38e30ea256abd02b802882b0
    HEAD_REF main
)

# set(VCPKG_POLICY_DLLS_WITHOUT_LIBS enabled)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
    PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/mycpplibtest" RENAME copyright)
# file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/lib" "${CURRENT_PACKAGES_DIR}/lib")