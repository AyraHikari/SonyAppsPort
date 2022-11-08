.class public Lcom/android/launcher3/graphics/PreloadIconDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source "PreloadIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;
    }
.end annotation


# static fields
.field private static final COLOR_SHADOW:I = 0x55000000

.field private static final COLOR_TRACK:I = 0x77eeeeee

.field private static final COMPLETE_ANIM_FRACTION:F = 0.3f

.field private static final DEFAULT_PATH_SIZE:I = 0x64

.field private static final DURATION_SCALE:J = 0x1f4L

.field private static final INTERNAL_STATE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/graphics/PreloadIconDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PAINT_ALPHA:I = 0xff

.field private static final PRELOAD_ACCENT_COLOR_INDEX:I = 0x0

.field private static final PRELOAD_BACKGROUND_COLOR_INDEX:I = 0x1

.field private static final PROGRESS_GAP:F = 2.0f

.field private static final PROGRESS_WIDTH:F = 7.0f

.field private static final SMALL_SCALE:F = 0.6f

.field private static final sShadowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Bitmap;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentAnim:Landroid/animation/ObjectAnimator;

.field private mIconScale:F

.field private final mIndicatorColor:I

.field private mInternalStateProgress:F

.field private final mIsDarkMode:Z

.field private mIsStartable:Z

.field private final mItem:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private final mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private mRanFinishAnimation:Z

.field private final mScaledProgressPath:Landroid/graphics/Path;

.field private final mScaledTrackPath:Landroid/graphics/Path;

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private final mShapePath:Landroid/graphics/Path;

.field private final mSystemAccentColor:I

.field private final mSystemBackgroundColor:I

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTrackAlpha:I

