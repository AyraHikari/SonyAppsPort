.class Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;
.super Ljava/lang/Object;
.source "QuickstepInteractionHandler.java"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickstepInteractionHandler"


# instance fields
.field private final mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 47
    return-void
.end method

.method private findHostViewAncestor(Landroid/view/View;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 103
    :goto_0
    if-eqz p1, :cond_1

    .line 104
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private logAppLaunch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "itemInfo"    # Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 96
    .local v0, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    instance-of v1, p1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_0

    .line 97
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 99
    :cond_0
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "remoteResponse"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->findHostViewAncestor(Landroid/view/View;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object v0

    .line 54
    .local v0, "hostView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    if-nez v0, :cond_0

    .line 55
    const-string v1, "QuickstepInteractionHandler"

    const-string v2, "View did not have a LauncherAppWidgetHostView ancestor."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    nop

    .line 57
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    .line 56
    invoke-static {v0, p2, v1}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v1

    return v1

    .line 59
    :cond_0
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    .line 60
    .local v1, "options":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Intent;Landroid/app/ActivityOptions;>;"
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v2

    .line 62
    .local v2, "activityOptions":Lcom/android/launcher3/util/ActivityOptionsWrapper;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 63
    .local v3, "itemInfo":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 64
    .local v4, "launchCookie":Landroid/os/IBinder;
    instance-of v5, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_1

    .line 65
    iget-object v5, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-object v6, v3

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/IBinder;

    move-result-object v4

    .line 66
    iget-object v5, v2, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v4}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 68
    :cond_1
    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v5

    if-nez v5, :cond_2

    .line 72
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    .line 74
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    .line 75
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v7

    .line 73
    invoke-interface {v5, v6, v7, v4}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v5

    .line 81
    :cond_2
    :goto_0
    iget-object v5, v2, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 82
    iget-object v5, v2, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 83
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    iget-object v6, v2, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 84
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    invoke-direct {p0, v3}, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->logAppLaunch(Ljava/lang/Object;)V

    .line 87
    :cond_3
    invoke-static {v0, p2, v1}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v5

    return v5
.end method
