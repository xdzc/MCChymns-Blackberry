# Config.pri file version 2.0. Auto-generated by IDE. Any changes made by user will be lost!
BASEDIR = $$quote($$_PRO_FILE_PWD_)

device {
    CONFIG(debug, debug|release) {
        profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        } else {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }

    }

    CONFIG(release, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

simulator {
    CONFIG(debug, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

config_pri_assets {
    OTHER_FILES += \
        $$quote($$BASEDIR/assets/About.qml) \
        $$quote($$BASEDIR/assets/CustomButton.qml) \
        $$quote($$BASEDIR/assets/Dividr.qml) \
        $$quote($$BASEDIR/assets/FontStyleDefinition.qml) \
        $$quote($$BASEDIR/assets/GotoHymnDialog.qml) \
        $$quote($$BASEDIR/assets/Settings.qml) \
        $$quote($$BASEDIR/assets/SortByDialog.qml) \
        $$quote($$BASEDIR/assets/Stanza.qml) \
        $$quote($$BASEDIR/assets/colors.xml) \
        $$quote($$BASEDIR/assets/data.xml) \
        $$quote($$BASEDIR/assets/favoritesList.qml) \
        $$quote($$BASEDIR/assets/hymnView.qml) \
        $$quote($$BASEDIR/assets/hymnsList.qml) \
        $$quote($$BASEDIR/assets/images/ic_action_clear.png) \
        $$quote($$BASEDIR/assets/images/ic_action_favorite_off.png) \
        $$quote($$BASEDIR/assets/images/ic_action_favorite_on.png) \
        $$quote($$BASEDIR/assets/images/ic_delete.png) \
        $$quote($$BASEDIR/assets/images/ic_delete_prior.png) \
        $$quote($$BASEDIR/assets/images/ic_feedback.png) \
        $$quote($$BASEDIR/assets/images/ic_hymn_gray.png) \
        $$quote($$BASEDIR/assets/images/ic_hymns.png) \
        $$quote($$BASEDIR/assets/images/ic_info.png) \
        $$quote($$BASEDIR/assets/images/ic_search.png) \
        $$quote($$BASEDIR/assets/images/ic_settings.png) \
        $$quote($$BASEDIR/assets/images/ic_show_dialpad.png) \
        $$quote($$BASEDIR/assets/images/ic_sort.png) \
        $$quote($$BASEDIR/assets/images/icon.png) \
        $$quote($$BASEDIR/assets/images/paper_texture.amd) \
        $$quote($$BASEDIR/assets/images/paper_texture.png) \
        $$quote($$BASEDIR/assets/main.qml) \
        $$quote($$BASEDIR/assets/sql/MCCHymns.db)
}

config_pri_source_group1 {
    SOURCES += \
        $$quote($$BASEDIR/src/AppSettings.cpp) \
        $$quote($$BASEDIR/src/applicationui.cpp) \
        $$quote($$BASEDIR/src/main.cpp)

    HEADERS += \
        $$quote($$BASEDIR/src/AppSettings.hpp) \
        $$quote($$BASEDIR/src/applicationui.hpp)
}

INCLUDEPATH += $$quote($$BASEDIR/src)

CONFIG += precompile_header

PRECOMPILED_HEADER = $$quote($$BASEDIR/precompiled.h)

lupdate_inclusion {
    SOURCES += \
        $$quote($$BASEDIR/../src/*.c) \
        $$quote($$BASEDIR/../src/*.c++) \
        $$quote($$BASEDIR/../src/*.cc) \
        $$quote($$BASEDIR/../src/*.cpp) \
        $$quote($$BASEDIR/../src/*.cxx) \
        $$quote($$BASEDIR/../assets/*.qml) \
        $$quote($$BASEDIR/../assets/*.js) \
        $$quote($$BASEDIR/../assets/*.qs) \
        $$quote($$BASEDIR/../assets/images/*.qml) \
        $$quote($$BASEDIR/../assets/images/*.js) \
        $$quote($$BASEDIR/../assets/images/*.qs) \
        $$quote($$BASEDIR/../assets/sql/*.qml) \
        $$quote($$BASEDIR/../assets/sql/*.js) \
        $$quote($$BASEDIR/../assets/sql/*.qs)

    HEADERS += \
        $$quote($$BASEDIR/../src/*.h) \
        $$quote($$BASEDIR/../src/*.h++) \
        $$quote($$BASEDIR/../src/*.hh) \
        $$quote($$BASEDIR/../src/*.hpp) \
        $$quote($$BASEDIR/../src/*.hxx)
}

TRANSLATIONS = $$quote($${TARGET}.ts)
