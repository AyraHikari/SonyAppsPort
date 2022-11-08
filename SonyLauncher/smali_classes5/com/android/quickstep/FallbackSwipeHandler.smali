.class public Lcom/android/quickstep/FallbackSwipeHandler;
.super Lcom/android/quickstep/AbsSwipeUpHandler;
.source "FallbackSwipeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;,
        Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;,
        Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/AbsSwipeUpHandler<",
        "Lcom/android/quickstep/RecentsActivity;",
        "Lcom/android/quickstep/fallback/FallbackRecentsView;",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FallbackSwipeHandler"

.field private static sMessageReceiver:Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;


# instance fields
.field private mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

.field private mAppCanEnterPip:Z

.field private mMaxLauncherScale:F

.field private final mRunningOverHome:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public static synthetic $r8$lambda$G8NZ0zQCmZ4CTBjOBT_nteIHINA(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler;->updateHomeActivityTransformDuringSwipeUp(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRunningOverHome(Lcom/android/quickstep/FallbackSwipeHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msetHomeScaleAndAlpha(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/FallbackSwipeHandler;->setHomeScaleAndAlpha(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsMessageReceiver()Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;
    .locals 1

    sget-object v0, Lcom/android/quickstep/FallbackSwipeHandler;->sMessageReceiver:Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsMessageReceiver(Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;)V
    .locals 0

    sput-object p0, Lcom/android/quickstep/FallbackSwipeHandler;->sMessageReceiver:Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/quickstep/FallbackSwipeHandler;->sMessageReceiver:Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "taskAnimationManager"    # Lcom/android/quickstep/TaskAnimationManager;
    .param p4, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p5, "touchTimeMs"    # J
    .param p7, "continuingLastGesture"    # Z
    .param p8, "inputConsumer"    # Lcom/android/systemui/shared/system/InputConsumerController;

    .line 108
    invoke-direct/range {p0 .. p8}, Lcom/android/quickstep/AbsSwipeUpHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mMaxLauncherScale:F

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isHomeTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    .line 112
    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/quickstep/FallbackSwipeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/FallbackSwipeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/FallbackSwipeHandler;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 117
    :cond_0
    return-void
.end method

.method private setHomeScaleAndAlpha(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V
    .locals 4
    .param p1, "builder"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .param p2, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "verticalShift"    # F
    .param p4, "alpha"    # F

    .line 137
    iget v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mMaxLauncherScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p3, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    .line 138
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    .line 139
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget-object v3, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 138
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 140
    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 141
    return-void
.end method

.method private startHomeIntent(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 5
    .param p1, "gestureContractAnimationFactory"    # Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;
    .param p2, "runningTaskTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 159
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 160
    .local v0, "options":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 161
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 162
    iget-object v2, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1, v1, v2}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->-$$Nest$maddGestureContract(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Landroid/content/Intent;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 165
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/Utilities;->createHomeIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private updateHomeActivityTransformDuringSwipeUp(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .param p2, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 131
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 132
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    .line 131
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/quickstep/FallbackSwipeHandler;->setHomeScaleAndAlpha(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V

    .line 133
    return-void
.end method


# virtual methods
.method protected createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .locals 2
    .param p2, "duration"    # J
    .param p4, "isTargetTranslucent"    # Z
    .param p5, "appCanEnterPip"    # Z
    .param p6, "runningTaskTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;JZZ",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            ")",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;"
        }
    .end annotation

    .line 147
    .local p1, "launchCookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iput-boolean p5, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mAppCanEnterPip:Z

    .line 148
    if-eqz p5, :cond_0

    .line 149
    new-instance v0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory-IA;)V

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;J)V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    .line 152
    invoke-direct {p0, v0, p6}, Lcom/android/quickstep/FallbackSwipeHandler;->startHomeIntent(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 153
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    return-object v0
.end method

.method protected finishRecentsControllerToHome(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 185
    iget-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mAppCanEnterPip:Z

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/quickstep/FallbackSwipeHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/FallbackSwipeHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;Ljava/lang/Runnable;)V

    .local v0, "recentsCallback":Ljava/lang/Runnable;
    goto :goto_0

    .line 194
    .end local v0    # "recentsCallback":Ljava/lang/Runnable;
    :cond_0
    move-object v0, p1

    .line 196
    .restart local v0    # "recentsCallback":Ljava/lang/Runnable;
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->cleanupRemoteTargets()V

    .line 197
    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean v2, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mAppCanEnterPip:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    .line 199
    return-void
.end method

.method protected handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 1
    .param p1, "appearedTaskTarget"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->handleHomeTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    .line 176
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    return v0
.end method

.method protected initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 121
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    .line 122
    iget-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    if-eqz v0, :cond_0

    .line 124
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mMaxLauncherScale:F

    .line 127
    :cond_0
    return-void
.end method

.method synthetic lambda$finishRecentsControllerToHome$1$com-android-quickstep-FallbackSwipeHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 189
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/quickstep/FallbackSwipeHandler;->startHomeIntent(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 192
    return-void
.end method

.method synthetic lambda$new$0$com-android-quickstep-FallbackSwipeHandler(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 114
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/FallbackSwipeHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/FallbackSwipeHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setHomeBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;

    return-void
.end method

.method protected notifyGestureAnimationStartToRecents()V
    .locals 3

    .line 213
    iget-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 216
    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks()[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 217
    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/fallback/FallbackRecentsView;->onGestureAnimationStartOnHome([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureAnimationStartToRecents()V

    .line 222
    :cond_1
    :goto_0
    return-void
.end method

.method protected switchToScreenshot()V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/FallbackSwipeHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->switchToScreenshot()V

    .line 209
    :goto_0
    return-void
.end method
