.class public Lcom/sonymobile/launcher/idd/Idd$AppLaunch;
.super Ljava/lang/Object;
.source "Idd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/idd/Idd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppLaunch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/idd/Idd$AppLaunch$AppTrayFrom;
    }
.end annotation


# static fields
.field private static final APP_LAUNCH_COUNT_PREF_PEFFIX:Ljava/lang/String; = "xperia_idd_app_launch_count_"

.field private static sAppLaunch:Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

.field private static sAppTrayFrom:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    const-string v0, "home_button"

    sput-object v0, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->sAppTrayFrom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/launcher/idd/Idd$AppLaunch;
    .locals 1

    .line 142
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->sAppLaunch:Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    invoke-direct {v0}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;-><init>()V

    sput-object v0, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->sAppLaunch:Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    .line 145
    :cond_0
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->sAppLaunch:Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    return-object v0
.end method

.method private reset(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$sfgetsPreferencesLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 200
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "xperia_idd_app_launch_count_apptray_from_home_button"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "xperia_idd_app_launch_count_apptray_from_desktop"

    .line 201
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "xperia_idd_app_launch_count_apptray_from_gesture_nav"

    .line 202
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "xperia_idd_app_launch_count_apptray_from_threebutton"

    .line 203
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "xperia_idd_app_launch_count_desktop"

    .line 204
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "xperia_idd_app_launch_count_recent"

    .line 205
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "xperia_idd_app_launch_count_scrub_recent"

    .line 206
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 207
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    nop

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public count(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "launchFrom"    # Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "xperia_idd_app_launch_count_"

    .line 154
    .local v1, "key":Ljava/lang/String;
    const-string v2, "apptray"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->isGestureNavMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apptray_from_gesture_nav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->isThreeButtonMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apptray_from_threebutton"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 159
    :cond_2
    const-string v2, "desktop"

    sget-object v3, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->sAppTrayFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apptray_from_desktop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_3
    const-string v2, "home_button"

    sget-object v3, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->sAppTrayFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apptray_from_home_button"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_5
    :goto_0
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$sfgetsPreferencesLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 168
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 169
    .local v3, "count":I
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    .end local v3    # "count":I
    monitor-exit v2

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public send(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 174
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->reset(Landroid/content/Context;)V

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;

    invoke-direct {v1, p1}, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, "event":Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$sfgetsPreferencesLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 183
    :try_start_0
    const-string v3, "xperia_idd_app_launch_count_"

    .line 185
    .local v3, "PFX":Ljava/lang/String;
    const-string v4, "xperia_idd_app_launch_count_apptray_from_home_button"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->apptrayFromHomeButton(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;

    move-result-object v4

    const-string v6, "xperia_idd_app_launch_count_apptray_from_desktop"

    .line 186
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->apptrayFromDesktop(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;

    move-result-object v4

    const-string v6, "xperia_idd_app_launch_count_apptray_from_gesture_nav"

    .line 187
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->apptrayFromGestureNav(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;

    move-result-object v4

    const-string v6, "xperia_idd_app_launch_count_apptray_from_threebutton"

    .line 188
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->apptrayFromThreeButton(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;

    move-result-object v4

    const-string v6, "xperia_idd_app_launch_count_desktop"

    .line 189
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->desktop(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;

    move-result-object v4

    const-string v6, "xperia_idd_app_launch_count_recent"

    .line 190
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->recent(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;

    move-result-object v4

    const-string v6, "xperia_idd_app_launch_count_scrub_recent"

    .line 191
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->scrubRecent(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;

    .line 192
    invoke-static {}, Lcom/sonymobile/launcher/idd/IddManager;->getInstance()Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/launcher/idd/IddManager;->sendEvent(Lcom/sonymobile/launcher/idd/Event;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->reset(Landroid/content/Context;)V

    .line 194
    .end local v3    # "PFX":Ljava/lang/String;
    monitor-exit v2

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setAppTrayFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "appTrayFrom"    # Ljava/lang/String;

    .line 212
    sput-object p1, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->sAppTrayFrom:Ljava/lang/String;

    .line 213
    return-void
.end method
