.class public final enum Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
.super Ljava/lang/Enum;
.source "StatsLogManager.java"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StatsLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LauncherEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;",
        ">;",
        "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ADD_EXTERNAL_ITEM_BACK:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ADD_EXTERNAL_ITEM_CANCELLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ADD_EXTERNAL_ITEM_DRAGGED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ADD_EXTERNAL_ITEM_START:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ADD_NEW_APPS_TO_HOME_SCREEN_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ADD_NEW_APPS_TO_HOME_SCREEN_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_CLOSE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_CLOSE_TAP_OUTSIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_ENTRY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_ENTRY_WITH_DEVICE_SEARCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_EXIT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_FOCUSED_ITEM_SELECTED_WITH_IME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_ITEM_LONG_PRESSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_KEYBOARD_CLOSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_OPEN_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_QUICK_SEARCH_WITH_IME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_SCROLLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_SEARCHINAPP_LAUNCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_SWIPE_TO_PERSONAL_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_SWIPE_TO_WORK_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_TAP_ON_PERSONAL_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_TAP_ON_WORK_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_VERTICAL_SWIPE_BEGIN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALLAPPS_VERTICAL_SWIPE_END:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALL_APPS_EDU_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALL_APPS_RANKED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LAUNCHER_ALL_APPS_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ALL_APPS_SUGGESTIONS_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_DISMISS_PREDICTION_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_FOLDER_AUTO_LABELED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_FOLDER_CONVERTED_TO_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_FOLDER_LABEL_UPDATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_FOLDER_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GESTURE_TUTORIAL_SKIPPED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GRID_SIZE_2:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GRID_SIZE_3:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GRID_SIZE_4:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GRID_SIZE_5:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_GRID_SIZE_6:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOME_SCREEN_ROTATION_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOME_SCREEN_ROTATION_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOME_SCREEN_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOME_SCREEN_SUGGESTIONS_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOTSEAT_EDU_ACCEPT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOTSEAT_EDU_DENY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOTSEAT_EDU_ONLY_TIP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOTSEAT_EDU_SEEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOTSEAT_PREDICTION_PINNED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_HOTSEAT_RANKED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_DROPPED_ON_CANCEL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_DROPPED_ON_REMOVE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_DROPPED_ON_UNINSTALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_DROP_COMPLETED_ON_FOLDER_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_DROP_FOLDER_CREATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_UNINSTALL_CANCELLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ITEM_UNINSTALL_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_NAVIGATION_MODE_2_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_NAVIGATION_MODE_3_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_NAVIGATION_MODE_GESTURE_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_NOTIFICATION_DISMISSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_NOTIFICATION_DOT_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_NOTIFICATION_DOT_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_NOTIFICATION_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ONRESUME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_ONSTOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_ACTIONS_SCREENSHOT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_ACTIONS_SELECT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_ACTIONS_SHARE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_ACTIONS_SPLIT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_MORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_TARGET:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_MORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_TARGET:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_IMAGE_DRAG:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_IMAGE_INDICATOR_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_IMAGE_LONG_PRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_SHOW_IMAGE_INDICATOR:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_SHOW_URL_INDICATOR:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_IMAGE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_URL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_IMAGE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_URL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_URL_DRAG:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_OVERVIEW_SHARING_URL_INDICATOR_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_QUICKSWITCH_LEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_QUICKSWITCH_RIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SELECT_MODE_CLOSE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SELECT_MODE_IMAGE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SELECT_MODE_ITEM:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SETTINGS_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SLICE_BUTTON_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SLICE_CONTENT_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SLICE_DEFAULT_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SLICE_SEE_MORE_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SLICE_SELECTION_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SLICE_SLIDER_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SLICE_TOGGLE_OFF:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SLICE_TOGGLE_ON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SWIPEDOWN_NAVBAR:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SWIPE_DOWN_WORKSPACE_NOTISHADE_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SYSTEM_SHORTCUT_APP_INFO_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SYSTEM_SHORTCUT_FREE_FORM_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SYSTEM_SHORTCUT_PAUSE_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SYSTEM_SHORTCUT_PIN_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SYSTEM_SHORTCUT_SOMC_FREE_FORM_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SYSTEM_SHORTCUT_SPLIT_SCREEN_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_SYSTEM_SHORTCUT_WIDGETS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_A11Y_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_A11Y_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_ALLAPPS_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_BACK_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_BACK_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_HOME_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_HOME_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_LONGPRESS_HIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_LONGPRESS_SHOW:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASKBAR_OVERVIEW_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASK_CLEAR_ALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASK_DISMISS_SWIPE_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASK_ICON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASK_LAUNCH_SWIPE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASK_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TASK_PREVIEW_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_THEMED_ICON_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_THEMED_ICON_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TURN_OFF_WORK_APPS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_TURN_ON_WORK_APPS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_UNKNOWN_SWIPEDOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_UNKNOWN_SWIPEUP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_WALLPAPER_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_WIDGETSTRAY_APP_EXPANDED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_WIDGETSTRAY_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_WIDGETSTRAY_SEARCHED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_WIDGET_RECONFIGURED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_WIDGET_RESIZE_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_WIDGET_RESIZE_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_WORKSPACE_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public static final enum LAUNCHER_WORKSPACE_SNAPSHOT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 164

    .line 108
    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 110
    new-instance v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v3, "LAUNCHER_APP_LAUNCH_TAP"

    const/4 v4, 0x1

    const/16 v5, 0x152

    invoke-direct {v1, v3, v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 113
    new-instance v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v5, "LAUNCHER_TASK_LAUNCH_TAP"

    const/4 v6, 0x2

    const/16 v7, 0x153

    invoke-direct {v3, v5, v6, v7}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 116
    new-instance v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v7, "LAUNCHER_NOTIFICATION_LAUNCH_TAP"

    const/4 v8, 0x3

    const/16 v9, 0x204

    invoke-direct {v5, v7, v8, v9}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NOTIFICATION_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 119
    new-instance v7, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v9, "LAUNCHER_TASK_LAUNCH_SWIPE_DOWN"

    const/4 v10, 0x4

    const/16 v11, 0x154

    invoke-direct {v7, v9, v10, v11}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_SWIPE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 122
    new-instance v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v11, "LAUNCHER_TASK_DISMISS_SWIPE_UP"

    const/4 v12, 0x5

    const/16 v13, 0x155

    invoke-direct {v9, v11, v12, v13}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_DISMISS_SWIPE_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 125
    new-instance v11, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v13, "LAUNCHER_ITEM_DRAG_STARTED"

    const/4 v14, 0x6

    const/16 v15, 0x17f

    invoke-direct {v11, v13, v14, v15}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 128
    new-instance v13, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_ITEM_DROP_COMPLETED"

    const/4 v14, 0x7

    const/16 v12, 0x181

    invoke-direct {v13, v15, v14, v12}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 132
    new-instance v12, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_ITEM_DROP_COMPLETED_ON_FOLDER_ICON"

    const/16 v14, 0x8

    const/16 v10, 0x2b9

    invoke-direct {v12, v15, v14, v10}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED_ON_FOLDER_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 135
    new-instance v10, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_ITEM_DROP_FOLDER_CREATED"

    const/16 v14, 0x9

    const/16 v8, 0x182

    invoke-direct {v10, v15, v14, v8}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FOLDER_CREATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 139
    new-instance v8, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_FOLDER_AUTO_LABELED"

    const/16 v14, 0xa

    const/16 v6, 0x24f

    invoke-direct {v8, v15, v14, v6}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 142
    new-instance v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY"

    const/16 v14, 0xb

    const/16 v4, 0x250

    invoke-direct {v6, v15, v14, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 145
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS"

    const/16 v14, 0xc

    const/16 v2, 0x251

    invoke-direct {v4, v15, v14, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 148
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_FOLDER_LABEL_UPDATED"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x1cc

    invoke-direct {v2, v15, v14, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_LABEL_UPDATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 151
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_WORKSPACE_LONGPRESS"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x1cd

    invoke-direct {v4, v15, v14, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WORKSPACE_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 154
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_WALLPAPER_BUTTON_TAP_OR_LONGPRESS"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x1ce

    invoke-direct {v2, v15, v14, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WALLPAPER_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 157
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_SETTINGS_BUTTON_TAP_OR_LONGPRESS"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x1cf

    invoke-direct {v4, v15, v14, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SETTINGS_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 160
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_WIDGETSTRAY_BUTTON_TAP_OR_LONGPRESS"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x1d0

    invoke-direct {v2, v15, v14, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 163
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_WIDGETSTRAY_APP_EXPANDED"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x332

    invoke-direct {v4, v15, v14, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_APP_EXPANDED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 166
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_WIDGETSTRAY_SEARCHED"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x333

    invoke-direct {v2, v15, v14, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_SEARCHED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 169
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_ITEM_DROPPED_ON_REMOVE"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x1d1

    invoke-direct {v4, v15, v14, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_REMOVE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 172
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_ITEM_DROPPED_ON_CANCEL"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x1d2

    invoke-direct {v2, v15, v14, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_CANCEL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 175
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v15, "LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x1d3

    invoke-direct {v4, v15, v14, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 179
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ITEM_DROPPED_ON_UNINSTALL"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x1d4

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_UNINSTALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 182
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ITEM_UNINSTALL_COMPLETED"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x1d5

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_UNINSTALL_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 186
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ITEM_UNINSTALL_CANCELLED"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x1d6

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_UNINSTALL_CANCELLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 190
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASK_ICON_TAP_OR_LONGPRESS"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x205

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_ICON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 194
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SYSTEM_SHORTCUT_WIDGETS_TAP"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x202

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_WIDGETS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 198
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SYSTEM_SHORTCUT_APP_INFO_TAP"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x203

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_APP_INFO_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 201
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SYSTEM_SHORTCUT_SPLIT_SCREEN_TAP"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x206

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_SPLIT_SCREEN_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 204
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SYSTEM_SHORTCUT_FREE_FORM_TAP"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x207

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_FREE_FORM_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 207
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SYSTEM_SHORTCUT_SOMC_FREE_FORM_TAP"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x257

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_SOMC_FREE_FORM_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 210
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SYSTEM_SHORTCUT_PAUSE_TAP"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x209

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_PAUSE_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 213
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SYSTEM_SHORTCUT_PIN_TAP"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x20a

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_PIN_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 216
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALL_APPS_EDU_SHOWN"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x20b

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALL_APPS_EDU_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 219
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_FOLDER_OPEN"

    const/16 v15, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0x227

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 222
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOTSEAT_EDU_SEEN"

    const/16 v15, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x1df

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_EDU_SEEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 225
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOTSEAT_EDU_ACCEPT"

    const/16 v15, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0x1e0

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_EDU_ACCEPT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 228
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOTSEAT_EDU_DENY"

    const/16 v15, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x1e1

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_EDU_DENY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 231
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOTSEAT_EDU_ONLY_TIP"

    const/16 v15, 0x27

    move-object/from16 v42, v4

    const/16 v4, 0x1e2

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_EDU_ONLY_TIP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 238
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALL_APPS_RANKED"

    const/16 v15, 0x28

    move-object/from16 v43, v2

    const/16 v2, 0x228

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALL_APPS_RANKED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 242
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOTSEAT_RANKED"

    const/16 v15, 0x29

    move-object/from16 v44, v4

    const/16 v4, 0x229

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_RANKED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 244
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ONSTOP"

    const/16 v15, 0x2a

    move-object/from16 v45, v2

    const/16 v2, 0x232

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONSTOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 247
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ONRESUME"

    const/16 v15, 0x2b

    move-object/from16 v46, v4

    const/16 v4, 0x233

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONRESUME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 250
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SWIPELEFT"

    const/16 v15, 0x2c

    move-object/from16 v47, v2

    const/16 v2, 0x234

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 253
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SWIPERIGHT"

    const/16 v15, 0x2d

    move-object/from16 v48, v4

    const/16 v4, 0x235

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 256
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_UNKNOWN_SWIPEUP"

    const/16 v15, 0x2e

    move-object/from16 v49, v2

    const/16 v2, 0x236

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNKNOWN_SWIPEUP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 259
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_UNKNOWN_SWIPEDOWN"

    const/16 v15, 0x2f

    move-object/from16 v50, v4

    const/16 v4, 0x237

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNKNOWN_SWIPEDOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 262
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_OPEN_UP"

    const/16 v15, 0x30

    move-object/from16 v51, v2

    const/16 v2, 0x238

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_OPEN_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 265
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_CLOSE_DOWN"

    const/16 v15, 0x31

    move-object/from16 v52, v4

    const/16 v4, 0x239

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_CLOSE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 268
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_CLOSE_TAP_OUTSIDE"

    const/16 v15, 0x32

    move-object/from16 v53, v2

    const/16 v2, 0x3ad

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_CLOSE_TAP_OUTSIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 271
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_GESTURE"

    const/16 v15, 0x33

    move-object/from16 v54, v4

    const/16 v4, 0x23a

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 274
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_QUICKSWITCH_LEFT"

    const/16 v15, 0x34

    move-object/from16 v55, v2

    const/16 v2, 0x23b

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_LEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 277
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_QUICKSWITCH_RIGHT"

    const/16 v15, 0x35

    move-object/from16 v56, v4

    const/16 v4, 0x23c

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_RIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 280
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SWIPEDOWN_NAVBAR"

    const/16 v15, 0x36

    move-object/from16 v57, v2

    const/16 v2, 0x23d

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPEDOWN_NAVBAR:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 283
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOME_GESTURE"

    const/16 v15, 0x37

    move-object/from16 v58, v4

    const/16 v4, 0x23e

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 286
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_WORKSPACE_SNAPSHOT"

    const/16 v15, 0x38

    move-object/from16 v59, v2

    const/16 v2, 0x243

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WORKSPACE_SNAPSHOT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 289
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_ACTIONS_SCREENSHOT"

    const/16 v15, 0x39

    move-object/from16 v60, v4

    const/16 v4, 0x244

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_ACTIONS_SCREENSHOT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 292
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_ACTIONS_SELECT"

    const/16 v15, 0x3a

    move-object/from16 v61, v2

    const/16 v2, 0x245

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_ACTIONS_SELECT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 295
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_ACTIONS_SHARE"

    const/16 v15, 0x3b

    move-object/from16 v62, v4

    const/16 v4, 0x246

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_ACTIONS_SHARE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 298
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_ACTIONS_SPLIT"

    const/16 v15, 0x3c

    move-object/from16 v63, v2

    const/16 v2, 0x37f

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_ACTIONS_SPLIT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 301
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SELECT_MODE_CLOSE"

    const/16 v15, 0x3d

    move-object/from16 v64, v4

    const/16 v4, 0x247

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SELECT_MODE_CLOSE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 304
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SELECT_MODE_ITEM"

    const/16 v15, 0x3e

    move-object/from16 v65, v2

    const/16 v2, 0x248

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SELECT_MODE_ITEM:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 307
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_NOTIFICATION_DOT_ENABLED"

    const/16 v15, 0x3f

    move-object/from16 v66, v4

    const/16 v4, 0x263

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NOTIFICATION_DOT_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 310
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_NOTIFICATION_DOT_DISABLED"

    const/16 v15, 0x40

    move-object/from16 v67, v2

    const/16 v2, 0x264

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NOTIFICATION_DOT_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 313
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ADD_NEW_APPS_TO_HOME_SCREEN_ENABLED"

    const/16 v15, 0x41

    move-object/from16 v68, v4

    const/16 v4, 0x265

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_NEW_APPS_TO_HOME_SCREEN_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 316
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ADD_NEW_APPS_TO_HOME_SCREEN_DISABLED"

    const/16 v15, 0x42

    move-object/from16 v69, v2

    const/16 v2, 0x266

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_NEW_APPS_TO_HOME_SCREEN_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 319
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOME_SCREEN_ROTATION_ENABLED"

    const/16 v15, 0x43

    move-object/from16 v70, v4

    const/16 v4, 0x267

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_SCREEN_ROTATION_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 322
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOME_SCREEN_ROTATION_DISABLED"

    const/16 v15, 0x44

    move-object/from16 v71, v2

    const/16 v2, 0x268

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_SCREEN_ROTATION_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 325
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALL_APPS_SUGGESTIONS_ENABLED"

    const/16 v15, 0x45

    move-object/from16 v72, v4

    const/16 v4, 0x26b

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALL_APPS_SUGGESTIONS_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 328
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALL_APPS_SUGGESTIONS_DISABLED"

    const/16 v15, 0x46

    move-object/from16 v73, v2

    const/16 v2, 0x26c

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALL_APPS_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 331
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOME_SCREEN_SUGGESTIONS_ENABLED"

    const/16 v15, 0x47

    move-object/from16 v74, v4

    const/16 v4, 0x26d

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_SCREEN_SUGGESTIONS_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 334
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOME_SCREEN_SUGGESTIONS_DISABLED"

    const/16 v15, 0x48

    move-object/from16 v75, v2

    const/16 v2, 0x26e

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_SCREEN_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 337
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_NAVIGATION_MODE_3_BUTTON"

    const/16 v15, 0x49

    move-object/from16 v76, v4

    const/16 v4, 0x26f

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NAVIGATION_MODE_3_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 340
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_NAVIGATION_MODE_2_BUTTON"

    const/16 v15, 0x4a

    move-object/from16 v77, v2

    const/16 v2, 0x270

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NAVIGATION_MODE_2_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 343
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_NAVIGATION_MODE_GESTURE_BUTTON"

    const/16 v15, 0x4b

    move-object/from16 v78, v4

    const/16 v4, 0x271

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NAVIGATION_MODE_GESTURE_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 346
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SELECT_MODE_IMAGE"

    const/16 v15, 0x4c

    move-object/from16 v79, v2

    const/16 v2, 0x273

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SELECT_MODE_IMAGE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 349
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ADD_EXTERNAL_ITEM_START"

    const/16 v15, 0x4d

    move-object/from16 v80, v4

    const/16 v4, 0x281

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_START:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 352
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ADD_EXTERNAL_ITEM_CANCELLED"

    const/16 v15, 0x4e

    move-object/from16 v81, v2

    const/16 v2, 0x282

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_CANCELLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 355
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ADD_EXTERNAL_ITEM_BACK"

    const/16 v15, 0x4f

    move-object/from16 v82, v4

    const/16 v4, 0x283

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_BACK:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 358
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY"

    const/16 v15, 0x50

    move-object/from16 v83, v2

    const/16 v2, 0x284

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 361
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ADD_EXTERNAL_ITEM_DRAGGED"

    const/16 v15, 0x51

    move-object/from16 v84, v4

    const/16 v4, 0x285

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_DRAGGED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 364
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_FOLDER_CONVERTED_TO_ICON"

    const/16 v15, 0x52

    move-object/from16 v85, v2

    const/16 v2, 0x286

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_CONVERTED_TO_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 367
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_HOTSEAT_PREDICTION_PINNED"

    const/16 v15, 0x53

    move-object/from16 v86, v4

    const/16 v4, 0x287

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_PREDICTION_PINNED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 370
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_UNDO"

    const/16 v15, 0x54

    move-object/from16 v87, v2

    const/16 v2, 0x288

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 373
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASK_CLEAR_ALL"

    const/16 v15, 0x55

    move-object/from16 v88, v4

    const/16 v4, 0x289

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_CLEAR_ALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 376
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASK_PREVIEW_LONGPRESS"

    const/16 v15, 0x56

    move-object/from16 v89, v2

    const/16 v2, 0x28a

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_PREVIEW_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 379
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SWIPE_DOWN_WORKSPACE_NOTISHADE_OPEN"

    const/16 v15, 0x57

    move-object/from16 v90, v4

    const/16 v4, 0x28b

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPE_DOWN_WORKSPACE_NOTISHADE_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 382
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_NOTIFICATION_DISMISSED"

    const/16 v15, 0x58

    move-object/from16 v91, v2

    const/16 v2, 0x28c

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NOTIFICATION_DISMISSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 385
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GRID_SIZE_6"

    const/16 v15, 0x59

    move-object/from16 v92, v4

    const/16 v4, 0x3a2

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_6:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 388
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GRID_SIZE_5"

    const/16 v15, 0x5a

    move-object/from16 v93, v2

    const/16 v2, 0x296

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_5:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 391
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GRID_SIZE_4"

    const/16 v15, 0x5b

    move-object/from16 v94, v4

    const/16 v4, 0x297

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_4:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 394
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GRID_SIZE_3"

    const/16 v15, 0x5c

    move-object/from16 v95, v2

    const/16 v2, 0x298

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_3:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 397
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GRID_SIZE_2"

    const/16 v15, 0x5d

    move-object/from16 v96, v4

    const/16 v4, 0x299

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_2:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 400
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_ENTRY"

    const/16 v15, 0x5e

    move-object/from16 v97, v2

    const/16 v2, 0x2b4

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 403
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_EXIT"

    const/16 v15, 0x5f

    move-object/from16 v98, v4

    const/16 v4, 0x2b5

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_EXIT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 406
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_KEYBOARD_CLOSED"

    const/16 v15, 0x60

    move-object/from16 v99, v2

    const/16 v2, 0x2b6

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_KEYBOARD_CLOSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 409
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_SWIPE_TO_PERSONAL_TAB"

    const/16 v15, 0x61

    move-object/from16 v100, v4

    const/16 v4, 0x2b7

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SWIPE_TO_PERSONAL_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 412
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_SWIPE_TO_WORK_TAB"

    const/16 v15, 0x62

    move-object/from16 v101, v2

    const/16 v2, 0x2b8

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SWIPE_TO_WORK_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 415
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SLICE_DEFAULT_ACTION"

    const/16 v15, 0x63

    move-object/from16 v102, v4

    const/16 v4, 0x2bc

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_DEFAULT_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 419
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SLICE_TOGGLE_ON"

    const/16 v15, 0x64

    move-object/from16 v103, v2

    const/16 v2, 0x2bd

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_TOGGLE_ON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 422
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SLICE_TOGGLE_OFF"

    const/16 v15, 0x65

    move-object/from16 v104, v4

    const/16 v4, 0x2be

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_TOGGLE_OFF:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 425
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SLICE_BUTTON_ACTION"

    const/16 v15, 0x66

    move-object/from16 v105, v2

    const/16 v2, 0x2bf

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_BUTTON_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 428
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SLICE_SLIDER_ACTION"

    const/16 v15, 0x67

    move-object/from16 v106, v4

    const/16 v4, 0x2c0

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_SLIDER_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 431
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SLICE_CONTENT_ACTION"

    const/16 v15, 0x68

    move-object/from16 v107, v2

    const/16 v2, 0x2c1

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_CONTENT_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 434
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SLICE_SEE_MORE_ACTION"

    const/16 v15, 0x69

    move-object/from16 v108, v4

    const/16 v4, 0x2c2

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_SEE_MORE_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 437
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SLICE_SELECTION_ACTION"

    const/16 v15, 0x6a

    move-object/from16 v109, v2

    const/16 v2, 0x2c3

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_SELECTION_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 440
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_FOCUSED_ITEM_SELECTED_WITH_IME"

    const/16 v15, 0x6b

    move-object/from16 v110, v4

    const/16 v4, 0x2ce

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_FOCUSED_ITEM_SELECTED_WITH_IME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 443
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_ITEM_LONG_PRESSED"

    const/16 v15, 0x6c

    move-object/from16 v111, v2

    const/16 v2, 0x2cf

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ITEM_LONG_PRESSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 446
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_ENTRY_WITH_DEVICE_SEARCH"

    const/16 v15, 0x6d

    move-object/from16 v112, v4

    const/16 v4, 0x2d0

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY_WITH_DEVICE_SEARCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 449
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_TAP_ON_PERSONAL_TAB"

    const/16 v15, 0x6e

    move-object/from16 v113, v2

    const/16 v2, 0x2d1

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_TAP_ON_PERSONAL_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 452
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_TAP_ON_WORK_TAB"

    const/16 v15, 0x6f

    move-object/from16 v114, v4

    const/16 v4, 0x2d2

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_TAP_ON_WORK_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 455
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_VERTICAL_SWIPE_BEGIN"

    const/16 v15, 0x70

    move-object/from16 v115, v2

    const/16 v2, 0x2d4

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_VERTICAL_SWIPE_BEGIN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 458
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_VERTICAL_SWIPE_END"

    const/16 v15, 0x71

    move-object/from16 v116, v4

    const/16 v4, 0x2d5

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_VERTICAL_SWIPE_END:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 461
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_SHOW_URL_INDICATOR"

    const/16 v15, 0x72

    move-object/from16 v117, v2

    const/16 v2, 0x2fc

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_SHOW_URL_INDICATOR:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 464
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_SHOW_IMAGE_INDICATOR"

    const/16 v15, 0x73

    move-object/from16 v118, v4

    const/16 v4, 0x2fd

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_SHOW_IMAGE_INDICATOR:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 467
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_URL_INDICATOR_TAP"

    const/16 v15, 0x74

    move-object/from16 v119, v2

    const/16 v2, 0x2fe

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_URL_INDICATOR_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 470
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_IMAGE_INDICATOR_TAP"

    const/16 v15, 0x75

    move-object/from16 v120, v4

    const/16 v4, 0x2ff

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_IMAGE_INDICATOR_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 473
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_IMAGE_LONG_PRESS"

    const/16 v15, 0x76

    move-object/from16 v121, v2

    const/16 v2, 0x300

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_IMAGE_LONG_PRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 476
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_URL_DRAG"

    const/16 v15, 0x77

    move-object/from16 v122, v4

    const/16 v4, 0x301

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_URL_DRAG:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 479
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_IMAGE_DRAG"

    const/16 v15, 0x78

    move-object/from16 v123, v2

    const/16 v2, 0x302

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_IMAGE_DRAG:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 482
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_TARGET"

    const/16 v15, 0x79

    move-object/from16 v124, v4

    const/16 v4, 0x303

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_TARGET:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 485
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_TARGET"

    const/16 v15, 0x7a

    move-object/from16 v125, v2

    const/16 v2, 0x304

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_TARGET:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 488
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_MORE"

    const/16 v15, 0x7b

    move-object/from16 v126, v4

    const/16 v4, 0x305

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_MORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 491
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_MORE"

    const/16 v15, 0x7c

    move-object/from16 v127, v2

    const/16 v2, 0x306

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_MORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 494
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_URL"

    const/16 v15, 0x7d

    move-object/from16 v128, v4

    const/16 v4, 0x307

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_URL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 497
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_IMAGE"

    const/16 v15, 0x7e

    move-object/from16 v129, v2

    const/16 v2, 0x308

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_IMAGE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 500
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_URL"

    const/16 v15, 0x7f

    move-object/from16 v130, v4

    const/16 v4, 0x309

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_URL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 503
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_IMAGE"

    const/16 v15, 0x80

    move-object/from16 v131, v2

    const/16 v2, 0x30a

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_IMAGE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 506
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_WIDGET_RESIZE_STARTED"

    const/16 v15, 0x81

    move-object/from16 v132, v4

    const/16 v4, 0x334

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RESIZE_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 509
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_WIDGET_RESIZE_COMPLETED"

    const/16 v15, 0x82

    move-object/from16 v133, v2

    const/16 v2, 0x338

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RESIZE_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 512
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_WIDGET_RECONFIGURED"

    const/16 v15, 0x83

    move-object/from16 v134, v4

    const/16 v4, 0x335

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RECONFIGURED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 515
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_THEMED_ICON_ENABLED"

    const/16 v15, 0x84

    move-object/from16 v135, v2

    const/16 v2, 0x344

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_THEMED_ICON_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 518
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_THEMED_ICON_DISABLED"

    const/16 v15, 0x85

    move-object/from16 v136, v4

    const/16 v4, 0x345

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_THEMED_ICON_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 521
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TURN_ON_WORK_APPS_TAP"

    const/16 v15, 0x86

    move-object/from16 v137, v2

    const/16 v2, 0x346

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TURN_ON_WORK_APPS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 524
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TURN_OFF_WORK_APPS_TAP"

    const/16 v15, 0x87

    move-object/from16 v138, v4

    const/16 v4, 0x347

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TURN_OFF_WORK_APPS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 527
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE"

    const/16 v15, 0x88

    move-object/from16 v139, v2

    const/16 v2, 0x368

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 530
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_LONGPRESS_HIDE"

    const/16 v15, 0x89

    move-object/from16 v140, v4

    const/16 v4, 0x380

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_LONGPRESS_HIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 533
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_LONGPRESS_SHOW"

    const/16 v15, 0x8a

    move-object/from16 v141, v2

    const/16 v2, 0x381

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_LONGPRESS_SHOW:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 536
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_SEARCHINAPP_LAUNCH"

    const/16 v15, 0x8b

    move-object/from16 v142, v4

    const/16 v4, 0x391

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SEARCHINAPP_LAUNCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 539
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_SHOWN"

    const/16 v15, 0x8c

    move-object/from16 v143, v2

    const/16 v2, 0x3bf

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 542
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_SHOWN"

    const/16 v15, 0x8d

    move-object/from16 v144, v4

    const/16 v4, 0x3c0

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 545
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_SHOWN"

    const/16 v15, 0x8e

    move-object/from16 v145, v2

    const/16 v2, 0x3c1

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 548
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_COMPLETED"

    const/16 v15, 0x8f

    move-object/from16 v146, v4

    const/16 v4, 0x3c2

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 551
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_COMPLETED"

    const/16 v15, 0x90

    move-object/from16 v147, v2

    const/16 v2, 0x3c3

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 554
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_COMPLETED"

    const/16 v15, 0x91

    move-object/from16 v148, v4

    const/16 v4, 0x3c4

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 557
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_GESTURE_TUTORIAL_SKIPPED"

    const/16 v15, 0x92

    move-object/from16 v149, v2

    const/16 v2, 0x3c5

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_SKIPPED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 560
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_SCROLLED"

    const/16 v15, 0x93

    move-object/from16 v150, v4

    const/16 v4, 0x3d9

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SCROLLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 564
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_HOME_BUTTON_TAP"

    const/16 v15, 0x94

    move-object/from16 v151, v2

    const/16 v2, 0x3eb

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_HOME_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 567
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_BACK_BUTTON_TAP"

    const/16 v15, 0x95

    move-object/from16 v152, v4

    const/16 v4, 0x3ec

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_BACK_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 570
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_OVERVIEW_BUTTON_TAP"

    const/16 v15, 0x96

    move-object/from16 v153, v2

    const/16 v2, 0x3ed

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_OVERVIEW_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 573
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_IME_SWITCHER_BUTTON_TAP"

    const/16 v15, 0x97

    move-object/from16 v154, v4

    const/16 v4, 0x3ee

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 576
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_A11Y_BUTTON_TAP"

    const/16 v15, 0x98

    move-object/from16 v155, v2

    const/16 v2, 0x3ef

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_A11Y_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 579
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_HOME_BUTTON_LONGPRESS"

    const/16 v15, 0x99

    move-object/from16 v156, v4

    const/16 v4, 0x3f0

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_HOME_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 582
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_BACK_BUTTON_LONGPRESS"

    const/16 v15, 0x9a

    move-object/from16 v157, v2

    const/16 v2, 0x3f1

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_BACK_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 585
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_OVERVIEW_BUTTON_LONGPRESS"

    const/16 v15, 0x9b

    move-object/from16 v158, v4

    const/16 v4, 0x3f2

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 588
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_A11Y_BUTTON_LONGPRESS"

    const/16 v15, 0x9c

    move-object/from16 v159, v2

    const/16 v2, 0x3f3

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_A11Y_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 591
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_DISMISS_PREDICTION_UNDO"

    const/16 v15, 0x9d

    move-object/from16 v160, v4

    const/16 v4, 0x40b

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_DISMISS_PREDICTION_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 594
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_ALLAPPS_QUICK_SEARCH_WITH_IME"

    const/16 v15, 0x9e

    move-object/from16 v161, v2

    const/16 v2, 0x417

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_QUICK_SEARCH_WITH_IME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 597
    new-instance v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_TASKBAR_ALLAPPS_BUTTON_TAP"

    const/16 v15, 0x9f

    move-object/from16 v162, v4

    const/16 v4, 0x421

    invoke-direct {v2, v14, v15, v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_ALLAPPS_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 600
    new-instance v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP"

    const/16 v15, 0xa0

    move-object/from16 v163, v2

    const/16 v2, 0x433

    invoke-direct {v4, v14, v15, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 106
    const/16 v2, 0xa1

    new-array v2, v2, [Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v46, v2, v0

    const/16 v0, 0x2b

    aput-object v47, v2, v0

    const/16 v0, 0x2c

    aput-object v48, v2, v0

    const/16 v0, 0x2d

    aput-object v49, v2, v0

    const/16 v0, 0x2e

    aput-object v50, v2, v0

    const/16 v0, 0x2f

    aput-object v51, v2, v0

    const/16 v0, 0x30

    aput-object v52, v2, v0

    const/16 v0, 0x31

    aput-object v53, v2, v0

    const/16 v0, 0x32

    aput-object v54, v2, v0

    const/16 v0, 0x33

    aput-object v55, v2, v0

    const/16 v0, 0x34

    aput-object v56, v2, v0

    const/16 v0, 0x35

    aput-object v57, v2, v0

    const/16 v0, 0x36

    aput-object v58, v2, v0

    const/16 v0, 0x37

    aput-object v59, v2, v0

    const/16 v0, 0x38

    aput-object v60, v2, v0

    const/16 v0, 0x39

    aput-object v61, v2, v0

    const/16 v0, 0x3a

    aput-object v62, v2, v0

    const/16 v0, 0x3b

    aput-object v63, v2, v0

    const/16 v0, 0x3c

    aput-object v64, v2, v0

    const/16 v0, 0x3d

    aput-object v65, v2, v0

    const/16 v0, 0x3e

    aput-object v66, v2, v0

    const/16 v0, 0x3f

    aput-object v67, v2, v0

    const/16 v0, 0x40

    aput-object v68, v2, v0

    const/16 v0, 0x41

    aput-object v69, v2, v0

    const/16 v0, 0x42

    aput-object v70, v2, v0

    const/16 v0, 0x43

    aput-object v71, v2, v0

    const/16 v0, 0x44

    aput-object v72, v2, v0

    const/16 v0, 0x45

    aput-object v73, v2, v0

    const/16 v0, 0x46

    aput-object v74, v2, v0

    const/16 v0, 0x47

    aput-object v75, v2, v0

    const/16 v0, 0x48

    aput-object v76, v2, v0

    const/16 v0, 0x49

    aput-object v77, v2, v0

    const/16 v0, 0x4a

    aput-object v78, v2, v0

    const/16 v0, 0x4b

    aput-object v79, v2, v0

    const/16 v0, 0x4c

    aput-object v80, v2, v0

    const/16 v0, 0x4d

    aput-object v81, v2, v0

    const/16 v0, 0x4e

    aput-object v82, v2, v0

    const/16 v0, 0x4f

    aput-object v83, v2, v0

    const/16 v0, 0x50

    aput-object v84, v2, v0

    const/16 v0, 0x51

    aput-object v85, v2, v0

    const/16 v0, 0x52

    aput-object v86, v2, v0

    const/16 v0, 0x53

    aput-object v87, v2, v0

    const/16 v0, 0x54

    aput-object v88, v2, v0

    const/16 v0, 0x55

    aput-object v89, v2, v0

    const/16 v0, 0x56

    aput-object v90, v2, v0

    const/16 v0, 0x57

    aput-object v91, v2, v0

    const/16 v0, 0x58

    aput-object v92, v2, v0

    const/16 v0, 0x59

    aput-object v93, v2, v0

    const/16 v0, 0x5a

    aput-object v94, v2, v0

    const/16 v0, 0x5b

    aput-object v95, v2, v0

    const/16 v0, 0x5c

    aput-object v96, v2, v0

    const/16 v0, 0x5d

    aput-object v97, v2, v0

    const/16 v0, 0x5e

    aput-object v98, v2, v0

    const/16 v0, 0x5f

    aput-object v99, v2, v0

    const/16 v0, 0x60

    aput-object v100, v2, v0

    const/16 v0, 0x61

    aput-object v101, v2, v0

    const/16 v0, 0x62

    aput-object v102, v2, v0

    const/16 v0, 0x63

    aput-object v103, v2, v0

    const/16 v0, 0x64

    aput-object v104, v2, v0

    const/16 v0, 0x65

    aput-object v105, v2, v0

    const/16 v0, 0x66

    aput-object v106, v2, v0

    const/16 v0, 0x67

    aput-object v107, v2, v0

    const/16 v0, 0x68

    aput-object v108, v2, v0

    const/16 v0, 0x69

    aput-object v109, v2, v0

    const/16 v0, 0x6a

    aput-object v110, v2, v0

    const/16 v0, 0x6b

    aput-object v111, v2, v0

    const/16 v0, 0x6c

    aput-object v112, v2, v0

    const/16 v0, 0x6d

    aput-object v113, v2, v0

    const/16 v0, 0x6e

    aput-object v114, v2, v0

    const/16 v0, 0x6f

    aput-object v115, v2, v0

    const/16 v0, 0x70

    aput-object v116, v2, v0

    const/16 v0, 0x71

    aput-object v117, v2, v0

    const/16 v0, 0x72

    aput-object v118, v2, v0

    const/16 v0, 0x73

    aput-object v119, v2, v0

    const/16 v0, 0x74

    aput-object v120, v2, v0

    const/16 v0, 0x75

    aput-object v121, v2, v0

    const/16 v0, 0x76

    aput-object v122, v2, v0

    const/16 v0, 0x77

    aput-object v123, v2, v0

    const/16 v0, 0x78

    aput-object v124, v2, v0

    const/16 v0, 0x79

    aput-object v125, v2, v0

    const/16 v0, 0x7a

    aput-object v126, v2, v0

    const/16 v0, 0x7b

    aput-object v127, v2, v0

    const/16 v0, 0x7c

    aput-object v128, v2, v0

    const/16 v0, 0x7d

    aput-object v129, v2, v0

    const/16 v0, 0x7e

    aput-object v130, v2, v0

    const/16 v0, 0x7f

    aput-object v131, v2, v0

    const/16 v0, 0x80

    aput-object v132, v2, v0

    const/16 v0, 0x81

    aput-object v133, v2, v0

    const/16 v0, 0x82

    aput-object v134, v2, v0

    const/16 v0, 0x83

    aput-object v135, v2, v0

    const/16 v0, 0x84

    aput-object v136, v2, v0

    const/16 v0, 0x85

    aput-object v137, v2, v0

    const/16 v0, 0x86

    aput-object v138, v2, v0

    const/16 v0, 0x87

    aput-object v139, v2, v0

    const/16 v0, 0x88

    aput-object v140, v2, v0

    const/16 v0, 0x89

    aput-object v141, v2, v0

    const/16 v0, 0x8a

    aput-object v142, v2, v0

    const/16 v0, 0x8b

    aput-object v143, v2, v0

    const/16 v0, 0x8c

    aput-object v144, v2, v0

    const/16 v0, 0x8d

    aput-object v145, v2, v0

    const/16 v0, 0x8e

    aput-object v146, v2, v0

    const/16 v0, 0x8f

    aput-object v147, v2, v0

    const/16 v0, 0x90

    aput-object v148, v2, v0

    const/16 v0, 0x91

    aput-object v149, v2, v0

    const/16 v0, 0x92

    aput-object v150, v2, v0

    const/16 v0, 0x93

    aput-object v151, v2, v0

    const/16 v0, 0x94

    aput-object v152, v2, v0

    const/16 v0, 0x95

    aput-object v153, v2, v0

    const/16 v0, 0x96

    aput-object v154, v2, v0

    const/16 v0, 0x97

    aput-object v155, v2, v0

    const/16 v0, 0x98

    aput-object v156, v2, v0

    const/16 v0, 0x99

    aput-object v157, v2, v0

    const/16 v0, 0x9a

    aput-object v158, v2, v0

    const/16 v0, 0x9b

    aput-object v159, v2, v0

    const/16 v0, 0x9c

    aput-object v160, v2, v0

    const/16 v0, 0x9d

    aput-object v161, v2, v0

    const/16 v0, 0x9e

    aput-object v162, v2, v0

    const/16 v0, 0x9f

    aput-object v163, v2, v0

    const/16 v0, 0xa0

    aput-object v4, v2, v0

    sput-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 608
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 609
    iput p3, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->mId:I

    .line 610
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
    .locals 1

    .line 106
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {v0}, [Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 613
    iget v0, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->mId:I

    return v0
.end method
