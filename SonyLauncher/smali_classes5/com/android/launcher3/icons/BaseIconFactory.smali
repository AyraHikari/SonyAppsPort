.class public Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source "BaseIconFactory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    }
.end annotation


# static fields
.field private static final DEFAULT_WRAPPER_BACKGROUND:I = -0x1

.field private static final ICON_BADGE_SCALE:F = 0.444f

.field private static PLACEHOLDER_BACKGROUND_COLOR:I = 0x0

.field private static final PLACEHOLDER_TEXT_SIZE:F = 20.0f


# instance fields
.field private final CTA_PACKAGE_NAME:Ljava/lang/String;

.field private final XPERIA_HOME_PACKAGE_NAME:Ljava/lang/String;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

.field protected final mContext:Landroid/content/Context;

.field private mDisableColorExtractor:Z

.field protected final mFillResIconDpi:I

.field protected final mIconBitmapSize:I

.field private mIsChinaModel:Z

.field private mIsChinaModelInitialized:Z

.field private final mIsUserBadged:Landroid/util/SparseBooleanArray;

.field protected mMonoIconEnabled:Z

.field private mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

.field private final mShapeDetection:Z

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mWhiteShadowLayer:Landroid/graphics/Bitmap;

.field private mWrapperBackgroundColor:I

