.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Runner"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityLaunchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,622:1\n1275#2,2:623\n1275#2,2:625\n1#3:627\n*S KotlinDebug\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner\n*L\n411#1:623,2\n423#1:625,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0087\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0018\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010&\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020\u0008H\u0016JU\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*2\u0010\u0010+\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u001f\u0018\u00010,2\u0010\u0010-\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u001f\u0018\u00010,2\u0010\u0010.\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u001f\u0018\u00010,2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0002\u00101J\u0008\u00102\u001a\u00020\u001dH\u0002J\r\u00103\u001a\u00020\u001dH\u0000\u00a2\u0006\u0002\u00084J\u0008\u00105\u001a\u00020\u001dH\u0002J;\u00106\u001a\u00020\u001d2\u0010\u0010+\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u001f\u0018\u00010,2\u0010\u0010.\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u001f\u0018\u00010,2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0002\u00a2\u0006\u0002\u00107J\u000c\u00108\u001a\u00020\u001d*\u000200H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;",
        "Landroid/view/IRemoteAnimationRunner$Stub;",
        "controller",
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
        "(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V",
        "animation",
        "Lcom/android/systemui/animation/LaunchAnimator$Animation;",
        "cancelled",
        "",
        "context",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "invertMatrix",
        "Landroid/graphics/Matrix;",
        "launchContainer",
        "Landroid/view/ViewGroup;",
        "matrix",
        "onTimeout",
        "Ljava/lang/Runnable;",
        "timedOut",
        "transactionApplier",
        "Landroid/view/SyncRtSurfaceTransactionApplier;",
        "transactionApplierView",
        "Landroid/view/View;",
        "windowCrop",
        "Landroid/graphics/Rect;",
        "windowCropF",
        "Landroid/graphics/RectF;",
        "applyStateToNavigationBar",
        "",
        "navigationBar",
        "Landroid/view/RemoteAnimationTarget;",
        "state",
        "Lcom/android/systemui/animation/LaunchAnimator$State;",
        "linearProgress",
        "",
        "applyStateToWindow",
        "window",
        "onAnimationCancelled",
        "isKeyguardOccluded",
        "onAnimationStart",
        "transit",
        "",
        "apps",
        "",
        "wallpapers",
        "nonApps",
        "iCallback",
        "Landroid/view/IRemoteAnimationFinishedCallback;",
        "(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V",
        "onAnimationTimedOut",
        "postTimeout",
        "postTimeout$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib",
        "removeTimeout",
        "startAnimation",
        "([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V",
        "invoke",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private animation:Lcom/android/systemui/animation/LaunchAnimator$Animation;

.field private cancelled:Z

.field private final context:Landroid/content/Context;

.field private final controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field private final invertMatrix:Landroid/graphics/Matrix;

.field private final launchContainer:Landroid/view/ViewGroup;

.field private final matrix:Landroid/graphics/Matrix;

.field private onTimeout:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field private timedOut:Z

.field private final transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final transactionApplierView:Landroid/view/View;

.field private windowCrop:Landroid/graphics/Rect;

