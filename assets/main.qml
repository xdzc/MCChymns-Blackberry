/*
 * Copyright (c) 2011-2015 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.4

TabbedPane {
    id: tappedPane
    showTabsOnActionBar: false
    
    Menu.definition: MenuDefinition {
        helpAction: HelpActionItem {
            title: "About"
            imageSource: "asset:///images/ic_action_bulb.png"
        }
        
        settingsAction: SettingsActionItem {
            imageSource: "asset:///images/ic_action_sliders.png"
        }
        
        actions: [
            ActionItem {
                title: qsTr("Feedback") + Retranslate.onLocaleOrLanguageChanged
                ActionBar.placement: ActionBarPlacement.OnBar
                imageSource: "asset:///images/ic_feedback.png"
            }
        ]
    }
    
    Tab {
        id: hymnsList
        title: qsTr("MCCHymns") + Retranslate.onLocaleOrLanguageChanged
        imageSource: "asset:///images/ic_action_queue_music.png"
        
        delegate: Delegate {
            id: hymnsDelegate
            source: "hymnsList.qml"
        }
        delegateActivationPolicy: TabDelegateActivationPolicy.Default
    }
    
    Tab {
        id: favoritesList
        title: qsTr("Favorites") + Retranslate.onLocaleOrLanguageChanged
        imageSource: "asset:///images/ic_action_badge.png"
        
        delegate: Delegate {
            id: favoritesDelegate
            source: "favoritesList.qml"
        }
        delegateActivationPolicy: TabDelegateActivationPolicy.Default
    }
    
    Tab {
        id: settings
        title: qsTr("Settings") + Retranslate.onLocaleOrLanguageChanged
        imageSource: "asset:///images/ic_action_sliders.png"
        
        delegate: Delegate {
            id: settingsDelegate
            source: "settings.qml"
        }
        delegateActivationPolicy: TabDelegateActivationPolicy.Default
    }
    
    Tab {
        id: about
        title: qsTr("About") + Retranslate.onLocaleOrLanguageChanged
        imageSource: "asset:///images/ic_action_bulb.png"
        
        delegate: Delegate {
            id: aboutDelegate
            source: "about.qml"
        }
        delegateActivationPolicy: TabDelegateActivationPolicy.Default
    }
    
    onActiveTabChanged: {
        
    }
}
