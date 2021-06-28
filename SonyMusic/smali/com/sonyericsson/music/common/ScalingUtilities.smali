.class public Lcom/sonyericsson/music/common/ScalingUtilities;
.super Ljava/lang/Object;
.source "ScalingUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;
    }
.end annotation


# static fields
.field protected static final CROP_EDGES_PX:I = 0x2

.field protected static final EDGE_WIDTH:F = 3.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDstRect(IIIILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;
    .locals 2

    .line 157
    sget-object v0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->FIT:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    const/4 v1, 0x0

    if-ne p4, v0, :cond_1

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, p2

    int-to-float p4, p3

    div-float v0, p1, p4

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 162
    new-instance p3, Landroid/graphics/Rect;

    div-float/2addr p1, p0

    float-to-int p0, p1

    invoke-direct {p3, v1, v1, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3

    .line 164
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    mul-float p4, p4, p0

    float-to-int p0, p4

    invoke-direct {p1, v1, v1, p0, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 167
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static calculateSrcRect(IIIILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;
    .locals 3

    .line 127
    sget-object v0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->CROP:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    const/4 v1, 0x0

    if-ne p4, v0, :cond_1

    int-to-float p4, p0

    int-to-float v0, p1

    div-float v2, p4, v0

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    cmpl-float p3, v2, p2

    if-lez p3, :cond_0

    mul-float v0, v0, p2

    float-to-int p2, v0

    sub-int/2addr p0, p2

    .line 133
    div-int/lit8 p0, p0, 0x2

    .line 134
    new-instance p3, Landroid/graphics/Rect;

    add-int/2addr p2, p0

    invoke-direct {p3, p0, v1, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3

    :cond_0
    div-float/2addr p4, p2

    float-to-int p2, p4

    sub-int/2addr p1, p2

    .line 137
    div-int/lit8 p1, p1, 0x2

    .line 138
    new-instance p3, Landroid/graphics/Rect;

    add-int/2addr p2, p1

    invoke-direct {p3, v1, p1, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3

    .line 141
    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method public static createScaledBitmap(Landroid/content/res/Resources;IIILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;
    .locals 0

    .line 67
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0, p2, p3, p4}, Lcom/sonyericsson/music/common/ScalingUtilities;->createScaledBitmap(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;IILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;IILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/sonyericsson/music/common/ScalingUtilities;->calculateSrcRect(IIIILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, p2, p3, p4}, Lcom/sonyericsson/music/common/ScalingUtilities;->calculateDstRect(IIIILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;

    move-result-object p2

    .line 92
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    .line 93
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p4

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 92
    invoke-static {p1, p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 95
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    new-instance p4, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {p4, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p3, p0, v0, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p1
.end method
