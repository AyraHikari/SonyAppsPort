.class public Lcom/sonyericsson/music/ui/PlayPauseDrawable;
.super Lcom/sonyericsson/music/ui/PlayControlDrawable;
.source "PlayPauseDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;
    }
.end annotation


# static fields
.field private static final NORMALS:I = 0x2

.field private static final POINTS:I = 0x5

.field private static final PSEUDO_PERSPECTIVE:F = 1.13f

.field private static final SPACE:F = 0.16f

.field private static final TIP_BALANCE:F = 1.35f

.field private static final X:F = 0.35f

.field private static final Y:F = 0.35f

.field private static final Z:F = 0.08f


# instance fields
.field private final mContentPaint:Landroid/graphics/Paint;

.field private final mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

.field private mPos:F

.field private final mScreen:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

.field private final mTmpPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/PlayControlDrawable;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mContentPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mTmpPath:Landroid/graphics/Path;

    const/4 p1, 0x7

    .line 37
    new-array v0, p1, [Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    .line 38
    new-array p1, p1, [Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mScreen:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    .line 42
    iget-object p1, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mContentPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->setupContent(Landroid/graphics/Paint;)V

    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->setupPoints()V

    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    .line 98
    iget-object v1, v0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    .line 99
    iget-object v9, v0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mScreen:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    .line 102
    iget v2, v0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mPos:F

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f90a3d7    # 1.13f

    invoke-static {v3, v4, v2}, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->lerp(FFF)F

    move-result v2

    mul-float v2, v2, p4

    .line 103
    iget v3, v0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mPos:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    const v4, 0x40490fdb    # (float)Math.PI

    mul-float v3, v3, v4

    float-to-double v3, v3

    .line 104
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 105
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v10, 0x7

    const/4 v11, 0x1

    if-ge v6, v10, :cond_2

    .line 107
    aget-object v10, v1, v6

    const/4 v12, 0x5

    if-ge v6, v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_1

    .line 115
    iget v11, v10, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->x:F

    mul-float v11, v11, v2

    .line 116
    iget v12, v10, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->y:F

    mul-float v12, v12, v2

    .line 117
    iget v10, v10, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->z:F

    add-float v10, v10, p5

    mul-float v10, v10, v2

    goto :goto_2

    .line 120
    :cond_1
    iget v11, v10, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->x:F

    .line 121
    iget v12, v10, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->y:F

    .line 122
    iget v10, v10, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->z:F

    .line 126
    :goto_2
    aget-object v13, v9, v6

    mul-float v14, v5, v11

    mul-float v15, v3, v10

    sub-float/2addr v14, v15

    iput v14, v13, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->x:F

    .line 127
    aget-object v13, v9, v6

    iput v12, v13, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->y:F

    .line 128
    aget-object v12, v9, v6

    mul-float v11, v11, v3

    mul-float v10, v10, v5

    add-float/2addr v11, v10

    iput v11, v12, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->z:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 132
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    iget v1, v0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mForegroundColor:I

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    aget-object v1, v9, v4

    iget v2, v1, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->x:F

    aget-object v1, v9, v4

    iget v3, v1, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->y:F

    const/4 v12, 0x3

    aget-object v1, v9, v12

    iget v4, v1, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->x:F

    aget-object v1, v9, v12

    iget v5, v1, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 141
    iget-object v1, v0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mTmpPath:Landroid/graphics/Path;

    .line 142
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 143
    aget-object v2, v9, v11

    iget v2, v2, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->x:F

    aget-object v3, v9, v11

    iget v3, v3, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x2

    .line 144
    aget-object v3, v9, v2

    iget v3, v3, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->x:F

    aget-object v2, v9, v2

    iget v2, v2, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    aget-object v2, v9, v12

    iget v2, v2, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->x:F

    aget-object v3, v9, v12

    iget v3, v3, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 147
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const/4 v2, 0x6

    .line 148
    aget-object v2, v9, v2

    iget v2, v2, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->z:F

    neg-float v2, v2

    invoke-direct {v0, v2}, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->normal2Color(F)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private static final ilerp(IIF)I
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float p0, p0, v0

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static final lerp(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float p0, p0, v0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method private normal2Color(F)I
    .locals 2

    const/4 v0, 0x3

    .line 155
    new-array v0, v0, [F

    .line 156
    iget v1, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mForegroundColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 158
    aget v0, v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x80

    .line 160
    invoke-static {v1, v0, p1}, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->ilerp(IIF)I

    move-result p1

    const/16 v0, 0xff

    .line 161
    invoke-static {v0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private setupContent(Landroid/graphics/Paint;)V
    .locals 1

    .line 92
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget v0, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mForegroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private setupPoints()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    new-instance v3, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;-><init>(Lcom/sonyericsson/music/ui/PlayPauseDrawable$1;)V

    aput-object v3, v2, v1

    .line 52
    iget-object v2, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mScreen:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    new-instance v3, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    invoke-direct {v3, v4}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;-><init>(Lcom/sonyericsson/music/ui/PlayPauseDrawable$1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    aget-object v0, v1, v0

    const v1, 0x3da3d70a    # 0.08f

    const v2, -0x414ccccd    # -0.35f

    invoke-virtual {v0, v2, v2, v1}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->set(FFF)V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const v3, -0x425c28f6    # -0.08f

    invoke-virtual {v0, v2, v2, v3}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->set(FFF)V

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    const v4, 0x3ef1eb85    # 0.4725f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->set(FFF)V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    const v4, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v2, v4, v3}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->set(FFF)V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-virtual {v0, v2, v4, v1}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->set(FFF)V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v5, v5}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->set(FFF)V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mModel:[Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v0, v5, v5, v1}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->set(FFF)V

    return-void
.end method


# virtual methods
.method protected drawContent(Landroid/graphics/Canvas;FFF)V
    .locals 7

    .line 87
    iget-object v6, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mContentPaint:Landroid/graphics/Paint;

    const v5, 0x3e23d70a    # 0.16f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->drawContent(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 88
    iget-object v6, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mContentPaint:Landroid/graphics/Paint;

    const v5, -0x41dc28f6    # -0.16f

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->drawContent(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getPosition()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mPos:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->setAlpha(I)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mContentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mContentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable;->mPos:F

    .line 82
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
