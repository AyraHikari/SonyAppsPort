.class Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;
.super Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.source "FallbackSwipeHandler.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/FallbackSwipeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FallbackHomeAnimationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;",
        "Ljava/util/function/Consumer<",
        "Landroid/os/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private mAnimationFinished:Z

.field private final mDuration:J

.field private final mHomeAlpha:Lcom/android/quickstep/AnimatedFloat;

.field private final mHomeAlphaParams:Lcom/android/quickstep/util/TransformParams;

.field private mOnFinishCallback:Landroid/os/Message;

.field private final mRecentsAlpha:Lcom/android/quickstep/AnimatedFloat;

.field private mSpringAnim:Lcom/android/quickstep/util/RectFSpringAnim;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mVerticalShiftForScale:Lcom/android/quickstep/AnimatedFloat;

.field final synthetic this$0:Lcom/android/quickstep/FallbackSwipeHandler;


# direct methods
.method public static synthetic $r8$lambda$-ulMF_2XgZ5xXA-FbcN4N5eBUN0(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->onRectAnimationEnd()V

    return-void
.end method

.method public static synthetic $r8$lambda$987qRFqgHZsE8peEBab9Uefl8vI(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->updateHomeActivityTransformDuringHomeAnim(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TdfhA5WK8q1Zc3SHeZ14MDoP2IQ(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->updateRecentsActivityTransformDuringHomeAnim(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zZE0TXdUFdVUlvtBQSpXM6SQ32g(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->updateHomeAlpha()V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddGestureContract(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Landroid/content/Intent;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->addGestureContract(Landroid/content/Intent;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler;J)V
    .locals 6
    .param p2, "duration"    # J

    .line 253
    iput-object p1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    invoke-direct {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mTempRect:Landroid/graphics/Rect;

    .line 238
    new-instance v0, Lcom/android/quickstep/util/TransformParams;

    invoke-direct {v0}, Lcom/android/quickstep/util/TransformParams;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mHomeAlphaParams:Lcom/android/quickstep/util/TransformParams;

    .line 241
    new-instance v1, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v1}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mVerticalShiftForScale:Lcom/android/quickstep/AnimatedFloat;

    .line 242
    new-instance v2, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v2}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mRecentsAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 244
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mTargetRect:Landroid/graphics/RectF;

    .line 254
    iput-wide p2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mDuration:J

    .line 256
    invoke-static {p1}, Lcom/android/quickstep/FallbackSwipeHandler;->-$$Nest$fgetmRunningOverHome(Lcom/android/quickstep/FallbackSwipeHandler;)Z

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    .line 257
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mHomeAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 258
    iget-object v3, p1, Lcom/android/quickstep/FallbackSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    sub-float v3, v5, v3

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v3

    iput v3, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 259
    iget-object v0, p1, Lcom/android/quickstep/FallbackSwipeHandler;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iput v0, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 260
    new-instance v0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/FallbackSwipeHandler;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 265
    :cond_0
    new-instance v1, Lcom/android/quickstep/AnimatedFloat;

    new-instance v3, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    invoke-direct {v1, v3}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mHomeAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 266
    iput v4, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 267
    new-instance v1, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setHomeBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;

    .line 271
    :goto_0
    iput v5, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 272
    new-instance v0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/FallbackSwipeHandler;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 276
    return-void
.end method

.method private addGestureContract(Landroid/content/Intent;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 401
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    invoke-static {v0}, Lcom/android/quickstep/FallbackSwipeHandler;->-$$Nest$fgetmRunningOverHome(Lcom/android/quickstep/FallbackSwipeHandler;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v0, p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    .line 406
    .local v0, "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 407
    invoke-static {}, Lcom/android/quickstep/FallbackSwipeHandler;->-$$Nest$sfgetsMessageReceiver()Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;

    move-result-object v1

    if-nez v1, :cond_1

    .line 408
    new-instance v1, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;-><init>(Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver-IA;)V

    invoke-static {v1}, Lcom/android/quickstep/FallbackSwipeHandler;->-$$Nest$sfputsMessageReceiver(Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;)V

    .line 411
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v1, "gestureNavContract":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 413
    iget v2, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "android.intent.extra.USER"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 414
    invoke-static {}, Lcom/android/quickstep/FallbackSwipeHandler;->-$$Nest$sfgetsMessageReceiver()Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;

    move-result-object v2

    .line 415
    invoke-virtual {v2, p0}, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->newCallback(Ljava/util/function/Consumer;)Landroid/os/Message;

    move-result-object v2

    .line 414
    const-string v3, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 416
    const-string v2, "gesture_nav_contract_v1"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 418
    .end local v1    # "gestureNavContract":Landroid/os/Bundle;
    :cond_2
    return-void

    .line 402
    .end local v0    # "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    :cond_3
    :goto_0
    return-void
.end method

.method private maybeSendEndMessage()V
    .locals 3

    .line 358
    iget-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mAnimationFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mOnFinishCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 360
    :try_start_0
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mOnFinishCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FallbackSwipeHandler"

    const-string v2, "Error sending icon position"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private onRectAnimationEnd()V
    .locals 1

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mAnimationFinished:Z

    .line 354
    invoke-direct {p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->maybeSendEndMessage()V

    .line 355
    return-void
.end method

.method private updateHomeActivityTransformDuringHomeAnim(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 3
    .param p1, "builder"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .param p2, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 294
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mVerticalShiftForScale:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mHomeAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/quickstep/FallbackSwipeHandler;->-$$Nest$msetHomeScaleAndAlpha(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V

    .line 295
    return-void
.end method

.method private updateHomeAlpha()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mHomeAlphaParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mHomeAlphaParams:Lcom/android/quickstep/util/TransformParams;

    sget-object v1, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->NO_OP:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 308
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 310
    :cond_0
    return-void
.end method

.method private updateRecentsActivityTransformDuringHomeAnim(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .param p2, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 289
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mRecentsAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 290
    return-void
.end method


# virtual methods
.method public accept(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 370
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 371
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "gesture_nav_contract_icon_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 372
    .local v1, "position":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 373
    const-string v2, "gesture_nav_contract_surface_control"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    iput-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 374
    iget-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 375
    iget-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mSpringAnim:Lcom/android/quickstep/util/RectFSpringAnim;

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {v2}, Lcom/android/quickstep/util/RectFSpringAnim;->onTargetPositionChanged()V

    .line 378
    :cond_0
    const-string v2, "gesture_nav_contract_finish_callback"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    iput-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mOnFinishCallback:Landroid/os/Message;

    .line 380
    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->maybeSendEndMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "position":Landroid/graphics/RectF;
    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 384
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->accept(Landroid/os/Message;)V

    return-void
.end method

.method public createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 5

    .line 300
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    iget-wide v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 301
    .local v0, "pa":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mRecentsAlpha:Lcom/android/quickstep/AnimatedFloat;

    sget-object v2, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 302
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    return-object v1
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mTargetRect:Landroid/graphics/RectF;

    invoke-super {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mTargetRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public handleHomeTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 7
    .param p1, "appearedTaskTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 313
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 314
    .local v1, "appearedTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 315
    new-instance v2, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aput-object v1, v4, v0

    new-array v5, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    new-array v0, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget v6, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    invoke-direct {v2, v4, v5, v0, v6}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    move-object v0, v2

    .line 319
    .local v0, "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    iget-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mHomeAlphaParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v2, v0}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    .line 320
    invoke-direct {p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->updateHomeAlpha()V

    .line 321
    return v3

    .line 323
    .end local v0    # "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    :cond_0
    return v0
.end method

.method synthetic lambda$new$0$com-android-quickstep-FallbackSwipeHandler$FallbackHomeAnimationFactory(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 261
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setHomeBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;

    return-void
.end method

.method synthetic lambda$new$1$com-android-quickstep-FallbackSwipeHandler$FallbackHomeAnimationFactory(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 273
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setBaseBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;

    return-void
.end method

.method public playAtomicAnimation(F)V
    .locals 5
    .param p1, "velocity"    # F

    .line 328
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mHomeAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 329
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    iget-wide v3, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mDuration:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 332
    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    invoke-static {v1}, Lcom/android/quickstep/FallbackSwipeHandler;->-$$Nest$fgetmRunningOverHome(Lcom/android/quickstep/FallbackSwipeHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    new-instance v1, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    iget-object v3, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    iget-object v3, v3, Lcom/android/quickstep/FallbackSwipeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mVerticalShiftForScale:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 335
    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    const/4 v3, 0x0

    .line 336
    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    neg-float v3, p1

    iget-object v4, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    iget v4, v4, Lcom/android/quickstep/FallbackSwipeHandler;->mTransitionDragLength:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 337
    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartVelocity(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->this$0:Lcom/android/quickstep/FallbackSwipeHandler;

    iget-object v3, v3, Lcom/android/quickstep/FallbackSwipeHandler;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 338
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setMinimumVisibleChange(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    .line 339
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    const/high16 v2, 0x44480000    # 800.0f

    .line 340
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mVerticalShiftForScale:Lcom/android/quickstep/AnimatedFloat;

    sget-object v3, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    .line 341
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 344
    :cond_0
    return-void
.end method

.method public setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 1
    .param p1, "anim"    # Lcom/android/quickstep/util/RectFSpringAnim;

    .line 348
    iput-object p1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mSpringAnim:Lcom/android/quickstep/util/RectFSpringAnim;

    .line 349
    new-instance v0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory$$ExternalSyntheticLambda5;-><init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    return-void
.end method

.method public update(Landroid/graphics/RectF;FF)V
    .locals 5
    .param p1, "currentRect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "radius"    # F

    .line 388
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 390
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 392
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->mTempRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;

    .line 393
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 398
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_0
    :goto_0
    return-void
.end method