.field private mTrackLength:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmInternalStateProgress(Lcom/android/launcher3/graphics/PreloadIconDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmRanFinishAnimation(Lcom/android/launcher3/graphics/PreloadIconDrawable;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInternalProgress(Lcom/android/launcher3/graphics/PreloadIconDrawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "internalStateProgress"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->INTERNAL_STATE:Landroid/util/Property;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->sShadowCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I[IZ)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "indicatorColor"    # I
    .param p3, "preloadColors"    # [I
    .param p4, "isDarkMode"    # Z

    .line 130
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;)V

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 86
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 131
    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mItem:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 132
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShapePath:Landroid/graphics/Path;

    .line 133
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    .line 134
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    .line 137
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 139
    iput p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    .line 141
    const/4 v0, 0x0

    aget v0, p3, v0

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemAccentColor:I

    .line 142
    const/4 v0, 0x1

    aget v0, p3, v0

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemBackgroundColor:I

    .line 143
    iput-boolean p4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsDarkMode:Z

    .line 145
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 146
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isAppStartable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsStartable(Z)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "context"    # Landroid/content/Context;

    .line 118
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 120
    invoke-static {p2, v0}, Lcom/android/launcher3/graphics/IconPalette;->getPreloadProgressColor(Landroid/content/Context;I)I

    move-result v0

    .line 121
    invoke-static {p2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getPreloadColors(Landroid/content/Context;)[I

    move-result-object v1

    .line 122
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v2

    .line 118
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I[IZ)V

    .line 123
    return-void
.end method

.method private static getPreloadColors(Landroid/content/Context;)[I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 329
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 331
    .local v0, "dayNightThemeContext":Landroid/content/Context;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 333
    .local v1, "preloadColors":[I
    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 334
    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->getColorBackgroundFloating(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 337
    return-object v1
.end method

.method private getShadowBitmap(IIF)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "shadowRadius"    # F

    .line 172
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    iget-boolean v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsDarkMode:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int/2addr v0, v1

    .line 173
    .local v0, "key":I
    sget-object v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;->sShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 174
    .local v2, "shadowRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/Pair<Landroid/graphics/Path;Landroid/graphics/Bitmap;>;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 175
    .local v4, "cache":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Path;Landroid/graphics/Bitmap;>;"
    :goto_1
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    move-object v5, v3

    .line 176
    .local v5, "shadow":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v5, :cond_3

    .line 177
    return-object v5

    .line 179
    :cond_3
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 180
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    .local v6, "c":Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsStartable:Z

    if-eqz v8, :cond_4

    .line 182
    const/high16 v8, 0x55000000

    goto :goto_3

    :cond_4
    iget v8, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemAccentColor:I

    .line 181
    :goto_3
    const/4 v9, 0x0

    invoke-virtual {v7, p3, v9, v9, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 183
    iget-object v7, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsStartable:Z

    if-eqz v8, :cond_5

    const v8, 0x77eeeeee

    goto :goto_4

    :cond_5
    iget v8, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemBackgroundColor:I

    :goto_4
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v7, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 185
    iget-object v7, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 186
    iget-object v7, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 187
    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    return-object v5
.end method

.method public static newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 344
    new-instance v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)V

    return-object v0
.end method

.method private setInternalProgress(F)V
    .locals 7
    .param p1, "progress"    # F

    .line 300
    iput p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    .line 301
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/16 v2, 0xff

    const v3, 0x3f19999a    # 0.6f

    if-gtz v1, :cond_0

    .line 302
    iput v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 303
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 304
    iput v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    .line 307
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v1

    if-gez v4, :cond_1

    cmpl-float v4, p1, v0

    if-lez v4, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackLength:F

    mul-float/2addr v4, p1

    iget-object v5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    const/4 v6, 0x1

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 309
    iput v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 310
    iput v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    goto :goto_0

    .line 311
    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mItem:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 314
    sub-float v0, p1, v1

    const v2, 0x3e99999a    # 0.3f

    div-float/2addr v0, v2

    .line 316
    .local v0, "fraction":F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_2

    .line 318
    iput v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 319
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    goto :goto_0

    .line 321
    :cond_2
    sub-float/2addr v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    .line 322
    const v1, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 325
    .end local v0    # "fraction":F
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->invalidateSelf()V

    .line 326
    return-void
.end method

.method private updateInternalState(FZZ)V
    .locals 3
    .param p1, "finalProgress"    # F
    .param p2, "shouldAnimate"    # Z
    .param p3, "isFinish"    # Z

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    .line 254
    :cond_0
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 255
    return-void

    .line 257
    :cond_1
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 258
    const/4 p2, 0x0

    .line 260
    :cond_2
    if-eqz p2, :cond_5

    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 263
    :cond_3
    sget-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->INTERNAL_STATE:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    .line 264
    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    sub-float v1, p1, v1

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    if-eqz p3, :cond_4

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;-><init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 261
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    .line 277
    :goto_1
    return-void
.end method


# virtual methods
.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 195
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 197
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsStartable:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemAccentColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 204
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 209
    .local v0, "saveCount":I
    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 210
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 212
    return-void
.end method

.method public hasNotCompleted()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public maybePerformFinishedAnimation()V
    .locals 2

    .line 230
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 231
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    .line 233
    :cond_0
    const v0, 0x3fa66666    # 1.3f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->updateInternalState(FZZ)V

    .line 234
    return-void
.end method

.method public newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    .locals 8

    .line 349
    new-instance v7, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconColor:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mItem:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    const/4 v0, 0x2

    new-array v5, v0, [I

    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemAccentColor:I

    const/4 v6, 0x0

    aput v0, v5, v6

    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mSystemBackgroundColor:I

    const/4 v6, 0x1

    aput v0, v5, v6

    iget-boolean v6, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsDarkMode:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;-><init>(Landroid/graphics/Bitmap;ILcom/android/launcher3/model/data/ItemInfoWithIcon;I[IZ)V

    return-object v7
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 151
    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41600000    # 14.0f

    sub-float/2addr v1, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v1, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    sub-float/2addr v5, v3

    div-float/2addr v5, v4

    .line 152
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    add-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v1, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    .line 161
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-float/2addr v3, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getShadowBitmap(IIF)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 165
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 166
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackLength:F

    .line 168
    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    invoke-direct {p0, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    .line 169
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4
    .param p1, "level"    # I

    .line 220
    int-to-float v0, p1

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v0, v1, v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->updateInternalState(FZZ)V

    .line 221
    return v2
.end method

.method public setIsStartable(Z)V
    .locals 1
    .param p1, "isStartable"    # Z

    .line 242
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsStartable:Z

    if-eq v0, p1, :cond_0

    .line 243
    iput-boolean p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIsStartable:Z

    .line 244
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    .line 246
    :cond_0
    return-void
.end method
