.class public Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;
.super Ljava/lang/Object;
.source "RegionSamplingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysuiCompositionSamplingListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Landroid/view/CompositionSamplingListener;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/CompositionSamplingListener;
    .param p2, "displayId"    # I
    .param p3, "stopLayer"    # Landroid/view/SurfaceControl;
    .param p4, "samplingArea"    # Landroid/graphics/Rect;

    .line 337
    invoke-static {p1, p2, p3, p4}, Landroid/view/CompositionSamplingListener;->register(Landroid/view/CompositionSamplingListener;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 338
    return-void
.end method

.method public unregister(Landroid/view/CompositionSamplingListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/CompositionSamplingListener;

    .line 344
    invoke-static {p1}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    .line 345
    return-void
.end method
