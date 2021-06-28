.class public Lcom/sonyericsson/music/ui/NextDrawable;
.super Lcom/sonyericsson/music/ui/PlayControlDrawable;
.source "NextDrawable.java"


# static fields
.field private static final BAR_WIDTH:F = 0.095f

.field private static final DX:F

.field private static final E:F = 0.26f

.field private static final H:F

.field private static final H_OFFSET:F = -0.05f


# instance fields
.field private final mContentPaint:Landroid/graphics/Paint;

.field private final mTmpPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3e851eb8    # 0.26f

    mul-float v0, v0, v1

    sput v0, Lcom/sonyericsson/music/ui/NextDrawable;->H:F

    .line 29
    sget v0, Lcom/sonyericsson/music/ui/NextDrawable;->H:F

    const v1, 0x3f7ae148    # 0.98f

    mul-float v0, v0, v1

    sput v0, Lcom/sonyericsson/music/ui/NextDrawable;->DX:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/PlayControlDrawable;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/NextDrawable;->mContentPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/NextDrawable;->mTmpPath:Landroid/graphics/Path;

    .line 36
    iget-object p1, p0, Lcom/sonyericsson/music/ui/NextDrawable;->mContentPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/NextDrawable;->setupContent(Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/music/ui/NextDrawable;->mTmpPath:Landroid/graphics/Path;

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const v1, 0x3e851eb8    # 0.26f

    mul-float v1, v1, p4

    sub-float v4, p3, v1

    .line 55
    invoke-virtual {v0, p2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 56
    sget v2, Lcom/sonyericsson/music/ui/NextDrawable;->H:F

    mul-float v2, v2, p4

    add-float/2addr v2, p2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v6, p3, v1

    .line 57
    invoke-virtual {v0, p2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 59
    sget-object p3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 61
    sget p3, Lcom/sonyericsson/music/ui/NextDrawable;->DX:F

    neg-float p3, p3

    mul-float p3, p3, p4

    float-to-int p3, p3

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    invoke-virtual {p1, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 63
    sget p3, Lcom/sonyericsson/music/ui/NextDrawable;->DX:F

    mul-float p3, p3, p4

    float-to-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    invoke-virtual {p1, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 65
    sget p3, Lcom/sonyericsson/music/ui/NextDrawable;->DX:F

    mul-float v0, p3, p4

    add-float v3, p2, v0

    const v0, 0x3dc28f5c    # 0.095f

    add-float/2addr p3, v0

    mul-float p3, p3, p4

    add-float v5, p2, p3

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private setupContent(Landroid/graphics/Paint;)V
    .locals 1

    .line 40
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget v0, p0, Lcom/sonyericsson/music/ui/PlayControlDrawable;->mForegroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected drawContent(Landroid/graphics/Canvas;FFF)V
    .locals 6

    const v0, -0x42b33333    # -0.05f

    mul-float v0, v0, p4

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float v2, p2

    .line 47
    iget-object v5, p0, Lcom/sonyericsson/music/ui/NextDrawable;->mContentPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/ui/NextDrawable;->drawContent(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    return-void
.end method
