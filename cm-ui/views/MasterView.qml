import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Connections{
        target: masterController.navigationController
        onGoCreateClientView: contentFrame.replace("qrc:/views/CreateClientView.qml")
        onGoDashboardView: contentFrame.replace("qrc:/views/DashboardView.qml")
        onGoFindClientView: contentFrame.replace("qrc:/views/FindClientView.qml")
        onGoEditClientView: contentFrame.replace("qrc:/views/EditClientView.qml", {selectedClient: client})
    }

    StackView{
        id: contentFrame
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/views/SplashView.qml")
        clip: true

        anchors{
            top: parent.top
            bottom: parent.bottom
            left: parent.left
            right: navigationBar.right
        }
    }

    Component.onCompleted: {
        contentFrame.replace("qrc:/views/DashboardView.qml")
    }


    Rectangle{
        id: navigationBar
        anchors{
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
        width: 100
        color: "#000000"

        Column{
            Button{
                text: "Dashboard"
                onClicked: masterController.navigationController.goDashboardView()
            }

            Button{
                text: qsTr("New Client")
                onClicked: masterController.navigationController.goCreateClientView()
            }

            Button{
                text: qsTr("Find Client")
                onClicked: masterController.navigationController.goFindClientView()
            }

        }
    }
}
