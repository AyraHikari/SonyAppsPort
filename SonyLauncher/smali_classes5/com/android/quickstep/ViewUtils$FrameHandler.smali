.class Lcom/android/quickstep/ViewUtils$FrameHandler;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameHandler"
.end annotation


# instance fields
.field final mCancelled:Ljava/util/function/BooleanSupplier;

.field mDeferFrameCount:I

.field final mFinishCallback:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field final mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public static synthetic $r8$lambda$qa7dMCz_njMc_l03GJzIAd-ojmU(Lcom/android/quickstep/ViewUtils$FrameHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/ViewUtils$FrameHandler;->onFrame()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mschedule(Lcom/android/quickstep/ViewUtils$FrameHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/ViewUtils$FrameHandler;->schedule()Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finishCallback"    # Ljava/lang/Runnable;
    .param p3, "cancelled"    # Ljava/util/function/BooleanSupplier;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mDeferFrameCount:I

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 59
    iput-object p2, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mFinishCallback:Ljava/lang/Runnable;

    .line 60
    iput-object p3, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mCancelled:Ljava/util/function/BooleanSupplier;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method private onFrame()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mCancelled:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    iget v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mDeferFrameCount:I

    if-lez v0, :cond_1

    .line 75
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mDeferFrameCount:I

    .line 76
    invoke-direct {p0}, Lcom/android/quickstep/ViewUtils$FrameHandler;->schedule()Z

    .line 77
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mFinishCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 81
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 83
    :cond_2
    return-void
.end method

.method private schedule()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onFrameDraw(J)V
    .locals 2
    .param p1, "frame"    # J

    .line 66
    iget-object v0, p0, Lcom/android/quickstep/ViewUtils$FrameHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/ViewUtils$FrameHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/ViewUtils$FrameHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/ViewUtils$FrameHandler;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method
