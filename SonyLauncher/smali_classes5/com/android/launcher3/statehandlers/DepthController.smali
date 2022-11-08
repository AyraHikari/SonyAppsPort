.class public Lcom/android/launcher3/statehandlers/DepthController;
.super Ljava/lang/Object;
.source "DepthController.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;"
    }
.end annotation


# static fields
.field public static final DEPTH:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/statehandlers/DepthController;",
            ">;"
        }
    .end annotation
.end field

.field private static final OVERLAY_SCROLL_ENABLED:Z


# instance fields
.field private mBlurDisabledForAppLaunch:Z

.field private final mCrossWindowBlurListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCrossWindowBlursEnabled:Z

.field private mCurrentBlur:I

.field private mDepth:F

.field private mHasContentBehindLauncher:Z

.field private mIgnoreStateChangesDuringMultiWindowAnimation:Z

.field private mInEarlyWakeUp:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mMaxBlurRadius:I

.field private mOnAttachListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mOpaquenessListener:Ljava/lang/Runnable;

.field private mOverlayScrollProgress:F

.field private mSurface:Landroid/view/SurfaceControl;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCrossWindowBlurListener(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCrossWindowBlurListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDepth(Lcom/android/launcher3/statehandlers/DepthController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLauncher(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpaquenessListener(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOpaquenessListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWallpaperManager(Lcom/android/launcher3/statehandlers/DepthController;)Landroid/app/WallpaperManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCrossWindowBlursEnabled(Lcom/android/launcher3/statehandlers/DepthController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCrossWindowBlursEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIgnoreStateChangesDuringMultiWindowAnimation(Lcom/android/launcher3/statehandlers/DepthController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIgnoreStateChangesDuringMultiWindowAnimation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchTransactionSurface(Lcom/android/launcher3/statehandlers/DepthController;F)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController;->dispatchTransactionSurface(F)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monAttached(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DepthController;->onAttached()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDepth(Lcom/android/launcher3/statehandlers/DepthController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController;->setDepth(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/android/launcher3/statehandlers/DepthController$1;

    const-string v1, "depth"

    invoke-direct {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/launcher3/statehandlers/DepthController$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DepthController$2;-><init>(Lcom/android/launcher3/statehandlers/DepthController;)V

    iput-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 110
    new-instance v0, Lcom/android/launcher3/statehandlers/DepthController$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DepthController$3;-><init>(Lcom/android/launcher3/statehandlers/DepthController;)V

    iput-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCrossWindowBlurListener:Ljava/util/function/Consumer;

    .line 118
    new-instance v0, Lcom/android/launcher3/statehandlers/DepthController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DepthController$4;-><init>(Lcom/android/launcher3/statehandlers/DepthController;)V

    iput-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOpaquenessListener:Ljava/lang/Runnable;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIgnoreStateChangesDuringMultiWindowAnimation:Z

    .line 166
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 167
    return-void
.end method

.method private dispatchTransactionSurface(F)Z
    .locals 9
    .param p1, "depth"    # F

    .line 317
    invoke-static {}, Lcom/android/systemui/shared/system/BlurUtils;->supportsBlursOnWindows()Z

    move-result v0

    .line 318
    .local v0, "supportsBlur":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 319
    :cond_0
    return v1

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DepthController;->ensureDependencies()V

    .line 322
    iget v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOverlayScrollProgress:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 323
    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherRootView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 324
    .local v2, "windowToken":Landroid/os/IBinder;
    if-eqz v2, :cond_2

    .line 325
    iget-object v3, p0, Lcom/android/launcher3/statehandlers/DepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3, v2, p1}, Landroid/app/WallpaperManager;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 328
    :cond_2
    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 329
    iget-object v4, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/views/ScrimView;->isFullyOpaque()Z

    move-result v4

    .line 330
    .local v4, "hasOpaqueBg":Z
    iget-boolean v5, p0, Lcom/android/launcher3/statehandlers/DepthController;->mHasContentBehindLauncher:Z

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v1

    .line 332
    .local v5, "isSurfaceOpaque":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCrossWindowBlursEnabled:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlurDisabledForAppLaunch:Z

    if-nez v6, :cond_5

    if-eqz v4, :cond_4

    goto :goto_1

    .line 333
    :cond_4
    iget v6, p0, Lcom/android/launcher3/statehandlers/DepthController;->mMaxBlurRadius:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    float-to-int v6, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v1

    :goto_2
    iput v6, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    .line 334
    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    iget v8, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    .line 335
    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    .line 336
    invoke-virtual {v6, v7, v5}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    .line 340
    .local v6, "transaction":Landroid/view/SurfaceControl$Transaction;
    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-lez v7, :cond_6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, p1, v7

    if-gez v7, :cond_6

    move v7, v3

    goto :goto_3

    :cond_6
    move v7, v1

    .line 341
    .local v7, "wantsEarlyWakeUp":Z
    :goto_3
    if-eqz v7, :cond_7

    iget-boolean v8, p0, Lcom/android/launcher3/statehandlers/DepthController;->mInEarlyWakeUp:Z

    if-nez v8, :cond_7

    .line 342
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    .line 343
    iput-boolean v3, p0, Lcom/android/launcher3/statehandlers/DepthController;->mInEarlyWakeUp:Z

    goto :goto_4

    .line 344
    :cond_7
    if-nez v7, :cond_8

    iget-boolean v8, p0, Lcom/android/launcher3/statehandlers/DepthController;->mInEarlyWakeUp:Z

    if-eqz v8, :cond_8

    .line 345
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;

    .line 346
    iput-boolean v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mInEarlyWakeUp:Z

    .line 349
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 350
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherRootView;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    .line 351
    .local v1, "rootSurfaceControl":Landroid/view/AttachedSurfaceControl;
    if-eqz v1, :cond_9

    .line 352
    invoke-interface {v1, v6}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 355
    .end local v1    # "rootSurfaceControl":Landroid/view/AttachedSurfaceControl;
    .end local v4    # "hasOpaqueBg":Z
    .end local v5    # "isSurfaceOpaque":Z
    .end local v6    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v7    # "wantsEarlyWakeUp":Z
    :cond_9
    return v3
.end method

.method private ensureDependencies()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$integer;->max_depth_blur_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mMaxBlurRadius:I

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOnAttachListener:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Lcom/android/launcher3/statehandlers/DepthController$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DepthController$5;-><init>(Lcom/android/launcher3/statehandlers/DepthController;)V

    iput-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOnAttachListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOnAttachListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherRootView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DepthController;->onAttached()V

    .line 198
    :cond_1
    return-void
.end method

.method private onAttached()V
    .locals 3

    .line 201
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCrossWindowBlurListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2}, Landroid/view/CrossWindowBlurListeners;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOpaquenessListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ScrimView;->addOpaquenessListener(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method private setDepth(F)V
    .locals 3
    .param p1, "depth"    # F

    .line 286
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    .line 288
    const/high16 v0, 0x43800000    # 256.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    .line 289
    .local v1, "depthI":I
    int-to-float v2, v1

    div-float/2addr v2, v0

    .line 290
    .local v2, "depthF":F
    iget v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/launcher3/statehandlers/DepthController;->dispatchTransactionSurface(F)Z

    .line 294
    iput v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    .line 295
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmMaxBlurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mMaxBlurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmCrossWindowBlursEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCrossWindowBlursEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmOverlayScrollProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOverlayScrollProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmCurrentBlur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmBlurDisabledForAppLaunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlurDisabledForAppLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmInEarlyWakeUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mInEarlyWakeUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmIgnoreStateChangesDuringMultiWindowAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIgnoreStateChangesDuringMultiWindowAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 5
    .param p1, "isInMultiWindowMode"    # Z

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIgnoreStateChangesDuringMultiWindowAnimation:Z

    .line 362
    sget-object v1, Lcom/android/launcher3/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    new-array v2, v0, [F

    iget-object v3, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 363
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4, p1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;Z)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 362
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 364
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 365
    .local v1, "mwAnimation":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/android/launcher3/statehandlers/DepthController$6;

    invoke-direct {v2, p0}, Lcom/android/launcher3/statehandlers/DepthController$6;-><init>(Lcom/android/launcher3/statehandlers/DepthController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 371
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 372
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 373
    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 299
    return-void
.end method

.method public setActivityStarted(Z)V
    .locals 2
    .param p1, "isStarted"    # Z

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)Z

    .line 220
    :goto_0
    return-void
.end method

.method public setHasContentBehindLauncher(Z)V
    .locals 0
    .param p1, "hasContentBehindLauncher"    # Z

    .line 207
    iput-boolean p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mHasContentBehindLauncher:Z

    .line 208
    return-void
.end method

.method public setIsInLaunchTransition(Z)V
    .locals 2
    .param p1, "inLaunchTransition"    # Z

    .line 276
    const-string v0, "ro.launcher.blur.appLaunch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 277
    .local v0, "blurEnabled":Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlurDisabledForAppLaunch:Z

    .line 278
    if-nez p1, :cond_1

    .line 281
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setDepth(F)V

    .line 283
    :cond_1
    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 3
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIgnoreStateChangesDuringMultiWindowAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    .line 249
    .local v0, "toDepth":F
    iget v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    invoke-direct {p0, v0}, Lcom/android/launcher3/statehandlers/DepthController;->setDepth(F)V

    goto :goto_0

    .line 251
    :cond_1
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_2

    .line 252
    iget v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-direct {p0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->dispatchTransactionSurface(F)Z

    goto :goto_0

    .line 253
    :cond_2
    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 256
    :cond_3
    :goto_0
    return-void

    .line 245
    .end local v0    # "toDepth":F
    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 4
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "animation"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 261
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIgnoreStateChangesDuringMultiWindowAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    .line 267
    .local v0, "toDepth":F
    iget v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    sget-object v1, Lcom/android/launcher3/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    const/16 v2, 0xd

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p3, p0, v1, v0, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 270
    :cond_1
    return-void

    .line 263
    .end local v0    # "toDepth":F
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/statehandlers/DepthController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public setSurface(Landroid/view/SurfaceControl;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .line 228
    if-nez p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 230
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object p1, v1

    .line 232
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    if-eq v0, p1, :cond_2

    .line 233
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    .line 234
    if-eqz p1, :cond_2

    .line 235
    iget v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-direct {p0, v0}, Lcom/android/launcher3/statehandlers/DepthController;->dispatchTransactionSurface(F)Z

    .line 236
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
