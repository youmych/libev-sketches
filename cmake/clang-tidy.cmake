find_program(
  CLANG_TIDY_EXE
  NAMES "clang-tidy" "clang-tidy-8" "clang-tidy-9"
  DOC "Path to clang-tidy executable"
  )
if(NOT CLANG_TIDY_EXE)
  message(STATUS "clang-tidy not found.")
else()
  message(STATUS "clang-tidy found: ${CLANG_TIDY_EXE}")
  set(DO_CLANG_TIDY "${CLANG_TIDY_EXE};--quiet;--header-filter='${CMAKE_CURRENT_SOURCE_DIR}/libidip/*|${CMAKE_CURRENT_SOURCE_DIR}/examples/*'")
endif()
