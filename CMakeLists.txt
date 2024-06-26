cmake_minimum_required(VERSION 3.27)
project(Staminator LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Quick Multimedia)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/cpp)

qt_standard_project_setup()

qt_add_executable(${PROJECT_NAME}
    "src/cpp/main.cpp" 
    "src/qml/qml.qrc"
    "resources/resources.qrc"
)

qt_policy(
    SET QTP0001 NEW
)

qt6_add_qml_module(${PROJECT_NAME}
    URI "Staminator.CppObjects"
    VERSION 1.0
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE Qt6::Core Qt6::Quick Qt6::Multimedia
)

set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME "StaminatorApp")
