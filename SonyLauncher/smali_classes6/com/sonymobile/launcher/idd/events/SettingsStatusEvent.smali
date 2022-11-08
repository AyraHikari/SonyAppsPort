.class public Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
.super Lcom/sonymobile/launcher/idd/events/BaseEvent;
.source "SettingsStatusEvent.java"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "SettingsStatus"

.field private static final KEY_MWSWITCH_COUNT_USE:Ljava/lang/String; = "xperia_idd_recents_mwswitch_count_use"

.field private static final KEY_MWSWITCH_COUNT_USE_WEEKLY:Ljava/lang/String; = "xperia_idd_recents_mwswitch_count_use_weekly"

.field private static final KEY_POPUPWINDOW_COUNT_USE:Ljava/lang/String; = "xperia_idd_recents_popupwindow_count_use"

.field private static final KEY_POPUPWINDOW_COUNT_USE_WEEKLY:Ljava/lang/String; = "xperia_idd_recents_popupwindow_count_use_weekly"

.field private static final KEY_POPUPWINDOW_MENU_COUNT_USE:Ljava/lang/String; = "xperia_idd_recents_popupwindow_menu_count_use"

.field private static final KEY_POPUPWINDOW_MENU_COUNT_USE_WEEKLY:Ljava/lang/String; = "xperia_idd_recents_popupwindow_menu_count_use_weekly"

.field private static final KEY_SCREENSHOT_COUNT_USE:Ljava/lang/String; = "xperia_idd_recents_screenshot_count_use"

.field private static final KEY_SCREENSHOT_COUNT_USE_WEEKLY:Ljava/lang/String; = "xperia_idd_recents_screenshot_count_use_weekly"

.field private static final KEY_SPLITSCREEN_MENU_COUNT_USE:Ljava/lang/String; = "xperia_idd_recents_splitscreen_menu_count_use"

.field private static final KEY_SPLITSCREEN_MENU_COUNT_USE_WEEKLY:Ljava/lang/String; = "xperia_idd_recents_splitscreen_menu_count_use_weekly"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mwswitchCountUseTotal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mwswitch_count_use_total"
    .end annotation
.end field

.field private mwswitchCountUseWeekly:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mwswitch_count_use_weekly"
    .end annotation
.end field

.field private popupwindowCountUseTotal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "popupwindow_count_use_total"
    .end annotation
.end field

.field private popupwindowCountUseWeekly:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "popupwindow_count_use_weekly"
    .end annotation
.end field

.field private popupwindowMenuCountUseTotal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "popupwindow_menu_count_use_total"
    .end annotation
.end field

.field private popupwindowMenuCountUseWeekly:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "popupwindow_menu_count_use_weekly"
    .end annotation
.end field

.field private qsbEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qsb"
    .end annotation
.end field

.field private screenshotCountUseTotal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshot_count_use_total"
    .end annotation
.end field

.field private screenshotCountUseWeekly:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshot_count_use_weekly"
    .end annotation
.end field

.field private sortMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort_mode"
    .end annotation
.end field

.field private splitscreenMenuCountUseTotal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "splitscreen_menu_count_use_total"
    .end annotation
.end field

.field private splitscreenMenuCountUseWeekly:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "splitscreen_menu_count_use_weekly"
    .end annotation
.end field

