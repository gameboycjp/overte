set(SOURCE_VERSION 1.13)

vcpkg_download_distfile(HEADER
        URLS "https://github.com/jkuhlmann/cgltf/raw/v${SOURCE_VERSION}/cgltf.h"
        FILENAME "cgltf-${SOURCE_VERSION}.h"
        SHA512 b03a05cd4b6c53ae58e60a99f47ab920840f02d119603a6d3ffd3a1409b7631d8b2514d4669fe3a46ed7158bef98002dcb5bcbf7afe9b1a3664942cc3eee9f6f
        )

vcpkg_download_distfile(LICENSE
        URLS "https://github.com/jkuhlmann/cgltf/raw/v${SOURCE_VERSION}/LICENSE"
        FILENAME "cgltf-LICENSE-${SOURCE_VERSION}.txt"
        SHA512 ab6a8f05ad34103fa4ec7b96d59c8f31515a2ba0698ad0c6663430bc3ebfb69f66732ba9ecc6432eca115968d23472cb18474b40716ed6e6dd66c55f7893b748
        )

file(INSTALL ${HEADER} DESTINATION ${CURRENT_PACKAGES_DIR}/include/cgltf RENAME cgltf.h)
file(INSTALL ${LICENSE} DESTINATION ${CURRENT_PACKAGES_DIR}/share/cgltf RENAME copyright)
