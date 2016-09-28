FUNCTION(ff_install_package LIBRARY_NAME)
    
    INCLUDE(ExternalProject)

    IF(NOT FF_DOWNLOAD_DIR)
        SET(FF_DOWNLOAD_DIR ${CMAKE_SOURCE_DIR}/download)
    ENDIF(NOT FF_DOWNLOAD_DIR)
    
    INCLUDE(Install${LIBRARY_NAME})

    STRING(TOLOWER ${LIBRARY_NAME} LIBRARY_LOWERNAME)
    STRING(TOUPPER ${LIBRARY_NAME} LIBRARY_UPPERNAME)

    SET(${LIBRARY_UPPERNAME}_PREFIX ${FF_DOWNLOAD_DIR}/${LIBRARY_LOWERNAME} )
    SET(${LIBRARY_UPPERNAME}_DOWNLOAD_DIR ${${LIBRARY_UPPERNAME}_PREFIX}/download)
    SET(${LIBRARY_UPPERNAME}_SOURCE_DIR ${${LIBRARY_UPPERNAME}_PREFIX}/src)
    SET(${LIBRARY_UPPERNAME}_BINARY_DIR ${${LIBRARY_UPPERNAME}_PREFIX}/build)
    SET(${LIBRARY_UPPERNAME}_TMP_DIR ${${LIBRARY_UPPERNAME}_PREFIX}/tmp)
    SET(${LIBRARY_UPPERNAME}_STAMP_DIR ${${LIBRARY_UPPERNAME}_PREFIX}/stamp)
    SET(${LIBRARY_UPPERNAME}_INSTALL_DIR ${${LIBRARY_UPPERNAME}_PREFIX}/install)

    EXTERNALPROJECT_ADD(${LIBRARY_LOWERNAME}
                    PREFIX ${${LIBRARY_UPPERNAME}_PREFIX}
                    DOWNLOAD_DIR ${${LIBRARY_UPPERNAME}_DOWNLOAD_DIR}
                    SOURCE_DIR ${${LIBRARY_UPPERNAME}_SOURCE_DIR}
                    BINARY_DIR ${${LIBRARY_UPPERNAME}_BINARY_DIR}
                    TMP_DIR ${${LIBRARY_UPPERNAME}_TMP_DIR}
                    STAMP_DIR ${${LIBRARY_UPPERNAME}_STAMP_DIR}
                    INSTALL_DIR ${${LIBRARY_UPPERNAME}_INSTALL_DIR}
                    URL ${URL}
                    URL_MD5 ${URL_MD5}
                    CMAKE_ARGS ${CMAKE_ARGS}
                    PATCH_COMMAND ${PATCH_COMMAND}
                    CONFIGURE_COMMAND ${CONFIGURE_COMMAND}
                    BUILD_COMMAND ${BUILD_COMMAND}
                    INSTALL_COMMAND ${INSTALL_COMMAND}
                    LOG_UPDATE 1
                    LOG_TEST 1
                   )
    SET(${LIBRARY_UPPERNAME}_INSTALL_DIR ${${LIBRARY_UPPERNAME}_PREFIX}/install PARENT_SCOPE)



ENDFUNCTION(ff_install_package)
