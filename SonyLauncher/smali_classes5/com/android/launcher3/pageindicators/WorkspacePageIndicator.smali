.class public Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;
.super Landroid/view/View;
.source "WorkspacePageIndicator.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# static fields
.field private static final ANIMATOR_COUNT:I = 0x3

.field public static final BLACK_ALPHA:I = 0xa5

.field private static final LINE_ALPHA_ANIMATOR_INDEX:I = 0x0

.field private static final LINE_ANIMATE_DURATION:I

.field private static final LINE_FADE_DELAY:I

.field private static final NUM_PAGES:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_PAGES_ANIMATOR_INDEX:I = 0x1

.field private static final PAINT_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOTAL_SCROLL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOTAL_SCROLL_ANIMATOR_INDEX:I = 0x2

.field public static final WHITE_ALPHA:I = 0xb2


# instance fields
.field private mActiveAlpha:I

.field private mAnimators:[Landroid/animation/ValueAnimator;

.field private mCurrentScroll:I

.field private final mDelayedLineFadeHandler:Landroid/os/Handler;

.field private mHideLineRunnable:Ljava/lang/Runnable;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLineHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mNumPagesFloat:F

.field private mShouldAutoHide:Z

.field private mToAlpha:I

.field private mTotalScroll:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimators(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)[Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinePaint(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumPagesFloat(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalScroll(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmNumPagesFloat(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTotalScroll(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_ANIMATE_DURATION:I

    .line 37
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_FADE_DELAY:I

    .line 64
    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "paint_alpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->PAINT_ALPHA:Landroid/util/Property;

    .line 78
    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "num_pages"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->NUM_PAGES:Landroid/util/Property;

    .line 92
    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$3;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "total_scroll"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->TOTAL_SCROLL:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mShouldAutoHide:Z

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mActiveAlpha:I

    .line 106
    new-instance v1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)V

    iput-object v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mHideLineRunnable:Ljava/lang/Runnable;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 120
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 124
    sget v2, Lcom/android/launcher3/R$dimen;->workspace_page_indicator_line_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    .line 126
    sget v2, Lcom/android/launcher3/R$attr;->isWorkspaceDarkText:I

    invoke-static {v0, v2}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 127
    .local v0, "darkText":Z
    if-eqz v0, :cond_0

    const/16 v2, 0xa5

    goto :goto_0

    :cond_0
    const/16 v2, 0xb2

    :goto_0
    iput v2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mActiveAlpha:I

    .line 128
    iget-object v2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    const/high16 v3, -0x1000000

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    return-void
.end method

.method private animateLineToAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .line 201
    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mToAlpha:I

    if-ne p1, v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mToAlpha:I

    .line 206
    sget-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->PAINT_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    .line 208
    return-void
.end method

.method private animateToTotalScroll(I)V
    .locals 3
    .param p1, "totalScroll"    # I

    .line 211
    sget-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->TOTAL_SCROLL:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    .line 213
    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mHideLineRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_FADE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method private setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "animatorIndex"    # I

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aput-object p1, v0, p2

    .line 227
    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;-><init>(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    sget v1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_ANIMATE_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 235
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-launcher3-pageindicators-WorkspacePageIndicator()V
    .locals 1

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->animateLineToAlpha(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 133
    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mCurrentScroll:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 139
    .local v0, "progress":F
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getWidth()I

    move-result v1

    .line 140
    .local v1, "availableWidth":I
    int-to-float v2, v1

    iget v3, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 141
    .local v2, "lineWidth":I
    sub-int v3, v1, v2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 142
    .local v3, "lineLeft":I
    add-int v4, v3, v2

    .line 144
    .local v4, "lineRight":I
    int-to-float v6, v3

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v7, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v7, v5

    int-to-float v8, v4

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v9, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    div-int/lit8 v10, v9, 0x2

    add-int/2addr v5, v10

    int-to-float v10, v5

    int-to-float v11, v9

    int-to-float v12, v9

    iget-object v13, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    .line 144
    move-object v5, p1

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 146
    return-void

    .line 134
    .end local v0    # "progress":F
    .end local v1    # "availableWidth":I
    .end local v2    # "lineWidth":I
    .end local v3    # "lineLeft":I
    .end local v4    # "lineRight":I
    :cond_1
    :goto_0
    return-void
.end method

.method public pauseAnimations()V
    .locals 2

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->pause()V

    .line 242
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 0
    .param p1, "activePage"    # I

    .line 175
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 264
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 268
    .local v2, "padding":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 269
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 270
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 271
    .end local v2    # "padding":Landroid/graphics/Rect;
    goto :goto_0

    .line 272
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 273
    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 274
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 276
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    return-void
.end method

.method public setMarkersCount(I)V
    .locals 5
    .param p1, "numMarkers"    # I

    .line 179
    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->NUM_PAGES:Landroid/util/Property;

    new-array v2, v1, [F

    const/4 v3, 0x0

    int-to-float v4, p1

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 188
    :cond_1
    :goto_0
    return-void
.end method

.method public setScroll(II)V
    .locals 2
    .param p1, "currentScroll"    # I
    .param p2, "totalScroll"    # I

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mActiveAlpha:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->animateLineToAlpha(I)V

    .line 155
    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mCurrentScroll:I

    .line 156
    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    if-nez v0, :cond_1

    .line 157
    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    goto :goto_0

    .line 158
    :cond_1
    if-eq v0, p2, :cond_2

    .line 159
    invoke-direct {p0, p2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->animateToTotalScroll(I)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->invalidate()V

    .line 164
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mShouldAutoHide:Z

    if-eqz v0, :cond_3

    .line 165
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->hideAfterDelay()V

    .line 167
    :cond_3
    return-void
.end method

.method public setShouldAutoHide(Z)V
    .locals 2
    .param p1, "shouldAutoHide"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mShouldAutoHide:Z

    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->hideAfterDelay()V

    goto :goto_0

    .line 195
    :cond_0
    if-nez p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    :cond_1
    :goto_0
    return-void
.end method

.method public skipAnimationsToEnd()V
    .locals 2

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
