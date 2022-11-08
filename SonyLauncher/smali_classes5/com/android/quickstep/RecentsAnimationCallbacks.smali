.class public Lcom/android/quickstep/RecentsAnimationCallbacks;
.super Ljava/lang/Object;
.source "RecentsAnimationCallbacks.java"

# interfaces
.implements Lcom/android/systemui/shared/system/RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    }
.end annotation


# instance fields
.field private final mAllowMinimizeSplitScreen:Z

.field private mCancelled:Z

.field private mController:Lcom/android/quickstep/RecentsAnimationController;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public static synthetic $r8$lambda$7SPbGm-pyEXsSFBUpvVoukbXoII(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/SystemUiProxy;Z)V
    .locals 1
    .param p1, "systemUiProxy"    # Lcom/android/quickstep/SystemUiProxy;
    .param p2, "allowMinimizeSplitScreen"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    .line 57
    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 58
    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mAllowMinimizeSplitScreen:Z

    .line 59
    return-void
.end method

.method private getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    return-object v0
.end method

.method static synthetic lambda$onAnimationStart$0(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 2
    .param p0, "remoteAnimationTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 103
    iget v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onAnimationStart$1(I)[Landroid/view/RemoteAnimationTarget;
    .locals 1
    .param p0, "x$0"    # I

    .line 105
    new-array v0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method private final onAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;

    .line 160
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    .line 63
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 64
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method synthetic lambda$onAnimationCanceled$3$com-android-quickstep-RecentsAnimationCallbacks(Ljava/util/HashMap;)V
    .locals 4
    .param p1, "thumbnailDatas"    # Ljava/util/HashMap;

    .line 131
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 132
    .local v3, "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    invoke-interface {v3, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationCanceled(Ljava/util/HashMap;)V

    .line 131
    .end local v3    # "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method synthetic lambda$onAnimationFinished$6$com-android-quickstep-RecentsAnimationCallbacks(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 4
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;

    .line 161
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 162
    .local v3, "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    invoke-interface {v3, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V

    .line 161
    .end local v3    # "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method synthetic lambda$onAnimationStart$2$com-android-quickstep-RecentsAnimationCallbacks(Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 5
    .param p1, "targets"    # Lcom/android/quickstep/RecentsAnimationTargets;

    .line 120
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 121
    .local v3, "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    iget-object v4, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-interface {v3, v4, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    .line 120
    .end local v3    # "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method synthetic lambda$onSwitchToScreenshot$5$com-android-quickstep-RecentsAnimationCallbacks(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "onFinished"    # Ljava/lang/Runnable;

    .line 151
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 152
    .local v3, "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    invoke-interface {v3, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onSwitchToScreenshot(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 151
    .end local v3    # "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 155
    return-void
.end method

.method synthetic lambda$onTasksAppeared$4$com-android-quickstep-RecentsAnimationCallbacks([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 4
    .param p1, "apps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 141
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 142
    .local v3, "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    invoke-interface {v3, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 141
    .end local v3    # "listener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public notifyAnimationCanceled()V
    .locals 1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationCanceled(Ljava/util/HashMap;)V

    .line 82
    return-void
.end method

.method public final onAnimationCanceled(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/util/HashMap;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public final onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "controller"    # Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "homeContentInsets"    # Landroid/graphics/Rect;
    .param p4, "minimizedHomeBounds"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    const/4 v0, 0x0

    new-array v4, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 92
    return-void
.end method

.method public final onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "animationController"    # Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "homeContentInsets"    # Landroid/graphics/Rect;
    .param p5, "minimizedHomeBounds"    # Landroid/graphics/Rect;

    .line 101
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda4;-><init>()V

    .line 102
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda5;-><init>()V

    .line 104
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda6;-><init>()V

    .line 105
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 107
    .local v0, "nonHomeApps":[Landroid/view/RemoteAnimationTarget;
    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    .line 109
    .local v1, "nonAppTargets":[Landroid/view/RemoteAnimationTarget;
    new-instance v8, Lcom/android/quickstep/RecentsAnimationTargets;

    .line 110
    invoke-static {v1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v5

    move-object v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/quickstep/RecentsAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 112
    .local v2, "targets":Lcom/android/quickstep/RecentsAnimationTargets;
    new-instance v3, Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean v4, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mAllowMinimizeSplitScreen:Z

    new-instance v5, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda7;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    invoke-direct {v3, p1, v4, v5}, Lcom/android/quickstep/RecentsAnimationController;-><init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/util/function/Consumer;)V

    iput-object v3, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    .line 115
    iget-boolean v3, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    if-eqz v3, :cond_0

    .line 116
    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    .line 117
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda8;

    invoke-direct {v5, v4}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda8;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    .line 116
    invoke-static {v3, v5}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 119
    :cond_0
    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v2}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda9;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationTargets;)V

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 125
    :goto_0
    return-void
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "onFinished"    # Ljava/lang/Runnable;

    .line 150
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2
    .param p1, "apps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 140
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 76
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 77
    return-void
.end method

.method public removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    .line 69
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method
