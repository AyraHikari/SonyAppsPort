.class public Lcom/android/launcher3/graphics/IconShape$RoundedSquare;
.super Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;
.source "IconShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedSquare"
.end annotation


# instance fields
.field private final mRadiusRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "radiusRatio"    # F

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;-><init>(Lcom/android/launcher3/graphics/IconShape$SimpleRectShape-IA;)V

    .line 214
    iput p1, p0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;->mRadiusRatio:F

    .line 215
    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;FFF)V
    .locals 11
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "radius"    # F

    .line 227
    add-float v0, p4, p2

    .line 228
    .local v0, "cx":F
    add-float v1, p4, p3

    .line 229
    .local v1, "cy":F
    iget v2, p0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;->mRadiusRatio:F

    mul-float/2addr v2, p4

    .line 230
    .local v2, "cr":F
    sub-float v4, v0, p4

    sub-float v5, v1, p4

    add-float v6, v0, p4

    add-float v7, v1, p4

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v3, p1

    move v8, v2

    move v9, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 232
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "radius"    # F
    .param p5, "p"    # Landroid/graphics/Paint;

    .line 219
    add-float v0, p4, p2

    .line 220
    .local v0, "cx":F
    add-float v1, p4, p3

    .line 221
    .local v1, "cy":F
    move-object v2, p0

    iget v3, v2, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;->mRadiusRatio:F

    mul-float v3, v3, p4

    .line 222
    .local v3, "cr":F
    sub-float v5, v0, p4

    sub-float v6, v1, p4

    add-float v7, v0, p4

    add-float v8, v1, p4

    move-object v4, p1

    move v9, v3

    move v10, v3

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 223
    return-void
.end method

.method protected getStartRadius(Landroid/graphics/Rect;)F
    .locals 2
    .param p1, "startRect"    # Landroid/graphics/Rect;

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;->mRadiusRatio:F

    mul-float/2addr v0, v1

    return v0
.end method
