.class public Lcom/sonyericsson/music/ui/LandingPageItemView;
.super Landroidx/cardview/widget/CardView;
.source "LandingPageItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ui/LandingPageItemView$InvalidateCallback;,
        Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;,
        Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;,
        Lcom/sonyericsson/music/ui/LandingPageItemView$State;
    }
.end annotation


# static fields
.field private static CACHE:Landroid/util/LruCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_PRESS_THRESHOLD:J = 0x190L

.field private static final RIPPLE_PRESSED_STATE:[I

.field private static final mGradientBaseColor:I = 0x59000000


# instance fields
.field private mAlbumArt:Landroid/graphics/drawable/Drawable;

.field private final mAlbumArtRect:Landroid/graphics/Rect;

.field private mAlbumArtShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

.field private mAlbumArtSize:I

.field private mBackPlateHeight:F

.field private mBackPlateHorizontalPadding:I

.field private mBackPlateVerticalPadding:I

.field private final mContextPaint:Landroid/graphics/Paint;

.field private mContextRipple:Landroid/graphics/drawable/Drawable;

.field private mContextRippleState:Z

.field private final mDefaultBackgroundPaint:Landroid/graphics/Paint;

.field private mDefaultIconSize:I

.field private mDensity:F

.field private final mDotPositions:[F

.field private mHiResIcon:Landroid/graphics/drawable/Drawable;

.field private mIsRtl:Z

.field private mListener:Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;

.field private mPlayingState:Landroid/graphics/drawable/Drawable;

.field private mScaledDensity:F

.field private final mScheduleLongPress:Ljava/lang/Runnable;

.field private mSmallIconPadding:I

.field private mState:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

.field private mSubtitle:Ljava/lang/String;

.field private mSubtitleHeight:F

.field private final mSubtitlePosition:[F

.field private mSubtitleShortened:Ljava/lang/String;

.field private final mSubtitleTextPaint:Landroid/text/TextPaint;

.field private mTextSpacing:I

.field private mTitle:Ljava/lang/String;

.field private mTitleHeight:F

.field private final mTitlePosition:[F

.field private mTitleShortened:Ljava/lang/String;

.field private final mTitleTextPaint:Landroid/text/TextPaint;

.field private mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView;->RIPPLE_PRESSED_STATE:[I

    .line 63
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView;->CACHE:Landroid/util/LruCache;

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009c
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 120
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance p1, Lcom/sonyericsson/music/ui/ExpLinearShadow;

    const/4 v0, 0x1

    const/high16 v1, 0x59000000

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/music/ui/ExpLinearShadow;-><init>(II)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

    .line 68
    new-instance p1, Lcom/sonyericsson/music/ui/LandingPageItemView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/ui/LandingPageItemView$1;-><init>(Lcom/sonyericsson/music/ui/LandingPageItemView;)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mScheduleLongPress:Ljava/lang/Runnable;

    .line 78
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    .line 79
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDefaultBackgroundPaint:Landroid/graphics/Paint;

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 84
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitlePosition:[F

    .line 85
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitlePosition:[F

    const/4 p1, 0x6

    .line 86
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDotPositions:[F

    .line 88
    sget-object p1, Lcom/sonyericsson/music/ui/LandingPageItemView$State;->IDLE:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mState:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    .line 89
    sget-object p1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRippleState:Z

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance p1, Lcom/sonyericsson/music/ui/ExpLinearShadow;

    const/4 p2, 0x1

    const/high16 v0, 0x59000000

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/music/ui/ExpLinearShadow;-><init>(II)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

    .line 68
    new-instance p1, Lcom/sonyericsson/music/ui/LandingPageItemView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/ui/LandingPageItemView$1;-><init>(Lcom/sonyericsson/music/ui/LandingPageItemView;)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mScheduleLongPress:Ljava/lang/Runnable;

    .line 78
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    .line 79
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDefaultBackgroundPaint:Landroid/graphics/Paint;

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 84
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitlePosition:[F

    .line 85
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitlePosition:[F

    const/4 p1, 0x6

    .line 86
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDotPositions:[F

    .line 88
    sget-object p1, Lcom/sonyericsson/music/ui/LandingPageItemView$State;->IDLE:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mState:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    .line 89
    sget-object p1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRippleState:Z

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p1, Lcom/sonyericsson/music/ui/ExpLinearShadow;

    const/4 p2, 0x1

    const/high16 p3, 0x59000000

    invoke-direct {p1, p3, p2}, Lcom/sonyericsson/music/ui/ExpLinearShadow;-><init>(II)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

    .line 68
    new-instance p1, Lcom/sonyericsson/music/ui/LandingPageItemView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/ui/LandingPageItemView$1;-><init>(Lcom/sonyericsson/music/ui/LandingPageItemView;)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mScheduleLongPress:Ljava/lang/Runnable;

    .line 78
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    .line 79
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDefaultBackgroundPaint:Landroid/graphics/Paint;

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 84
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitlePosition:[F

    .line 85
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitlePosition:[F

    const/4 p1, 0x6

    .line 86
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDotPositions:[F

    .line 88
    sget-object p1, Lcom/sonyericsson/music/ui/LandingPageItemView$State;->IDLE:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mState:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    .line 89
    sget-object p1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRippleState:Z

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/music/ui/LandingPageItemView;Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;)Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/ui/LandingPageItemView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->notifyOnLongPressed()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/ui/LandingPageItemView;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setRippleState(Z)V

    return-void
.end method

.method public static clearDrawableCache()V
    .locals 1

    .line 65
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView;->CACHE:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method private dp(F)F
    .locals 1

    .line 584
    iget v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDensity:F

    mul-float v0, v0, p1

    return v0
.end method

.method private ellipsize(Ljava/lang/String;Landroid/text/TextPaint;)Ljava/lang/String;
    .locals 8

    .line 468
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 474
    :cond_0
    iget v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHorizontalPadding:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 475
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v4, v0, v1

    .line 476
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 477
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, v0}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mIsRtl:Z

    .line 140
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 141
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDensity:F

    .line 142
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mScaledDensity:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 144
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->dp(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDefaultIconSize:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 145
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->dp(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateVerticalPadding:I

    .line 146
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->dp(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHorizontalPadding:I

    const/high16 v0, 0x40800000    # 4.0f

    .line 147
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->dp(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTextSpacing:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 148
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->dp(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSmallIconPadding:I

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/ThemeColor;->primaryText(Landroid/content/Context;)I

    move-result v0

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/ThemeColor;->secondaryText(Landroid/content/Context;)I

    move-result v1

    .line 153
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-direct {p0, v3}, Lcom/sonyericsson/music/ui/LandingPageItemView;->sp(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 154
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 155
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget-boolean v3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mIsRtl:Z

    if-eqz v3, :cond_0

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 156
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 157
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleHeight:F

    .line 159
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {p0, v3}, Lcom/sonyericsson/music/ui/LandingPageItemView;->sp(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 160
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 161
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    iget-boolean v3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mIsRtl:Z

    if-eqz v3, :cond_1

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 163
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleHeight:F

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {p0, v2}, Lcom/sonyericsson/music/ui/LandingPageItemView;->dp(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v1, 0x7f0401aa

    .line 168
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->loadThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDefaultBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x26ffffff

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private loadResourceDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 493
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView;->CACHE:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 495
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 499
    :cond_0
    sget-object p2, Lcom/sonyericsson/music/ui/LandingPageItemView;->CACHE:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private loadThemeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 506
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView;->CACHE:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 508
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 509
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 510
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 511
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 512
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView;->CACHE:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 514
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private notifyOnContextMenuClicked()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mListener:Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;

    if-eqz v0, :cond_0

    .line 573
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;->onContextMenuClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private notifyOnItemClicked()V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mListener:Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;

    if-eqz v0, :cond_0

    .line 567
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;->onItemClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private notifyOnLongPressed()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mListener:Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;->onItemLongPressed(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setHiResBounds()V
    .locals 5

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mHiResIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 519
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSmallIconPadding:I

    sub-int/2addr v1, v2

    .line 520
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 521
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mHiResIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 522
    iget-boolean v3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mIsRtl:Z

    if-eqz v3, :cond_0

    .line 523
    iget-object v3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSmallIconPadding:I

    add-int/2addr v3, v4

    .line 524
    iget-object v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mHiResIcon:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    add-int/2addr v2, v3

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 526
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSmallIconPadding:I

    sub-int/2addr v3, v4

    .line 527
    iget-object v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mHiResIcon:Landroid/graphics/drawable/Drawable;

    sub-int v2, v3, v2

    sub-int v0, v1, v0

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setPlayingStateBounds()V
    .locals 5

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 534
    iget v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDefaultIconSize:I

    .line 535
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 536
    iget-boolean v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mIsRtl:Z

    if-eqz v4, :cond_0

    .line 537
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSmallIconPadding:I

    sub-int/2addr v2, v4

    sub-int v4, v2, v1

    sub-int v1, v3, v1

    .line 538
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 540
    :cond_0
    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSmallIconPadding:I

    add-int/2addr v2, v4

    sub-int v4, v3, v1

    add-int/2addr v1, v2

    .line 541
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setRippleState(Z)V
    .locals 2

    .line 547
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRippleState:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 552
    :cond_0
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRippleState:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 555
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/sonyericsson/music/ui/LandingPageItemView;->RIPPLE_PRESSED_STATE:[I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 556
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 557
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 560
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/sonyericsson/music/ui/LandingPageItemView$InvalidateCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView$InvalidateCallback;-><init>(Lcom/sonyericsson/music/ui/LandingPageItemView;Lcom/sonyericsson/music/ui/LandingPageItemView$1;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 562
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private sp(F)F
    .locals 1

    .line 588
    iget v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mScaledDensity:F

    mul-float v0, v0, p1

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 424
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArt:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDefaultBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/ExpLinearShadow;->draw(Landroid/graphics/Canvas;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mHiResIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleShortened:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitlePosition:[F

    aget v7, v0, v2

    .line 450
    aget v8, v0, v1

    .line 451
    iget-object v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleShortened:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 454
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleShortened:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 455
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitlePosition:[F

    aget v7, v0, v2

    .line 457
    aget v8, v0, v1

    .line 458
    iget-object v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleShortened:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 462
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDotPositions:[F

    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 175
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x42

    if-eq p1, p2, :cond_2

    const/16 p2, 0x17

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 179
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->notifyOnItemClicked()V

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 364
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 367
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    .line 368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    .line 369
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p3

    sub-int/2addr p4, p3

    .line 371
    iget p3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtSize:I

    add-int/2addr p3, p1

    int-to-float p5, p3

    .line 372
    iget v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHeight:F

    add-float/2addr v0, p5

    .line 374
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p1, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArt:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 380
    :cond_0
    iget p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtSize:I

    const/4 v1, 0x2

    mul-int/lit8 p1, p1, 0x2

    const/4 v2, 0x3

    div-int/2addr p1, v2

    .line 381
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 382
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 383
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 385
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setHiResBounds()V

    .line 386
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setPlayingStateBounds()V

    .line 388
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    .line 389
    iget-object v3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 390
    iget-boolean v5, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mIsRtl:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 391
    iget-object p4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDotPositions:[F

    iget v5, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHorizontalPadding:I

    add-int/2addr p2, v5

    int-to-float p2, p2

    add-float/2addr p2, v3

    aput p2, p4, v6

    goto :goto_0

    .line 393
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDotPositions:[F

    iget v5, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHorizontalPadding:I

    sub-int/2addr p4, v5

    int-to-float p4, p4

    sub-float/2addr p4, v3

    aput p4, p2, v6

    .line 395
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDotPositions:[F

    iget p4, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHeight:F

    div-float/2addr p4, v4

    add-float/2addr p5, p4

    const/4 p4, 0x1

    aput p5, p2, p4

    .line 396
    aget p5, p2, v6

    aput p5, p2, v1

    .line 397
    aget p5, p2, p4

    sub-float/2addr p5, p1

    sub-float/2addr p5, v3

    aput p5, p2, v2

    const/4 p5, 0x4

    .line 398
    aget v1, p2, v6

    aput v1, p2, p5

    const/4 p5, 0x5

    .line 399
    aget v1, p2, p4

    add-float/2addr v1, p1

    add-float/2addr v1, v3

    aput v1, p2, p5

    .line 401
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    aget p2, p2, v6

    const/high16 p5, 0x41c00000    # 24.0f

    .line 402
    invoke-direct {p0, p5}, Lcom/sonyericsson/music/ui/LandingPageItemView;->dp(F)F

    move-result v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mDotPositions:[F

    aget v1, v1, v6

    .line 404
    invoke-direct {p0, p5}, Lcom/sonyericsson/music/ui/LandingPageItemView;->dp(F)F

    move-result p5

    add-float/2addr v1, p5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p5

    .line 405
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 401
    invoke-virtual {p1, p2, p3, p5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    iget-boolean p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mIsRtl:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHorizontalPadding:I

    sub-int/2addr p1, p2

    goto :goto_1

    .line 409
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHorizontalPadding:I

    add-int/2addr p1, p2

    .line 411
    :goto_1
    iget-object p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->descent()F

    move-result p2

    iget-object p3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/text/TextPaint;->ascent()F

    move-result p3

    add-float/2addr p2, p3

    div-float/2addr p2, v4

    .line 412
    iget-object p3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitlePosition:[F

    int-to-float p1, p1

    aput p1, p3, v6

    .line 413
    iget-object p5, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateVerticalPadding:I

    add-int/2addr p5, v1

    int-to-float p5, p5

    iget v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleHeight:F

    div-float/2addr v1, v4

    add-float/2addr p5, v1

    sub-float/2addr p5, p2

    aput p5, p3, p4

    .line 416
    iget-object p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->descent()F

    move-result p2

    iget-object p3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/text/TextPaint;->ascent()F

    move-result p3

    add-float/2addr p2, p3

    div-float/2addr p2, v4

    .line 417
    iget-object p3, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitlePosition:[F

    aput p1, p3, v6

    .line 418
    iget p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateVerticalPadding:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleHeight:F

    div-float/2addr p1, v4

    sub-float/2addr v0, p1

    sub-float/2addr v0, p2

    aput v0, p3, p4

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 336
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    .line 338
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 341
    iput p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtSize:I

    .line 343
    iget v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateVerticalPadding:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTextSpacing:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleHeight:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHeight:F

    .line 350
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    int-to-float p2, v0

    .line 357
    iget v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mBackPlateHeight:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 359
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 330
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitle:Ljava/lang/String;

    iget-object p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/LandingPageItemView;->ellipsize(Ljava/lang/String;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleShortened:Ljava/lang/String;

    .line 331
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitle:Ljava/lang/String;

    iget-object p2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/LandingPageItemView;->ellipsize(Ljava/lang/String;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleShortened:Ljava/lang/String;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x190

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mScheduleLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 238
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$2;->$SwitchMap$com$sonyericsson$music$ui$LandingPageItemView$Touching:[I

    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 245
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 240
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    .line 241
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setRippleState(Z)V

    return v6

    .line 213
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    sget-object v1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->CONTEXT:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    if-ne v0, v1, :cond_2

    return v6

    .line 219
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mScheduleLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 220
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$2;->$SwitchMap$com$sonyericsson$music$ui$LandingPageItemView$Touching:[I

    iget-object v1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 230
    :pswitch_5
    sget-object p1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->performClick()Z

    return v6

    .line 222
    :pswitch_6
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    .line 223
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setRippleState(Z)V

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->notifyOnContextMenuClicked()V

    :cond_0
    return v6

    .line 199
    :pswitch_7
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    sget-object v3, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    if-ne v2, v3, :cond_2

    .line 200
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mScheduleLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    iget-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-object p1, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->CONTEXT:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    .line 203
    invoke-direct {p0, v6}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setRippleState(Z)V

    return v6

    .line 206
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;->ITEM:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTouchState:Lcom/sonyericsson/music/ui/LandingPageItemView$Touching;

    .line 207
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 250
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 188
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 189
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->notifyOnItemClicked()V

    const/4 v0, 0x1

    return v0
.end method

.method public setAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 271
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArt:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArt:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArtRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mAlbumArt:Landroid/graphics/drawable/Drawable;

    .line 276
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setClickListener(Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mListener:Lcom/sonyericsson/music/ui/LandingPageItemView$OnClickListener;

    return-void
.end method

.method public setPlayingState(Lcom/sonyericsson/music/ui/LandingPageItemView$State;)V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mState:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    if-ne v0, p1, :cond_0

    return-void

    .line 293
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/ui/LandingPageItemView$State;->LOADING:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;

    if-eqz v1, :cond_1

    .line 295
    check-cast v0, Lcom/sonyericsson/music/ui/LoadingStateDrawable;

    .line 296
    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->stop()V

    .line 297
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 300
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mState:Lcom/sonyericsson/music/ui/LandingPageItemView$State;

    .line 302
    sget-object v0, Lcom/sonyericsson/music/ui/LandingPageItemView$2;->$SwitchMap$com$sonyericsson$music$ui$LandingPageItemView$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 315
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/music/ui/LoadingStateDrawable;

    invoke-direct {p1}, Lcom/sonyericsson/music/ui/LoadingStateDrawable;-><init>()V

    .line 316
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 317
    new-instance v0, Lcom/sonyericsson/music/ui/LandingPageItemView$InvalidateCallback;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/music/ui/LandingPageItemView$InvalidateCallback;-><init>(Lcom/sonyericsson/music/ui/LandingPageItemView;Lcom/sonyericsson/music/ui/LandingPageItemView$1;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 318
    invoke-virtual {p1}, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->start()V

    .line 319
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    const p1, 0x7f080165

    .line 311
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->loadResourceDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    .line 312
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f080164

    .line 307
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->loadResourceDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    .line 308
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 304
    :pswitch_3
    iput-object v2, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mPlayingState:Landroid/graphics/drawable/Drawable;

    .line 323
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setPlayingStateBounds()V

    .line 324
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHiResBadge(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f08009d

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->loadResourceDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mHiResIcon:Landroid/graphics/drawable/Drawable;

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setHiResBounds()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 284
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mHiResIcon:Landroid/graphics/drawable/Drawable;

    .line 286
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 264
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitle:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->ellipsize(Ljava/lang/String;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mSubtitleShortened:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 258
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitle:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/LandingPageItemView;->ellipsize(Ljava/lang/String;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView;->mTitleShortened:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
