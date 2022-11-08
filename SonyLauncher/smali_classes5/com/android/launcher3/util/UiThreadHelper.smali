.class public Lcom/android/launcher3/util/UiThreadHelper;
.super Ljava/lang/Object;
.source "UiThreadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;,
        Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;
    }
.end annotation


# static fields
.field private static final HANDLER:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_HIDE_KEYBOARD:I = 0x1

.field private static final MSG_RUN_COMMAND:I = 0x3

.field private static final MSG_SET_ORIENTATION:I = 0x2

.field private static final STATS_LOGGER_KEY:Ljava/lang/String; = "STATS_LOGGER_KEY"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/UiThreadHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/util/UiThreadHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/UiThreadHelper;->HANDLER:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V
    .locals 6
    .param p0, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "token"    # Landroid/os/IBinder;

    .line 53
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/view/View;
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 64
    .local v1, "wic":Landroid/view/WindowInsetsController;
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    .line 65
    .local v3, "insets":Landroid/view/WindowInsets;
    if-eqz v3, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 66
    .local v4, "isImeShown":Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 68
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 69
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_KEYBOARD_CLOSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 70
    invoke-interface {v2, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 71
    return-void

    .line 76
    .end local v1    # "wic":Landroid/view/WindowInsetsController;
    .end local v3    # "insets":Landroid/view/WindowInsets;
    .end local v4    # "isImeShown":Z
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v1, "mHideKeyboardLoggerMsg":Landroid/os/Bundle;
    sget-object v3, Lcom/android/launcher3/util/UiThreadHelper;->HANDLER:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    new-instance v5, Lcom/android/launcher3/util/UiThreadHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/launcher3/util/UiThreadHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    .line 79
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v4

    .line 77
    const-string v5, "STATS_LOGGER_KEY"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-static {v3, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 90
    .local v2, "mHideKeyboardMsg":Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 92
    return-void
.end method

.method static synthetic lambda$hideKeyboardAsync$1(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 2
    .param p0, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;

    .line 81
    nop

    .line 82
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_KEYBOARD_CLOSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 84
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 81
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;)Landroid/os/Handler;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static runAsyncCommand(Landroid/content/Context;Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 105
    sget-object v0, Lcom/android/launcher3/util/UiThreadHelper;->HANDLER:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method

.method public static setBackButtonAlphaAsync(Landroid/content/Context;Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;FZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .line 101
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/launcher3/util/UiThreadHelper;->runAsyncCommand(Landroid/content/Context;Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;II)V

    .line 102
    return-void
.end method

.method public static setOrientationAsync(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orientation"    # I

    .line 95
    sget-object v0, Lcom/android/launcher3/util/UiThreadHelper;->HANDLER:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method
