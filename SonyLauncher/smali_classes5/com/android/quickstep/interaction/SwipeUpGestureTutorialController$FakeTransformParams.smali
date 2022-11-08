.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;
.super Lcom/android/quickstep/util/TransformParams;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeTransformParams"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-direct {p0}, Lcom/android/quickstep/util/TransformParams;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V

    return-void
.end method


# virtual methods
.method public applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 3
    .param p1, "params"    # [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 426
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 427
    .local v0, "p":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v1, v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 428
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v1, v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iget-object v2, v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 429
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->-$$Nest$fgetmFakeTaskViewRect(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 430
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget v2, v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    invoke-static {v1, v2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->-$$Nest$fputmFakeTaskViewRadius(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V

    .line 431
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v1, v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 432
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v1, v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->invalidateOutline()V

    .line 433
    return-void
.end method

.method public createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    .locals 4
    .param p1, "proxy"    # Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    .line 419
    new-instance v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 420
    .local v0, "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    invoke-interface {p1, v0, v1, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    .line 421
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    return-object v1
.end method
