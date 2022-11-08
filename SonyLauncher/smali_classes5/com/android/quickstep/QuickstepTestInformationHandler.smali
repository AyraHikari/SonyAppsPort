.class public Lcom/android/quickstep/QuickstepTestInformationHandler;
.super Lcom/android/launcher3/testing/TestInformationHandler;
.source "QuickstepTestInformationHandler.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lcom/android/launcher3/testing/TestInformationHandler;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "response":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "has-touch-interaction-service"

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "get-grid-task-size-rect-for-tablet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "home-to-overview-swipe-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "get-overview-page-spacing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "background-to-overview-swipe-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_5
    const-string v1, "get-focused-task-height-for-tablet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v4, 0x0

    const-string v5, "response"

    packed-switch v1, :pswitch_data_0

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/testing/TestInformationHandler;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 71
    :pswitch_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    return-object v0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    return-object v0

    .line 54
    :pswitch_2
    iget-object v1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_1

    .line 55
    return-object v4

    .line 57
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .local v1, "gridTaskRect":Landroid/graphics/Rect;
    sget-object v2, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    iget-object v3, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    sget-object v6, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/android/quickstep/LauncherActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    .line 60
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    return-object v0

    .line 43
    .end local v1    # "gridTaskRect":Landroid/graphics/Rect;
    :pswitch_3
    iget-object v1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_2

    .line 44
    return-object v4

    .line 46
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .local v1, "focusedTaskRect":Landroid/graphics/Rect;
    sget-object v2, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    iget-object v3, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/quickstep/LauncherActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    return-object v0

    .line 35
    .end local v1    # "focusedTaskRect":Landroid/graphics/Rect;
    :pswitch_4
    iget-object v1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 36
    invoke-static {v1, v2, v3}, Lcom/android/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result v1

    int-to-float v1, v1

    .line 38
    .local v1, "swipeHeight":F
    float-to-int v2, v1

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    return-object v0

    .line 28
    .end local v1    # "swipeHeight":F
    :pswitch_5
    iget-object v1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 29
    invoke-static {v1, v2}, Lcom/android/quickstep/util/LayoutUtils;->getDefaultSwipeHeight(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)F

    move-result v1

    .line 30
    .restart local v1    # "swipeHeight":F
    float-to-int v2, v1

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1505958b -> :sswitch_5
        0x1ae46cdb -> :sswitch_4
        0x23b480f9 -> :sswitch_3
        0x358667a2 -> :sswitch_2
        0x482f264a -> :sswitch_1
        0x7e5a8e7f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getCurrentActivity()Landroid/app/Activity;
    .locals 3

    .line 82
    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v1, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "rads":Lcom/android/quickstep/RecentsAnimationDeviceState;
    new-instance v1, Lcom/android/quickstep/OverviewComponentObserver;

    iget-object v2, p0, Lcom/android/quickstep/QuickstepTestInformationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/quickstep/OverviewComponentObserver;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    .line 85
    .local v1, "observer":Lcom/android/quickstep/OverviewComponentObserver;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    .line 88
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->destroy()V

    .line 85
    return-object v2

    .line 87
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    .line 88
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->destroy()V

    .line 89
    throw v2
.end method

.method protected isLauncherInitialized()Z
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->isLauncherInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/quickstep/TouchInteractionService;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