.field private windowCropF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/animation/ActivityLaunchAnimator;
    .param p2, "controller"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 345
    invoke-interface {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    .line 346
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    .line 348
    invoke-interface {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplierView:Landroid/view/View;

    .line 349
    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 351
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    .line 352
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invertMatrix:Landroid/graphics/Matrix;

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    .line 354
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    .line 365
    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onTimeout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onTimeout$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    .line 344
    return-void
.end method

.method public static final synthetic access$applyStateToNavigationBar(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;F)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .param p1, "navigationBar"    # Landroid/view/RemoteAnimationTarget;
    .param p2, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p3, "linearProgress"    # F

    .line 343
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->applyStateToNavigationBar(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;F)V

    return-void
.end method

.method public static final synthetic access$applyStateToWindow(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .param p1, "window"    # Landroid/view/RemoteAnimationTarget;
    .param p2, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->applyStateToWindow(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;)V

    return-void
.end method

.method public static final synthetic access$getAnimation$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/LaunchAnimator$Animation;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 343
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->animation:Lcom/android/systemui/animation/LaunchAnimator$Animation;

    return-object v0
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 343
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    return-object v0
.end method

.method public static final synthetic access$invoke(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .param p1, "$receiver"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 343
    invoke-direct {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public static final synthetic access$onAnimationTimedOut(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onAnimationTimedOut()V

    return-void
.end method

.method public static final synthetic access$startAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .param p1, "apps"    # [Landroid/view/RemoteAnimationTarget;
    .param p2, "nonApps"    # [Landroid/view/RemoteAnimationTarget;
    .param p3, "iCallback"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 343
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method private final applyStateToNavigationBar(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;F)V
    .locals 15
    .param p1, "navigationBar"    # Landroid/view/RemoteAnimationTarget;
    .param p2, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p3, "linearProgress"    # F

    .line 560
    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplierView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-nez v2, :cond_0

    .line 563
    return-void

    .line 566
    :cond_0
    sget-object v3, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    sget-object v4, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 567
    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getANIMATION_DELAY_NAV_FADE_IN$cp()J

    move-result-wide v6

    const-wide/16 v8, 0x85

    .line 566
    move/from16 v5, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result v2

    .line 569
    .local v2, "fadeInProgress":F
    new-instance v3, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v4, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 570
    .local v3, "params":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_1

    .line 571
    iget-object v5, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 572
    iget-object v5, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    .line 573
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v8

    iget-object v9, v1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 572
    invoke-virtual {v5, v4, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 574
    iget-object v4, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v9

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 575
    nop

    .line 576
    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getNAV_FADE_IN_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v4

    .line 577
    iget-object v5, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v4

    .line 578
    iget-object v5, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v4

    .line 579
    invoke-virtual {v4, v6}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    goto :goto_0

    .line 581
    :cond_1
    sget-object v8, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    sget-object v9, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    const-wide/16 v11, 0x0

    .line 582
    const-wide/16 v13, 0x85

    .line 581
    move/from16 v10, p3

    invoke-virtual/range {v8 .. v14}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result v4

    .line 583
    .local v4, "fadeOutProgress":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getNAV_FADE_OUT_INTERPOLATOR$cp()Landroid/view/animation/PathInterpolator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v8

    sub-float/2addr v5, v8

    invoke-virtual {v3, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 586
    .end local v4    # "fadeOutProgress":F
    :goto_0
    iget-object v4, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array v5, v6, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 587
    return-void
.end method

.method private final applyStateToWindow(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;)V
    .locals 20
    .param p1, "window"    # Landroid/view/RemoteAnimationTarget;
    .param p2, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 497
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplierView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-nez v2, :cond_0

    .line 500
    return-void

    .line 503
    :cond_0
    iget-object v2, v1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 504
    .local v2, "screenBounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 505
    .local v3, "centerX":F
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 506
    .local v5, "centerY":F
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    .line 507
    .local v6, "width":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 511
    .local v7, "height":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 512
    .local v8, "widthRatio":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v7

    div-float/2addr v9, v10

    .line 513
    .local v9, "heightRatio":F
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 514
    .local v10, "scale":F
    iget-object v11, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 515
    iget-object v11, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v10, v10, v3, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 518
    int-to-float v11, v7

    mul-float/2addr v11, v10

    int-to-float v12, v7

    sub-float/2addr v11, v12

    .line 519
    .local v11, "heightChange":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getCenterX()F

    move-result v12

    sub-float/2addr v12, v3

    .line 520
    .local v12, "translationX":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v13

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    div-float v4, v11, v4

    add-float/2addr v13, v4

    .line 521
    .local v13, "translationY":F
    iget-object v4, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 526
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget v14, v2, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float/2addr v4, v14

    .line 527
    .local v4, "cropX":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v14

    int-to-float v14, v14

    iget v15, v2, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    .line 528
    .local v14, "cropY":F
    iget-object v15, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    move-object/from16 v16, v2

    .end local v2    # "screenBounds":Landroid/graphics/Rect;
    .local v16, "screenBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    move/from16 v17, v3

    .end local v3    # "centerX":F
    .local v17, "centerX":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v14

    invoke-virtual {v15, v4, v14, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 529
    iget-object v2, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 530
    iget-object v2, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invertMatrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 531
    iget-object v2, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    .line 532
    iget-object v3, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 533
    iget-object v15, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    invoke-static {v15}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    .line 534
    move/from16 v18, v4

    .end local v4    # "cropX":F
    .local v18, "cropX":F
    iget-object v4, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    .line 535
    move/from16 v19, v5

    .end local v5    # "centerY":F
    .local v19, "centerY":F
    iget-object v5, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    .line 531
    invoke-virtual {v2, v3, v15, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v10

    .line 544
    .local v2, "cornerRadius":F
    new-instance v3, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v4, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 545
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    .line 546
    iget-object v4, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    .line 547
    iget-object v4, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    .line 548
    invoke-virtual {v3, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    .line 549
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    .line 550
    invoke-virtual {v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v3

    .line 544
    nop

    .line 552
    .local v3, "params":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    iget-object v5, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array v4, v4, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v15, 0x0

    aput-object v3, v4, v15

    invoke-virtual {v5, v4}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 553
    return-void
.end method

.method private final invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 1
    .param p1, "$this$invoke"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 614
    nop

    .line 615
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 619
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private final onAnimationTimedOut()V
    .locals 2

    .line 590
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    if-eqz v0, :cond_0

    .line 591
    return-void

    .line 594
    :cond_0
    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Remote animation timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->timedOut:Z

    .line 596
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    .line 597
    return-void
.end method

.method private final removeTimeout()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method

.method private final startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 21
    .param p1, "apps"    # [Landroid/view/RemoteAnimationTarget;
    .param p2, "nonApps"    # [Landroid/view/RemoteAnimationTarget;
    .param p3, "iCallback"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 407
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 411
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v6, v1

    goto :goto_1

    :cond_0
    move-object/from16 v2, p1

    .local v2, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 623
    .local v3, "$i$f$firstOrNull":I
    array-length v4, v2

    move v5, v0

    :cond_1
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .local v6, "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object v10, v6

    .local v10, "it":Landroid/view/RemoteAnimationTarget;
    const/4 v11, 0x0

    .line 412
    .local v11, "$i$a$-firstOrNull-ActivityLaunchAnimator$Runner$startAnimation$window$1":I
    iget v12, v10, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v12, :cond_2

    move v10, v9

    goto :goto_0

    :cond_2
    move v10, v0

    .end local v10    # "it":Landroid/view/RemoteAnimationTarget;
    .end local v11    # "$i$a$-firstOrNull-ActivityLaunchAnimator$Runner$startAnimation$window$1":I
    :goto_0
    if-eqz v10, :cond_1

    goto :goto_1

    .line 624
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_3
    move-object v6, v1

    .line 411
    .end local v2    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_1
    move-object v10, v6

    .line 415
    .local v10, "window":Landroid/view/RemoteAnimationTarget;
    if-nez v10, :cond_5

    .line 416
    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Aborting the animation as no window is opening"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->removeTimeout()V

    .line 418
    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {v7, v8}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 419
    :goto_2
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    .line 420
    return-void

    .line 423
    :cond_5
    if-nez p2, :cond_6

    move-object v6, v1

    goto :goto_4

    :cond_6
    move-object/from16 v2, p2

    .restart local v2    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 625
    .restart local v3    # "$i$f$firstOrNull":I
    array-length v4, v2

    move v5, v0

    :cond_7
    if-ge v5, v4, :cond_9

    aget-object v6, v2, v5

    .restart local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object v11, v6

    .local v11, "it":Landroid/view/RemoteAnimationTarget;
    const/4 v12, 0x0

    .line 424
    .local v12, "$i$a$-firstOrNull-ActivityLaunchAnimator$Runner$startAnimation$navigationBar$1":I
    iget v13, v11, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v14, 0x7e3

    if-ne v13, v14, :cond_8

    move v11, v9

    goto :goto_3

    :cond_8
    move v11, v0

    .end local v11    # "it":Landroid/view/RemoteAnimationTarget;
    .end local v12    # "$i$a$-firstOrNull-ActivityLaunchAnimator$Runner$startAnimation$navigationBar$1":I
    :goto_3
    if-eqz v11, :cond_7

    goto :goto_4

    .line 626
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_9
    move-object v6, v1

    .line 423
    .end local v2    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_4
    nop

    .line 427
    .local v6, "navigationBar":Landroid/view/RemoteAnimationTarget;
    iget-object v11, v10, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 428
    .local v11, "windowBounds":Landroid/graphics/Rect;
    new-instance v0, Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 429
    iget v13, v11, Landroid/graphics/Rect;->top:I

    .line 430
    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    .line 431
    iget v15, v11, Landroid/graphics/Rect;->left:I

    .line 432
    iget v2, v11, Landroid/graphics/Rect;->right:I

    .line 428
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x30

    const/16 v20, 0x0

    move-object v12, v0

    move/from16 v16, v2

    invoke-direct/range {v12 .. v20}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 434
    .local v12, "endState":Lcom/android/systemui/animation/LaunchAnimator$State;
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->getCallback()Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v0

    .line 435
    .local v13, "callback":Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;
    iget-object v0, v10, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_a

    goto :goto_5

    .line 627
    .local v0, "it":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_a
    const/4 v1, 0x0

    .line 435
    .local v1, "$i$a$-let-ActivityLaunchAnimator$Runner$startAnimation$windowBackgroundColor$1":I
    move-object v2, v0

    check-cast v2, Landroid/app/TaskInfo;

    invoke-interface {v13, v2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;->getBackgroundColor(Landroid/app/TaskInfo;)I

    move-result v0

    .end local v0    # "it":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v1    # "$i$a$-let-ActivityLaunchAnimator$Runner$startAnimation$windowBackgroundColor$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_b

    .line 436
    iget v0, v10, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    goto :goto_6

    .line 435
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6
    move v14, v0

    .line 439
    .local v14, "windowBackgroundColor":I
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->isDialogLaunch()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 440
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getDialogToAppAnimator$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator;

    move-result-object v0

    goto :goto_7

    .line 442
    :cond_c
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getLaunchAnimator$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator;

    move-result-object v0

    .line 439
    :goto_7
    move-object v15, v0

    .line 448
    .local v15, "launchAnimator":Lcom/android/systemui/animation/LaunchAnimator;
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v15, v0, v12}, Lcom/android/systemui/animation/LaunchAnimator;->isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$State;)Z

    move-result v0

    .line 447
    move/from16 v16, v0

    .line 449
    .local v16, "isExpandingFullyAbove":Z
    if-eqz v16, :cond_d

    .line 452
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    goto :goto_8

    .line 456
    :cond_d
    const/4 v0, 0x0

    .line 449
    :goto_8
    move v5, v0

    .line 458
    .local v5, "endRadius":F
    invoke-virtual {v12, v5}, Lcom/android/systemui/animation/LaunchAnimator$State;->setTopCornerRadius(F)V

    .line 459
    invoke-virtual {v12, v5}, Lcom/android/systemui/animation/LaunchAnimator$State;->setBottomCornerRadius(F)V

    .line 462
    iget-object v4, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 463
    .local v4, "delegate":Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    new-instance v17, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;

    iget-object v2, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    move-object/from16 v0, v17

    move-object v1, v4

    move-object/from16 v3, p3

    move-object/from16 v18, v4

    .end local v4    # "delegate":Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .local v18, "delegate":Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    move-object/from16 v4, p0

    move/from16 v19, v5

    .end local v5    # "endRadius":F
    .local v19, "endRadius":F
    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator;Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V

    .line 492
    .local v0, "controller":Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;
    nop

    .line 493
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/animation/LaunchAnimator$Controller;

    .line 492
    invoke-virtual {v15, v1, v12, v14, v9}, Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$Animation;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->animation:Lcom/android/systemui/animation/LaunchAnimator$Animation;

    .line 494
    return-void
.end method


# virtual methods
.method public onAnimationCancelled(Z)V
    .locals 2
    .param p1, "isKeyguardOccluded"    # Z

    .line 600
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->timedOut:Z

    if-eqz v0, :cond_0

    .line 601
    return-void

    .line 604
    :cond_0
    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Remote animation was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    .line 606
    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->removeTimeout()V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "apps"    # [Landroid/view/RemoteAnimationTarget;
    .param p3, "wallpapers"    # [Landroid/view/RemoteAnimationTarget;
    .param p4, "nonApps"    # [Landroid/view/RemoteAnimationTarget;
    .param p5, "iCallback"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->removeTimeout()V

    .line 386
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->timedOut:Z

    if-eqz v0, :cond_1

    .line 387
    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p5}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 388
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    if-eqz v0, :cond_2

    .line 394
    return-void

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;

    invoke-direct {v1, p0, p2, p4, p5}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method public final postTimeout$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    return-void
.end method
