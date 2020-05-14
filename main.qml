import QtQuick 2.12
import QtQuick.Window 2.12
import QtCharts 2.3
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ColumnLayout{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.fill: parent

        ChartView {
            id: line
            backgroundColor: "transparent"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Image{
                id: image2
                anchors.fill: line
                source: "qrc:/image/Image.jpg"
                opacity: 0.5

            }

            LineSeries {
                name: "LineSeries"
                XYPoint {
                    x: 0
                    y: 2
                }

                XYPoint {
                    x: 1
                    y: 1.2
                }

                XYPoint {
                    x: 2
                    y: 3.3
                }

                XYPoint {
                    x: 5
                    y: 2.1
                }
            }




        }

        RowLayout{
            Button{
                text: "Button 1"
                Layout.fillWidth: true

            }

            Button{
                text: "Button 2"
                Layout.fillWidth: true
            }
        }





    }
}
