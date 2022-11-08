.class public Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
.super Ljava/lang/Object;
.source "PagedOrientationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/touch/PagedOrientationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildBounds"
.end annotation


# instance fields
.field public final childPrimaryEnd:I

.field public final childSecondaryEnd:I

.field public final primaryDimension:I

.field public final secondaryDimension:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "primaryDimension"    # I
    .param p2, "secondaryDimension"    # I
    .param p3, "childPrimaryEnd"    # I
    .param p4, "childSecondaryEnd"    # I

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p1, p0, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->primaryDimension:I

    .line 245
    iput p2, p0, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->secondaryDimension:I

    .line 246
    iput p3, p0, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    .line 247
    iput p4, p0, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->childSecondaryEnd:I

    .line 248
    return-void
.end method
