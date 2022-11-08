.class Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;
.super Ljava/lang/Object;
.source "FloatingTaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/FloatingTaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitOverlayProperties"
.end annotation


# instance fields
.field private final dX:F

.field private final dY:F

.field private final finalTaskViewScaleX:F

.field private final finalTaskViewScaleY:F


# direct methods
.method static bridge synthetic -$$Nest$fgetdX(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->dX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdY(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->dY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfinalTaskViewScaleX(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->finalTaskViewScaleX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfinalTaskViewScaleY(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->finalTaskViewScaleY:F

    return p0
.end method

.method constructor <init>(Landroid/graphics/Rect;Landroid/graphics/RectF;II)V
    .locals 5
    .param p1, "endBounds"    # Landroid/graphics/Rect;
    .param p2, "startTaskViewBounds"    # Landroid/graphics/RectF;
    .param p3, "dragLayerLeft"    # I
    .param p4, "dragLayerTop"    # I

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 265
    .local v0, "maxScaleX":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 267
    .local v1, "maxScaleY":F
    iput v0, p0, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->finalTaskViewScaleX:F

    .line 268
    iput v1, p0, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->finalTaskViewScaleY:F

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, p3

    int-to-float v2, v2

    .line 272
    .local v2, "centerX":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, p4

    int-to-float v3, v3

    .line 274
    .local v3, "centerY":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v4, v2, v4

    iput v4, p0, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->dX:F

    .line 275
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v4, v3, v4

    iput v4, p0, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->dY:F

    .line 276
    return-void
.end method
