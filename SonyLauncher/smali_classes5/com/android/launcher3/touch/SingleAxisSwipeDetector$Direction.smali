.class public abstract Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
.super Ljava/lang/Object;
.source "SingleAxisSwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/touch/SingleAxisSwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Direction"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract extractDirection(Landroid/graphics/PointF;)F
.end method

.method abstract extractOrthogonalDirection(Landroid/graphics/PointF;)F
.end method

.method abstract isNegative(F)Z
.end method

.method abstract isPositive(F)Z
.end method
