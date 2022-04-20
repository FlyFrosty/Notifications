import Toybox.Application;
import Toybox.WatchUi;

class NotificationsApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() {
        return [ new NotificationsView() ];
    }

    function onSettingsChanged() {
        WatchUi.requestUpdate();
        System.println("App changed");
    }
}

function getApp() as NotificationsApp {
    return Application.getApp() as NotificationsApp;
}