.field private swipeUpEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "swipe_up"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    const-string v0, "SettingsStatus"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/idd/events/BaseEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->setValues(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method private static getCountUse(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 169
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getMwswitchCountUse(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 201
    const-string v0, "xperia_idd_recents_mwswitch_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getMwswitchCountUseWeekly(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 210
    const-string v0, "xperia_idd_recents_mwswitch_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getPopupwindowCountUse(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 219
    const-string v0, "xperia_idd_recents_popupwindow_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getPopupwindowCountUseWeekly(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 228
    const-string v0, "xperia_idd_recents_popupwindow_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getPopupwindowMenuCountUse(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 237
    const-string v0, "xperia_idd_recents_popupwindow_menu_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getPopupwindowMenuCountUseWeekly(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 246
    const-string v0, "xperia_idd_recents_popupwindow_menu_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getScreenshotCountUse(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 183
    const-string v0, "xperia_idd_recents_screenshot_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getScreenshotCountUseWeekly(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 192
    const-string v0, "xperia_idd_recents_screenshot_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getSortMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 147
    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 149
    :cond_0
    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xperia_sort_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSplitscreenMenuCountUse(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 255
    const-string v0, "xperia_idd_recents_splitscreen_menu_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getSplitscreenMenuCountUseWeekly(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 264
    const-string v0, "xperia_idd_recents_splitscreen_menu_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getSystemBooleanRes(Ljava/lang/String;)Z
    .locals 4
    .param p1, "resName"    # Ljava/lang/String;

    .line 157
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "bool"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, "resId":I
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    return v2

    .line 163
    :cond_0
    sget-object v2, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get system resource ID. Incompatible framework version?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, 0x0

    return v2
.end method

.method private static incCountUse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 173
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getCountUse(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    return-void
.end method

.method public static incMwswitchCountUse(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 204
    const-string v0, "xperia_idd_recents_mwswitch_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static incMwswitchCountUseWeekly(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 213
    const-string v0, "xperia_idd_recents_mwswitch_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static incPopupwindowCountUse(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 222
    const-string v0, "xperia_idd_recents_popupwindow_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static incPopupwindowCountUseWeekly(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 231
    const-string v0, "xperia_idd_recents_popupwindow_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static incPopupwindowMenuCountUse(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 240
    const-string v0, "xperia_idd_recents_popupwindow_menu_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static incPopupwindowMenuCountUseWeekly(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 249
    const-string v0, "xperia_idd_recents_popupwindow_menu_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static incScreenshotCountUse(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 186
    const-string v0, "xperia_idd_recents_screenshot_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static incScreenshotCountUseWeekly(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    const-string v0, "xperia_idd_recents_screenshot_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static incSplitscreenMenuCountUse(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 258
    const-string v0, "xperia_idd_recents_splitscreen_menu_count_use"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public static incSplitscreenMenuCountUseWeekly(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 267
    const-string v0, "xperia_idd_recents_splitscreen_menu_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private isQsbEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getQsbEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isSwipeUpEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->isSwipeUpEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static resetCountUse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 177
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    return-void
.end method

.method public static resetCountUseWeekly(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 271
    const-string v0, "xperia_idd_recents_mwswitch_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->resetCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    const-string v0, "xperia_idd_recents_screenshot_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->resetCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    const-string v0, "xperia_idd_recents_popupwindow_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->resetCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    const-string v0, "xperia_idd_recents_popupwindow_menu_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->resetCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    const-string v0, "xperia_idd_recents_splitscreen_menu_count_use_weekly"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->resetCountUse(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private setValues(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->isQsbEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->qsbEnabled(Z)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 126
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getSortMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->sortMode(Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 127
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->isSwipeUpEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->swipeUpEnabled(Z)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 128
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getScreenshotCountUse(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->screenshotCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 129
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getScreenshotCountUseWeekly(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->screenshotCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 130
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getMwswitchCountUse(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->mwswitchCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 131
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getMwswitchCountUseWeekly(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->mwswitchCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 132
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getPopupwindowCountUse(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->popupwindowCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 133
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getPopupwindowCountUseWeekly(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->popupwindowCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 134
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getPopupwindowMenuCountUse(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->popupwindowMenuCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 135
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getPopupwindowMenuCountUseWeekly(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->popupwindowMenuCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 136
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getSplitscreenMenuCountUse(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->splitscreenMenuCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 137
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->getSplitscreenMenuCountUseWeekly(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->splitscreenMenuCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    .line 138
    return-void
.end method


# virtual methods
.method public mwswitchCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "mwswitchCountUseTotal"    # I

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->mwswitchCountUseTotal:Ljava/lang/Integer;

    .line 67
    return-object p0
.end method

.method public mwswitchCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "mwswitchCountUseWeekly"    # I

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->mwswitchCountUseWeekly:Ljava/lang/Integer;

    .line 74
    return-object p0
.end method

.method public popupwindowCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "popupwindowCountUseTotal"    # I

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->popupwindowCountUseTotal:Ljava/lang/Integer;

    .line 81
    return-object p0
.end method

.method public popupwindowCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "popupwindowCountUseWeekly"    # I

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->popupwindowCountUseWeekly:Ljava/lang/Integer;

    .line 88
    return-object p0
.end method

.method public popupwindowMenuCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "popupwindowMenuCountUseTotal"    # I

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->popupwindowMenuCountUseTotal:Ljava/lang/Integer;

    .line 95
    return-object p0
.end method

.method public popupwindowMenuCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "popupwindowMenuCountUseWeekly"    # I

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->popupwindowMenuCountUseWeekly:Ljava/lang/Integer;

    .line 102
    return-object p0
.end method

.method public qsbEnabled(Z)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "qsbEnabled"    # Z

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->qsbEnabled:Ljava/lang/Boolean;

    .line 32
    return-object p0
.end method

.method public screenshotCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "screenshotCountUseTotal"    # I

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->screenshotCountUseTotal:Ljava/lang/Integer;

    .line 53
    return-object p0
.end method

.method public screenshotCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "screenshotCountUseWeekly"    # I

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->screenshotCountUseWeekly:Ljava/lang/Integer;

    .line 60
    return-object p0
.end method

.method public sortMode(Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 0
    .param p1, "sortMode"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->sortMode:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public splitscreenMenuCountUseTotal(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "splitscreenMenuCountUseTotal"    # I

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->splitscreenMenuCountUseTotal:Ljava/lang/Integer;

    .line 109
    return-object p0
.end method

.method public splitscreenMenuCountUseWeekly(I)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "splitscreenMenuCountUseWeekly"    # I

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->splitscreenMenuCountUseWeekly:Ljava/lang/Integer;

    .line 116
    return-object p0
.end method

.method public swipeUpEnabled(Z)Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    .locals 1
    .param p1, "swipeUpEnabled"    # Z

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->swipeUpEnabled:Ljava/lang/Boolean;

    .line 46
    return-object p0
.end method
