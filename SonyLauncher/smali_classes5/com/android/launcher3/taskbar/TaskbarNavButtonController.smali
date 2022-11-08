.class public Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
.super Ljava/lang/Object;
.source "TaskbarNavButtonController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarNavButtonController$TaskbarButton;
    }
.end annotation


# static fields
.field static final BUTTON_A11Y:I = 0x10

.field static final BUTTON_BACK:I = 0x1

.field static final BUTTON_HOME:I = 0x2

.field static final BUTTON_IME_SWITCH:I = 0x8

.field static final BUTTON_NOTIFICATIONS:I = 0x40

.field static final BUTTON_QUICK_SETTINGS:I = 0x20

.field static final BUTTON_RECENTS:I = 0x4

.field static final SCREEN_PIN_LONG_PRESS_RESET:I = 0x12c

.field static final SCREEN_PIN_LONG_PRESS_THRESHOLD:I = 0xc8

.field private static final SCREEN_UNPIN_COMBO:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastScreenPinLongPress:J

.field private mLongPressedButtons:I

.field private final mResetLongPress:Ljava/lang/Runnable;

.field private mScreenPinned:Z

.field private final mService:Lcom/android/quickstep/TouchInteractionService;

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public static synthetic $r8$lambda$gzVGRLHy433mIxR65ahlBFB6Ed8(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->resetScreenUnpin()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/SystemUiProxy;Landroid/os/Handler;)V
    .locals 1
    .param p1, "service"    # Lcom/android/quickstep/TouchInteractionService;
    .param p2, "systemUiProxy"    # Lcom/android/quickstep/SystemUiProxy;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    .line 107
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mResetLongPress:Ljava/lang/Runnable;

    .line 111
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mService:Lcom/android/quickstep/TouchInteractionService;

    .line 112
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 113
    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method private backRecentsLongpress(I)Z
    .locals 1
    .param p1, "buttonType"    # I

    .line 191
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->determineScreenUnpin()Z

    move-result v0

    return v0
.end method

.method private determineScreenUnpin()Z
    .locals 9

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    .local v0, "timeNow":J
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 207
    return v3

    .line 210
    :cond_0
    iget-wide v4, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/4 v6, 0x1

    if-nez v2, :cond_1

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    .line 213
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mResetLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return v6

    .line 217
    :cond_1
    sub-long v4, v0, v4

    const-wide/16 v7, 0xc8

    cmp-long v2, v4, v7

    if-lez v2, :cond_2

    .line 219
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->resetScreenUnpin()V

    .line 220
    return v3

    .line 223
    :cond_2
    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    const/4 v3, 0x5

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    .line 225
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v2}, Lcom/android/quickstep/SystemUiProxy;->stopScreenPinning()V

    .line 226
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mResetLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->resetScreenUnpin()V

    .line 229
    :cond_3
    return v6
.end method

.method private executeBack()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->onBackPressed()V

    .line 272
    return-void
.end method

.method private logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->TAG:Ljava/lang/String;

    const-string v1, "No stats log manager to log taskbar button event"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 254
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 255
    return-void
.end method

.method private navigateHome()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mService:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0}, Lcom/android/quickstep/TouchInteractionService;->getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    .line 259
    return-void
.end method

.method private navigateToOverview()V
    .locals 2

    .line 262
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    if-eqz v0, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    const-string v0, "Main"

    const-string v1, "onOverviewToggle"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mService:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0}, Lcom/android/quickstep/TouchInteractionService;->getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    .line 268
    return-void
.end method

.method private notifyA11yClick(Z)V
    .locals 2
    .param p1, "longClick"    # Z

    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->notifyAccessibilityButtonLongClicked()V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mService:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v1}, Lcom/android/quickstep/TouchInteractionService;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->notifyAccessibilityButtonClicked(I)V

    .line 284
    :goto_0
    return-void
.end method

.method private resetScreenUnpin()V
    .locals 2

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    .line 235
    return-void
.end method

.method private showIMESwitcher()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->onImeSwitcherPressed()V

    .line 276
    return-void
.end method

.method private showNotifications()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->toggleNotificationPanel()V

    .line 301
    return-void
.end method

.method private showQuickSettings()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->toggleNotificationPanel()V

    .line 297
    return-void
.end method

.method private startAssistant()V
    .locals 3

    .line 287
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    if-eqz v0, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, 0x5

    const-string v2, "invocation_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->startAssistant(Landroid/os/Bundle;)V

    .line 293
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarNavButtonController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-wide v3, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 73
    const-string v3, "%s\tmLastScreenPinLongPress=%dms"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s\tmScreenPinned=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public getButtonContentDescription(I)I
    .locals 1
    .param p1, "buttonType"    # I

    .line 170
    sparse-switch p1, :sswitch_data_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 182
    :sswitch_0
    sget v0, Lcom/android/launcher3/R$string;->taskbar_button_notifications:I

    return v0

    .line 184
    :sswitch_1
    sget v0, Lcom/android/launcher3/R$string;->taskbar_button_quick_settings:I

    return v0

    .line 174
    :sswitch_2
    sget v0, Lcom/android/launcher3/R$string;->taskbar_button_a11y:I

    return v0

    .line 178
    :sswitch_3
    sget v0, Lcom/android/launcher3/R$string;->taskbar_button_ime_switcher:I

    return v0

    .line 180
    :sswitch_4
    sget v0, Lcom/android/launcher3/R$string;->taskbar_button_recents:I

    return v0

    .line 172
    :sswitch_5
    sget v0, Lcom/android/launcher3/R$string;->taskbar_button_home:I

    return v0

    .line 176
    :sswitch_6
    sget v0, Lcom/android/launcher3/R$string;->taskbar_button_back:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 1
    .param p1, "taskbarControllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 242
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 243
    return-void
.end method

.method public onButtonClick(I)V
    .locals 1
    .param p1, "buttonType"    # I

    .line 117
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 142
    :sswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->showNotifications()V

    goto :goto_0

    .line 139
    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->showQuickSettings()V

    .line 140
    goto :goto_0

    .line 135
    :sswitch_2
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_A11Y_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->notifyA11yClick(Z)V

    .line 137
    goto :goto_0

    .line 131
    :sswitch_3
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    .line 132
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->showIMESwitcher()V

    .line 133
    goto :goto_0

    .line 127
    :sswitch_4
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_OVERVIEW_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    .line 128
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->navigateToOverview()V

    .line 129
    goto :goto_0

    .line 123
    :sswitch_5
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_HOME_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    .line 124
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->navigateHome()V

    .line 125
    goto :goto_0

    .line 119
    :sswitch_6
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_BACK_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    .line 120
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->executeBack()V

    .line 121
    nop

    .line 145
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public onButtonLongClick(I)Z
    .locals 2
    .param p1, "buttonType"    # I

    .line 148
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 165
    const/4 v0, 0x0

    return v0

    .line 154
    :sswitch_0
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_A11Y_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->notifyA11yClick(Z)V

    .line 156
    return v0

    .line 161
    :sswitch_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->backRecentsLongpress(I)Z

    move-result v0

    return v0

    .line 150
    :sswitch_2
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_HOME_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    .line 151
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->startAssistant()V

    .line 152
    return v0

    .line 158
    :sswitch_3
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_BACK_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->backRecentsLongpress(I)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 247
    return-void
.end method

.method public updateSysuiFlags(I)V
    .locals 1
    .param p1, "sysuiFlags"    # I

    .line 238
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    .line 239
    return-void
.end method
