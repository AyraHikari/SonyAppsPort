.class public Lcom/android/launcher3/util/DisplayController$PortraitSize;
.super Ljava/lang/Object;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortraitSize"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/DisplayController$PortraitSize;->width:I

    .line 401
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/DisplayController$PortraitSize;->height:I

    .line 402
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 406
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 407
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 408
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/util/DisplayController$PortraitSize;

    .line 409
    .local v2, "that":Lcom/android/launcher3/util/DisplayController$PortraitSize;
    iget v3, p0, Lcom/android/launcher3/util/DisplayController$PortraitSize;->width:I

    iget v4, v2, Lcom/android/launcher3/util/DisplayController$PortraitSize;->width:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/launcher3/util/DisplayController$PortraitSize;->height:I

    iget v4, v2, Lcom/android/launcher3/util/DisplayController$PortraitSize;->height:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 407
    .end local v2    # "that":Lcom/android/launcher3/util/DisplayController$PortraitSize;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 414
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$PortraitSize;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$PortraitSize;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
