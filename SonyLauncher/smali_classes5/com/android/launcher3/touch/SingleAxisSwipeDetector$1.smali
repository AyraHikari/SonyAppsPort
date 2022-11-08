.class Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;
.super Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
.source "SingleAxisSwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/touch/SingleAxisSwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;-><init>()V

    return-void
.end method


# virtual methods
.method extractDirection(Landroid/graphics/PointF;)F
    .locals 1
    .param p1, "direction"    # Landroid/graphics/PointF;

    .line 53
    iget v0, p1, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method extractOrthogonalDirection(Landroid/graphics/PointF;)F
    .locals 1
    .param p1, "direction"    # Landroid/graphics/PointF;

    .line 58
    iget v0, p1, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method isNegative(F)Z
    .locals 1
    .param p1, "displacement"    # F

    .line 48
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPositive(F)Z
    .locals 1
    .param p1, "displacement"    # F

    .line 42
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "VERTICAL"

    return-object v0
.end method
