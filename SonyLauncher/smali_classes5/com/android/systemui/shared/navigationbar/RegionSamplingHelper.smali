.class public Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;
.super Ljava/lang/Object;
.source "RegionSamplingHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;,
        Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;
    }
.end annotation


# static fields
.field private static final NAVIGATION_LUMINANCE_CHANGE_THRESHOLD:F = 0.05f

.field private static final NAVIGATION_LUMINANCE_THRESHOLD:F = 0.5f


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

.field private final mCompositionSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

.field private mCurrentMedianLuma:F

.field private mFirstSamplingAfterStart:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mLastMedianLuma:F

.field private final mRegisteredSamplingBounds:Landroid/graphics/Rect;

.field private mRegisteredStopLayer:Landroid/view/SurfaceControl;

.field private mRemoveDrawRunnable:Ljava/lang/Runnable;

.field private final mSampledView:Landroid/view/View;

.field private mSamplingEnabled:Z

.field private final mSamplingListener:Landroid/view/CompositionSamplingListener;

.field private mSamplingListenerRegistered:Z

.field private final mSamplingRequestBounds:Landroid/graphics/Rect;

.field private mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private mWaitingOnDraw:Z

.field private mWindowHasBlurs:Z

.field private mWindowVisible:Z

.field private mWrappedStopLayer:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "sampledView"    # Landroid/view/View;
    .param p2, "samplingCallback"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;
    .param p3, "backgroundExecutor"    # Ljava/util/concurrent/Executor;

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1, "sampledView"    # Landroid/view/View;
    .param p2, "samplingCallback"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;
    .param p3, "mainExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "backgroundExecutor"    # Ljava/util/concurrent/Executor;

    .line 106
    new-instance v5, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

    invoke-direct {v5}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;)V

    .line 108
    return-void
.end method

.method constructor <init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;)V
    .locals 1
    .param p1, "sampledView"    # Landroid/view/View;
    .param p2, "samplingCallback"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;
    .param p3, "mainExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "compositionSamplingListener"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    .line 79
    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    .line 80
    new-instance v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 88
    new-instance v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$2;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    .line 114
    iput-object p4, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 115
    iput-object p5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCompositionSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

    .line 116
    new-instance v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    .line 124
    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    .line 125
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 126
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 128
    iput-object p2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->onDraw()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;
    .param p1, "x1"    # F

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateMediaLuma(F)V

    return-void
.end method

.method private onDraw()V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 136
    :cond_0
    return-void
.end method

.method private unregisterSamplingListener()V
    .locals 3

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    .line 239
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    .line 240
    .local v0, "wrappedStopLayer":Landroid/view/SurfaceControl;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    .line 241
    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    .line 242
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Landroid/view/SurfaceControl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 250
    .end local v0    # "wrappedStopLayer":Landroid/view/SurfaceControl;
    :cond_0
    return-void
.end method

.method private updateMediaLuma(F)V
    .locals 2
    .param p1, "medianLuma"    # F

    .line 253
    iput p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCurrentMedianLuma:F

    .line 257
    iget v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mLastMedianLuma:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;->onRegionDarknessChanged(Z)V

    .line 261
    iput p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mLastMedianLuma:F

    .line 263
    :cond_1
    return-void
.end method

.method private updateSamplingListener()V
    .locals 7

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    .line 181
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowHasBlurs:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 185
    .local v0, "isSamplingEnabled":Z
    :goto_0
    if-eqz v0, :cond_9

    .line 186
    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 187
    .local v3, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/4 v4, 0x0

    .line 188
    .local v4, "stopLayerControl":Landroid/view/SurfaceControl;
    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 191
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-nez v5, :cond_6

    .line 192
    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    if-nez v5, :cond_5

    .line 193
    iput-boolean v2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    .line 197
    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 198
    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 200
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 205
    :cond_5
    :goto_1
    const/4 v4, 0x0

    .line 207
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    if-eq v5, v4, :cond_8

    .line 210
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->unregisterSamplingListener()V

    .line 211
    iput-boolean v2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    .line 212
    invoke-virtual {p0, v4}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->wrap(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v2

    .line 213
    .local v2, "wrappedStopLayer":Landroid/view/SurfaceControl;
    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Landroid/view/SurfaceControl;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    iput-object v4, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    .line 222
    iput-object v2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    .line 224
    .end local v2    # "wrappedStopLayer":Landroid/view/SurfaceControl;
    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    .line 225
    .end local v3    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v4    # "stopLayerControl":Landroid/view/SurfaceControl;
    goto :goto_2

    .line 226
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->unregisterSamplingListener()V

    .line 228
    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 287
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 288
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RegionSamplingHelper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tsampleView isAttached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tsampleView isScValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 295
    :cond_0
    const-string v1, "notAttached"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmSamplingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmSamplingListenerRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmSamplingRequestBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmRegisteredSamplingBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmLastMedianLuma: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mLastMedianLuma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmCurrentMedianLuma: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCurrentMedianLuma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmWindowVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmWindowHasBlurs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowHasBlurs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmWaitingOnDraw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmRegisteredStopLayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmWrappedStopLayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmIsDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mIsDestroyed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method synthetic lambda$unregisterSamplingListener$1$com-android-systemui-shared-navigationbar-RegionSamplingHelper(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "wrappedStopLayer"    # Landroid/view/SurfaceControl;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCompositionSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    .line 245
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 248
    :cond_0
    return-void
.end method

.method synthetic lambda$updateSamplingListener$0$com-android-systemui-shared-navigationbar-RegionSamplingHelper(Landroid/view/SurfaceControl;)V
    .locals 4
    .param p1, "wrappedStopLayer"    # Landroid/view/SurfaceControl;

    .line 214
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCompositionSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;->register(Landroid/view/CompositionSamplingListener;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 219
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingRect()V

    .line 177
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 166
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stopAndDestroy()V

    .line 171
    return-void
.end method

.method public setWindowHasBlurs(Z)V
    .locals 0
    .param p1, "hasBlurs"    # Z

    .line 282
    iput-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowHasBlurs:Z

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 284
    return-void
.end method

.method public setWindowVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 274
    iput-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 276
    return-void
.end method

.method public start(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "initialSamplingBounds"    # Landroid/graphics/Rect;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    invoke-interface {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;->isSamplingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 145
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    .line 147
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mLastMedianLuma:F

    .line 148
    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 150
    return-void
.end method

.method public stop()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 155
    return-void
.end method

.method public stopAndDestroy()V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/CompositionSamplingListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mIsDestroyed:Z

    .line 161
    return-void
.end method

.method public updateSamplingRect()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;->getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 267
    .local v0, "sampledRegion":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 271
    :cond_0
    return-void
.end method

.method protected wrap(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .locals 2
    .param p1, "stopLayerControl"    # Landroid/view/SurfaceControl;

    .line 232
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v1, "regionSampling"

    invoke-direct {v0, p1, v1}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
