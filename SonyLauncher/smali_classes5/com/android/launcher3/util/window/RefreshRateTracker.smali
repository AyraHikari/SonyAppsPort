.class public Lcom/android/launcher3/util/window/RefreshRateTracker;
.super Ljava/lang/Object;
.source "RefreshRateTracker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field private static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/window/RefreshRateTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDM:Landroid/hardware/display/DisplayManager;

.field private mSingleFrameMs:I


# direct methods
.method public static synthetic $r8$lambda$Q1tWNsYLhYAL3xuueRPRMAas8Ak(Landroid/content/Context;)Lcom/android/launcher3/util/window/RefreshRateTracker;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/window/RefreshRateTracker;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/window/RefreshRateTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/window/RefreshRateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/util/window/RefreshRateTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/window/RefreshRateTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mSingleFrameMs:I

    .line 45
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mDM:Landroid/hardware/display/DisplayManager;

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->updateSingleFrameMs()V

    .line 47
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 48
    return-void
.end method

.method public static getSingleFrameMs(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/android/launcher3/util/window/RefreshRateTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/RefreshRateTracker;

    iget v0, v0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mSingleFrameMs:I

    return v0
.end method

.method private updateSingleFrameMs()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mDM:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 73
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    .line 75
    .local v1, "refreshRate":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    iput v2, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mSingleFrameMs:I

    .line 77
    .end local v1    # "refreshRate":F
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 82
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 58
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->updateSingleFrameMs()V

    .line 69
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 61
    return-void
.end method
