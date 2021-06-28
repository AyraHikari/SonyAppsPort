.class public Lcom/sonyericsson/music/common/GawUtils;
.super Ljava/lang/Object;
.source "GawUtils.java"


# static fields
.field private static final BACKGROUND_TINT_SATURATION:F = 1.1f

.field private static final BACKGROUND_TINT_VALUE:F = 0.75f

.field private static final FIRST_LETTER_ALPHA:I = 0x2e

.field private static final OVERLAY_RATIO:F = 0.5f

.field private static final SECOND_LETTER_ALPHA:I = 0x1c

.field private static final sColors:[I

.field private static final sHsv:[F

.field private static final sOverlayXfermode:Landroid/graphics/Xfermode;

.field private static final sPaints:[Landroid/graphics/Paint;

.field private static final sTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x6

    .line 35
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/music/common/GawUtils;->sColors:[I

    .line 38
    sget-object v0, Lcom/sonyericsson/music/common/GawUtils;->sColors:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Paint;

    sput-object v0, Lcom/sonyericsson/music/common/GawUtils;->sPaints:[Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/sonyericsson/music/common/GawUtils;->sOverlayXfermode:Landroid/graphics/Xfermode;

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [F

    sput-object v0, Lcom/sonyericsson/music/common/GawUtils;->sHsv:[F

    const/4 v0, 0x0

    .line 48
    :goto_0
    sget-object v1, Lcom/sonyericsson/music/common/GawUtils;->sColors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 49
    sget-object v1, Lcom/sonyericsson/music/common/GawUtils;->sPaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 50
    sget-object v1, Lcom/sonyericsson/music/common/GawUtils;->sPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v2, Lcom/sonyericsson/music/common/GawUtils;->sColors:[I

    aget v7, v2, v0

    aget v2, v2, v0

    .line 51
    invoke-static {v2}, Lcom/sonyericsson/music/common/GawUtils;->tint(I)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 50
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    sget-object v0, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :array_0
    .array-data 4
        -0xbe7a0d
        -0xbe7a0d
        -0x24cccd
        -0x665e2
        -0x8153c6
        -0xb09888
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawLetter(Landroid/graphics/Canvas;Ljava/lang/Character;IFF)V
    .locals 4

    if-eqz p1, :cond_0

    .line 119
    sget-object v0, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    sget-object v0, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p2, p2, v1

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0xff

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    sget-object v0, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/sonyericsson/music/common/GawUtils;->sOverlayXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 122
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p3, p4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    sget-object v0, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    sget-object p2, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/music/common/GawUtils;->sTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized generateArtwork(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10

    const-class v0, Lcom/sonyericsson/music/common/GawUtils;

    monitor-enter v0

    .line 62
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 63
    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 66
    :try_start_1
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    .line 81
    invoke-virtual {v4, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 85
    sget-object p1, Lcom/sonyericsson/music/common/GawUtils;->sPaints:[Landroid/graphics/Paint;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sget-object v6, Lcom/sonyericsson/music/common/GawUtils;->sPaints:[Landroid/graphics/Paint;

    array-length v6, v6

    rem-int/2addr v5, v6

    sget-object v6, Lcom/sonyericsson/music/common/GawUtils;->sPaints:[Landroid/graphics/Paint;

    array-length v6, v6

    add-int/2addr v5, v6

    sget-object v6, Lcom/sonyericsson/music/common/GawUtils;->sPaints:[Landroid/graphics/Paint;

    array-length v6, v6

    rem-int/2addr v5, v6

    aget-object p1, p1, v5

    invoke-virtual {v4, p1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    array-length v5, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, p0, v7

    .line 93
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 94
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 97
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_4

    .line 98
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 99
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :cond_3
    move-object p0, v2

    move-object v2, p1

    goto :goto_1

    .line 103
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_5

    .line 104
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_1

    :cond_5
    move-object p0, v2

    :goto_1
    const/high16 p1, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v4, p1, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/16 p1, 0x2e

    const v1, -0x41b33333    # -0.2f

    const v5, 0x3f866666    # 1.05f

    .line 111
    invoke-static {v4, v2, p1, v1, v5}, Lcom/sonyericsson/music/common/GawUtils;->drawLetter(Landroid/graphics/Canvas;Ljava/lang/Character;IFF)V

    const/16 p1, 0x1c

    const v1, 0x3e99999a    # 0.3f

    .line 112
    invoke-static {v4, p0, p1, v1, v5}, Lcom/sonyericsson/music/common/GawUtils;->drawLetter(Landroid/graphics/Canvas;Ljava/lang/Character;IFF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    monitor-exit v0

    return-object v3

    .line 77
    :catch_0
    monitor-exit v0

    return-object v2

    .line 74
    :catch_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    return-void
.end method

.method private static declared-synchronized setHsvFactors(IFF)I
    .locals 4

    const-class v0, Lcom/sonyericsson/music/common/GawUtils;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/common/GawUtils;->sHsv:[F

    invoke-static {p0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 136
    sget-object v1, Lcom/sonyericsson/music/common/GawUtils;->sHsv:[F

    sget-object v2, Lcom/sonyericsson/music/common/GawUtils;->sHsv:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float v2, v2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v3

    .line 137
    sget-object v1, Lcom/sonyericsson/music/common/GawUtils;->sHsv:[F

    sget-object v2, Lcom/sonyericsson/music/common/GawUtils;->sHsv:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float v2, v2, p2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, v1, v3

    .line 138
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    sget-object p1, Lcom/sonyericsson/music/common/GawUtils;->sHsv:[F

    invoke-static {p0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized tint(I)I
    .locals 3

    const-class v0, Lcom/sonyericsson/music/common/GawUtils;

    monitor-enter v0

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f400000    # 0.75f

    .line 131
    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/sonyericsson/music/common/GawUtils;->setHsvFactors(IFF)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
