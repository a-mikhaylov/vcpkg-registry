vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO a-mikhaylov/my-c-lib
    REF 5f55757
    SHA512 fbdded5c275bb9947eac6d164c17e13fffdbd193e50f99fa0f620fa90d6a8874d82126250c8d034983fbefd27fd30276d9b9a3abd87e183d24f0413feb19a920    
    HEAD_REF main
)

set(VCPKG_POLICY_DLLS_WITHOUT_LIBS enabled)
set(VCPKG_POLICY_DLLS_WITHOUT_EXPORTS enabled)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/mycpplibtest" RENAME copyright)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")