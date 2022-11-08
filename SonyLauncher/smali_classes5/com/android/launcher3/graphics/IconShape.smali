.class public abstract Lcom/android/launcher3/graphics/IconShape;
.super Ljava/lang/Object;
.source "IconShape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/IconShape$Squircle;,
        Lcom/android/launcher3/graphics/IconShape$TearDrop;,
        Lcom/android/launcher3/graphics/IconShape$RoundedSquare;,
        Lcom/android/launcher3/graphics/IconShape$Circle;,
        Lcom/android/launcher3/graphics/IconShape$PathShape;,
        Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/launcher3/graphics/IconShape;

.field private static sNormalizationScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/android/launcher3/graphics/IconShape$Circle;

    invoke-direct {v0}, Lcom/android/launcher3/graphics/IconShape$Circle;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    .line 63
    const v0, 0x3f6b851f    # 0.92f

    sput v0, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllShapes(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/graphics/IconShape;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/graphics/IconShape;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$xml;->folder_shapes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v4, :cond_0

    if-eq v3, v5, :cond_0

    const-string v2, "shapes"

    .line 408
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 411
    .local v2, "depth":I
    new-array v6, v5, [I

    sget v7, Lcom/android/launcher3/R$attr;->folderIconRadius:I

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 413
    .local v6, "radiusAttr":[I
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v3, v7

    if-ne v7, v4, :cond_2

    .line 414
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_3

    :cond_2
    if-eq v3, v5, :cond_3

    .line 416
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    .line 417
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 418
    .local v7, "attrs":Landroid/util/AttributeSet;
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 419
    .local v9, "a":Landroid/content/res/TypedArray;
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v8, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/launcher3/graphics/IconShape;->getShapeDefinition(Ljava/lang/String;F)Lcom/android/launcher3/graphics/IconShape;

    move-result-object v10

    .line 420
    .local v10, "shape":Lcom/android/launcher3/graphics/IconShape;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 422
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    nop

    .end local v7    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "shape":Lcom/android/launcher3/graphics/IconShape;
    goto :goto_1

    .line 425
    .end local v2    # "depth":I
    .end local v3    # "type":I
    .end local v6    # "radiusAttr":[I
    :cond_3
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 427
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4
    nop

    .line 428
    return-object v0

    .line 402
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/graphics/IconShape;>;"
    .end local p0    # "context":Landroid/content/Context;
    :cond_5
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 425
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/graphics/IconShape;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getNormalizationScale()F
    .locals 1

    .line 70
    sget v0, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    return v0
.end method

.method public static getShape()Lcom/android/launcher3/graphics/IconShape;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    return-object v0
.end method

.method private static getShapeDefinition(Ljava/lang/String;F)Lcom/android/launcher3/graphics/IconShape;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "radius"    # F

    .line 386
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "Circle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "RoundedSquare"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "Squircle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "TearDrop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid shape type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :pswitch_0
    new-instance v0, Lcom/android/launcher3/graphics/IconShape$Squircle;

    invoke-direct {v0, p1}, Lcom/android/launcher3/graphics/IconShape$Squircle;-><init>(F)V

    return-object v0

    .line 392
    :pswitch_1
    new-instance v0, Lcom/android/launcher3/graphics/IconShape$TearDrop;

    invoke-direct {v0, p1}, Lcom/android/launcher3/graphics/IconShape$TearDrop;-><init>(F)V

    return-object v0

    .line 390
    :pswitch_2
    new-instance v0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;

    invoke-direct {v0, p1}, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;-><init>(F)V

    return-object v0

    .line 388
    :pswitch_3
    new-instance v0, Lcom/android/launcher3/graphics/IconShape$Circle;

    invoke-direct {v0}, Lcom/android/launcher3/graphics/IconShape$Circle;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f5ab76f -> :sswitch_3
        -0x2aba5404 -> :sswitch_2
        -0x1b5a6df6 -> :sswitch_1
        0x7851a8f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 382
    invoke-static {p0}, Lcom/android/launcher3/graphics/IconShape;->pickBestShape(Landroid/content/Context;)V

    .line 383
    return-void
.end method

.method protected static pickBestShape(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .line 434
    const/16 v0, 0xc8

    .line 436
    .local v0, "size":I
    new-instance v1, Landroid/graphics/Region;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 437
    .local v1, "full":Landroid/graphics/Region;
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    .line 438
    .local v4, "iconR":Landroid/graphics/Region;
    new-instance v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, -0x1000000

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v5, v6, v8}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 440
    .local v5, "drawable":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v5, v2, v2, v3, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 441
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 443
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 444
    .local v2, "shapePath":Landroid/graphics/Path;
    new-instance v6, Landroid/graphics/Region;

    invoke-direct {v6}, Landroid/graphics/Region;-><init>()V

    .line 447
    .local v6, "shapeR":Landroid/graphics/Region;
    const v7, 0x7fffffff

    .line 448
    .local v7, "minArea":I
    const/4 v8, 0x0

    .line 449
    .local v8, "closestShape":Lcom/android/launcher3/graphics/IconShape;
    invoke-static {p0}, Lcom/android/launcher3/graphics/IconShape;->getAllShapes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/graphics/IconShape;

    .line 450
    .local v10, "shape":Lcom/android/launcher3/graphics/IconShape;
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 451
    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v12, v12, v11}, Lcom/android/launcher3/graphics/IconShape;->addToPath(Landroid/graphics/Path;FFF)V

    .line 452
    invoke-virtual {v6, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 453
    sget-object v11, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v4, v11}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 455
    invoke-static {v6}, Lcom/android/launcher3/icons/GraphicsUtils;->getArea(Landroid/graphics/Region;)I

    move-result v11

    .line 456
    .local v11, "area":I
    if-ge v11, v7, :cond_0

    .line 457
    move v7, v11

    .line 458
    move-object v8, v10

    .line 460
    .end local v10    # "shape":Lcom/android/launcher3/graphics/IconShape;
    .end local v11    # "area":I
    :cond_0
    goto :goto_0

    .line 462
    :cond_1
    if-eqz v8, :cond_2

    .line 463
    sput-object v8, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    .line 467
    :cond_2
    const/4 v9, 0x0

    invoke-static {v5, v3, v9}, Lcom/android/launcher3/icons/IconNormalizer;->normalizeAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;)F

    move-result v3

    sput v3, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    .line 468
    return-void
.end method


# virtual methods
.method public abstract addToPath(Landroid/graphics/Path;FFF)V
.end method

.method public abstract createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/android/launcher3/views/ClipPathView;",
            ">(TT;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "FZ)",
            "Landroid/animation/Animator;"
        }
    .end annotation
.end method

.method public abstract drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
.end method

.method public enableShapeDetection()Z
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method