.field private mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/16 v0, 0xf5

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/launcher3/icons/BaseIconFactory;->PLACEHOLDER_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillResIconDpi"    # I
    .param p3, "iconBitmapSize"    # I

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    .line 111
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillResIconDpi"    # I
    .param p3, "iconBitmapSize"    # I
    .param p4, "shapeDetection"    # Z

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mTextPaint:Landroid/graphics/Paint;

    .line 84
    const-string v1, "com.sonymobile.cta"

    iput-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->CTA_PACKAGE_NAME:Ljava/lang/String;

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsChinaModelInitialized:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsChinaModel:Z

    .line 88
    const-string v1, "com.sonymobile.launcher"

    iput-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->XPERIA_HOME_PACKAGE_NAME:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 93
    iput-boolean p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    .line 94
    iput p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    .line 95
    iput p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 98
    new-instance v1, Lcom/android/launcher3/icons/ColorExtractor;

    invoke-direct {v1}, Lcom/android/launcher3/icons/ColorExtractor;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    .line 100
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 101
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 102
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 103
    sget v1, Lcom/android/launcher3/icons/BaseIconFactory;->PLACEHOLDER_BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    .line 107
    return-void
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F

    .line 360
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F
    .param p3, "size"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .line 373
    invoke-static {p3, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 375
    return-object v0

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 380
    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_2

    .line 381
    const v1, 0x3d0f5c29    # 0.035f

    int-to-float v2, p3

    mul-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 382
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 381
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 384
    .local v1, "offset":I
    sub-int v2, p3, v1

    sub-int/2addr v2, v1

    sub-int v3, p3, v1

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 385
    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 386
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v4, v1

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 388
    instance-of v3, p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz v3, :cond_1

    .line 389
    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    iget-object v4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v3, v4}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->drawForPersistence(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 394
    .end local v1    # "offset":I
    .end local v2    # "count":I
    goto :goto_2

    .line 395
    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 396
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 397
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 398
    .local v2, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_3

    .line 399
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 402
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "b":Landroid/graphics/Bitmap;
    :cond_3
    move v1, p3

    .line 403
    .local v1, "width":I
    move v2, p3

    .line 405
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 406
    .local v3, "intrinsicWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 407
    .local v4, "intrinsicHeight":I
    if-lez v3, :cond_5

    if-lez v4, :cond_5

    .line 409
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 410
    .local v5, "ratio":F
    if-le v3, v4, :cond_4

    .line 411
    int-to-float v6, v1

    div-float/2addr v6, v5

    float-to-int v2, v6

    goto :goto_1

    .line 412
    :cond_4
    if-le v4, v3, :cond_5

    .line 413
    int-to-float v6, v2

    mul-float/2addr v6, v5

    float-to-int v1, v6

    .line 416
    .end local v5    # "ratio":F
    :cond_5
    :goto_1
    sub-int v5, p3, v1

    div-int/lit8 v5, v5, 0x2

    .line 417
    .local v5, "left":I
    sub-int v6, p3, v2

    div-int/lit8 v6, v6, 0x2

    .line 418
    .local v6, "top":I
    add-int v7, v5, v1

    add-int v8, v6, v2

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    iget-object v7, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 420
    iget-object v7, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    div-int/lit8 v8, p3, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, p2, p2, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 421
    iget-object v7, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 422
    iget-object v7, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 425
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "intrinsicWidth":I
    .end local v4    # "intrinsicHeight":I
    .end local v5    # "left":I
    .end local v6    # "top":I
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 426
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    return-object v0
.end method

.method private extractColor(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 445
    iget-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mDisableColorExtractor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getBadgeSizeForIconSize(I)I
    .locals 2
    .param p0, "iconSize"    # I

    .line 452
    int-to-float v0, p0

    const v1, 0x3ee353f8    # 0.444f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "iconDpi"    # I

    .line 440
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private isChinaModel()Z
    .locals 6

    .line 299
    iget-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsChinaModelInitialized:Z

    if-nez v0, :cond_1

    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "com.sonymobile.cta"

    const-wide/32 v4, 0x100000

    .line 303
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v4

    .line 302
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsChinaModel:Z

    .line 308
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 309
    iput-boolean v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsChinaModel:Z

    goto :goto_1

    .line 311
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsChinaModel:Z

    .line 313
    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsChinaModelInitialized:Z

    .line 315
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsChinaModel:Z

    return v0
.end method

.method private isFromXperiaHome()Z
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonymobile.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "shrinkNonAdaptiveIcons"    # Z
    .param p3, "outIconBounds"    # Landroid/graphics/RectF;
    .param p4, "outScale"    # [F

    .line 325
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 326
    return-object v0

    .line 328
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 330
    .local v1, "scale":F
    invoke-direct {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->isFromXperiaHome()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    const/4 p2, 0x0

    .line 334
    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_4

    instance-of v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v3, :cond_4

    .line 335
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 336
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/launcher3/icons/R$drawable;->adaptive_icon_drawable_wrapper:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 337
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 340
    .local v3, "dr":Landroid/graphics/drawable/AdaptiveIconDrawable;
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v2, v4, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 341
    new-array v4, v4, [Z

    .line 342
    .local v4, "outShape":[Z
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v5, p1, p3, v6, v4}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v1

    .line 343
    aget-boolean v5, v4, v2

    if-nez v5, :cond_3

    .line 344
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/icons/FixedScaleDrawable;

    .line 345
    .local v5, "fsd":Lcom/android/launcher3/icons/FixedScaleDrawable;
    invoke-virtual {v5, p1}, Lcom/android/launcher3/icons/FixedScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-virtual {v5, v1}, Lcom/android/launcher3/icons/FixedScaleDrawable;->setScale(F)V

    .line 347
    move-object p1, v3

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v6

    invoke-virtual {v6, p1, p3, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v1

    .line 349
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    iget v6, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 351
    .end local v3    # "dr":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .end local v4    # "outShape":[Z
    .end local v5    # "fsd":Lcom/android/launcher3/icons/FixedScaleDrawable;
    :cond_3
    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v3

    invoke-virtual {v3, p1, p3, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v1

    .line 355
    :goto_0
    aput v1, p4, v2

    .line 356
    return-object p1
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mDisableColorExtractor:Z

    .line 116
    return-void
.end method

.method public close()V
    .locals 0

    .line 432
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    .line 433
    return-void
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 10
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "options"    # Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    .line 201
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-boolean v2, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 202
    .local v2, "shrinkNonAdaptiveIcons":Z
    :goto_1
    new-array v0, v0, [F

    .line 203
    .local v0, "scale":[F
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 204
    aget v4, v0, v1

    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 205
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    instance-of v5, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_2

    .line 206
    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;

    move-result-object v5

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 208
    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->extractColor(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 212
    .local v3, "color":I
    invoke-static {v4, v3}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    .line 214
    .local v5, "info":Lcom/android/launcher3/icons/BitmapInfo;
    instance-of v6, p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz v6, :cond_3

    .line 215
    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    aget v1, v0, v1

    invoke-interface {v6, v4, v3, p0, v1}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    goto :goto_2

    .line 216
    :cond_3
    iget-boolean v6, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mMonoIconEnabled:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz v6, :cond_4

    instance-of v6, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v6, :cond_4

    .line 218
    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 219
    .local v6, "mono":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 221
    new-instance v7, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;

    invoke-direct {v7, v6}, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 222
    .local v7, "paddedMono":Landroid/graphics/drawable/Drawable;
    aget v1, v0, v1

    iget v8, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 223
    invoke-direct {p0, v7, v1, v8, v9}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 222
    invoke-virtual {v5, v1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V

    .line 227
    .end local v6    # "mono":Landroid/graphics/drawable/Drawable;
    .end local v7    # "paddedMono":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    .line 228
    .end local v5    # "info":Lcom/android/launcher3/icons/BitmapInfo;
    .local v1, "info":Lcom/android/launcher3/icons/BitmapInfo;
    return-object v1
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F
    .param p3, "size"    # I

    .line 368
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 4
    .param p1, "iconRes"    # Landroid/content/Intent$ShortcutIconResource;

    .line 135
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    .local v1, "resources":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 137
    iget-object v2, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, "id":I
    iget v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 143
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "id":I
    :cond_0
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 144
    :goto_0
    return-object v0
.end method

.method public createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 168
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 169
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 172
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->extractColor(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public createIconBitmap(Ljava/lang/String;I)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 6
    .param p1, "placeholder"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 155
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "placeholderBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    new-instance v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lcom/android/launcher3/icons/BaseIconFactory;->PLACEHOLDER_BACKGROUND_COLOR:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    .local v2, "drawable":Landroid/graphics/drawable/AdaptiveIconDrawable;
    const v3, 0x3f6b851f    # 0.92f

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 164
    .local v3, "icon":Landroid/graphics/Bitmap;
    invoke-direct {p0, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->extractColor(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    return-object v4
.end method

.method public createScaledBitmapWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 267
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    .line 268
    .local v0, "scale":F
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 269
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;

    move-result-object v3

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 271
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 272
    return-object v2
.end method

.method public createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 276
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 277
    .local v0, "iconBounds":Landroid/graphics/RectF;
    const/4 v1, 0x1

    new-array v2, v1, [F

    .line 278
    .local v2, "scale":[F
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 279
    const/4 v1, 0x0

    aget v1, v2, v1

    .line 280
    invoke-static {v0}, Lcom/android/launcher3/icons/ShadowGenerator;->getScaleForBounds(Landroid/graphics/RectF;)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 279
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public createShapedIconBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 10
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    .line 179
    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {v1, p1}, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 180
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v0

    .line 181
    .local v0, "inset":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float v6, v0, v2

    .line 182
    .end local v0    # "inset":F
    .local v6, "inset":F
    new-instance v7, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {v8, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v9, Landroid/graphics/drawable/InsetDrawable;

    move-object v0, v9

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v7

    .line 184
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    return-object v1
.end method

.method public disableColorExtraction()V
    .locals 1

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mDisableColorExtractor:Z

    .line 295
    return-void
.end method

.method public getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;
    .locals 7
    .param p1, "options"    # Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    .line 232
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    .line 233
    .local v0, "op":Lcom/android/launcher3/util/FlagOp;
    if-eqz p1, :cond_3

    .line 234
    iget-boolean v1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsInstantApp:Z

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 238
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_3

    .line 239
    iget-object v1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    .line 242
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    move v3, v2

    .local v3, "index":I
    const/4 v4, 0x1

    if-ltz v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .local v2, "isBadged":Z
    goto :goto_1

    .line 246
    .end local v2    # "isBadged":Z
    :cond_1
    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;-><init>(Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable-IA;)V

    .line 247
    .local v2, "d":Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;
    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eq v2, v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 248
    .local v5, "isBadged":Z
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v2, v5

    .line 250
    .end local v5    # "isBadged":Z
    .local v2, "isBadged":Z
    :goto_1
    invoke-interface {v0, v4, v2}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 253
    .end local v1    # "key":I
    .end local v2    # "isBadged":Z
    .end local v3    # "index":I
    :cond_3
    return-object v0
.end method

.method public getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/launcher3/icons/IconNormalizer;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-boolean v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    return-object v0
.end method

.method public getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/launcher3/icons/ShadowGenerator;

    iget v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    return-object v0
.end method

.method getWhiteShadowLayer()Landroid/graphics/Bitmap;
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmapWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public makeDefaultIcon()Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1

    .line 436
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public setWrapperBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 287
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 288
    return-void
.end method
