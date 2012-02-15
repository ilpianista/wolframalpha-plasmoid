/*
 *   Copyright 2012 Andrea Scarpino <andrea@archlinux.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 1.1
import org.kde.plasma.components 0.1 as PlasmaComponents
 
Item {
    property int minimumWidth: 300
    property int minimumHeight: 100

    Column {
        id: column
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter

        Row {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            
            Image {
                id: icon
                width: 32; height: 32
                smooth: true
                source: "../images/wolframalpha.png"
            }

            Text {
                color: theme.textColor
                text: "Wolfram Alpha"
                font.pixelSize: 20
                anchors.verticalCenter: icon.verticalCenter
            }
        }

        Row {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            PlasmaComponents.TextField {
                id: text
                width: 200
                placeholderText: "Type something"
            }

            PlasmaComponents.Button {
                id: button
                width: 50
                text: "Go"

                onClicked: {
                    console.log("opening wolfram alpha website")
                    Qt.openUrlExternally('http://www.wolframalpha.com/input/?i=' + text.text)
                }
            }
        }
    }
    
    Column {
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: column.bottom
        
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            
            PlasmaComponents.Button {
                property bool show: false
                
                id: expand
                width: 100
                text: "Expand"
                
                onClicked: {
                    if ( show == false) {
                        console.log("show extra symbols")
                        keyboard.visible = true
                        show = true
                    } else {
                        console.log("hide extra symbols")
                        keyboard.visible = false
                        show = false
                    }
                }
            }
        }
        
        Row {
            id: keyboard
            visible: false
            anchors.horizontalCenter: parent.horizontalCenter 
            
            Grid {
                columns: 10
                spacing: 2
                
                PlasmaComponents.Button { width: 20; text: "√"; onClicked: { text.text = text.text + "√" } }
                PlasmaComponents.Button { width: 20; text: "∛"; onClicked: { text.text = text.text + "∛" } }
                PlasmaComponents.Button { width: 20; text: "∞"; onClicked: { text.text = text.text + "∞" } }
                PlasmaComponents.Button { width: 20; text: "∑"; onClicked: { text.text = text.text + "∑" } }
                PlasmaComponents.Button { width: 20; text: "∫"; onClicked: { text.text = text.text + "∫" } }
                PlasmaComponents.Button { width: 20; text: "Θ"; onClicked: { text.text = text.text + "Θ" } }
                PlasmaComponents.Button { width: 20; text: "π"; onClicked: { text.text = text.text + "π" } }
                PlasmaComponents.Button { width: 20; text: "α"; onClicked: { text.text = text.text + "α" } }
                PlasmaComponents.Button { width: 20; text: "β"; onClicked: { text.text = text.text + "β" } }
                PlasmaComponents.Button { width: 20; text: "γ"; onClicked: { text.text = text.text + "γ" } }
                PlasmaComponents.Button { width: 20; text: "δ"; onClicked: { text.text = text.text + "δ" } }
                PlasmaComponents.Button { width: 20; text: "ε"; onClicked: { text.text = text.text + "ε" } }
                PlasmaComponents.Button { width: 20; text: "μ"; onClicked: { text.text = text.text + "μ" } }
                PlasmaComponents.Button { width: 20; text: "ω"; onClicked: { text.text = text.text + "ω" } }
                PlasmaComponents.Button { width: 20; text: "Ω"; onClicked: { text.text = text.text + "Ω" } }
                PlasmaComponents.Button { width: 20; text: "∀"; onClicked: { text.text = text.text + "∀" } }
                PlasmaComponents.Button { width: 20; text: "∃"; onClicked: { text.text = text.text + "∃" } }
                PlasmaComponents.Button { width: 20; text: "∅"; onClicked: { text.text = text.text + "∅" } }
                PlasmaComponents.Button { width: 20; text: "∪"; onClicked: { text.text = text.text + "∪" } }
                PlasmaComponents.Button { width: 20; text: "∩"; onClicked: { text.text = text.text + "∩" } }
            }
        }
    }
}
