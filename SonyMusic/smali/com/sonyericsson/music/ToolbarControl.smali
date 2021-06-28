.class public Lcom/sonyericsson/music/ToolbarControl;
.super Ljava/lang/Object;
.source "ToolbarControl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ToolbarControl$FixedScroller;,
        Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;,
        Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;
    }
.end annotation


# static fields
.field private static final COLORIZE_ANIMATION_DURATION:J = 0x190L

.field private static final COLORIZE_TEXT_ANIMATION_DURATION:J = 0xc8L

.field private static final FIXED_SCROLLER:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;


# instance fields
.field private mAnimateTargetFraction:I

.field private mAnimationRunning:Z

.field private mAppBarWrapper:Landroid/view/ViewGroup;

.field private final mColorMaterialPrimary:I

.field private mColorizedHeaderBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

.field private mColorizedView:Landroid/view/View;

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOnToolbarHeightListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollDelegate:Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;

.field private mScroller:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

.field private mStatusBarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

.field private final mStatusBarColor:I

.field private mToolbar:Lcom/sonyericsson/music/ui/ShadowingToolbar;

.field private final mToolbarAnimator:Landroid/view/ViewPropertyAnimator;

.field private mToolbarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

.field private mToolbarText:Lcom/sonyericsson/music/ui/ToolbarText;

.field private mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/sonyericsson/music/ToolbarControl$FixedScroller;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/ToolbarControl$FixedScroller;-><init>(Lcom/sonyericsson/music/ToolbarControl;)V

    sput-object v0, Lcom/sonyericsson/music/ToolbarControl;->FIXED_SCROLLER:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/music/ui/TouchInterceptLayout;)V
    .locals 3

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mOnToolbarHeightListeners:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/sonyericsson/music/ToolbarControl$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/ToolbarControl$1;-><init>(Lcom/sonyericsson/music/ToolbarControl;)V

    iput-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mScrollDelegate:Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;

    .line 172
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    iput-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mAppBarWrapper:Landroid/view/ViewGroup;

    .line 175
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mAppBarWrapper:Landroid/view/ViewGroup;

    const v1, 0x7f090156

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/ShadowingToolbar;

    iput-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbar:Lcom/sonyericsson/music/ui/ShadowingToolbar;

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mAppBarWrapper:Landroid/view/ViewGroup;

    const v1, 0x7f0901e1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 177
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mAppBarWrapper:Landroid/view/ViewGroup;

    const v2, 0x7f090218

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/ui/ToolbarWrap;

    iput-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbar:Lcom/sonyericsson/music/ui/ShadowingToolbar;

    const v2, 0x7f100127

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 180
    invoke-static {v0}, Lcom/sonyericsson/music/common/ThemeColor;->primary(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorMaterialPrimary:I

    .line 181
    invoke-static {v0}, Lcom/sonyericsson/music/common/ThemeColor;->statusBar(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarColor:I

    .line 183
    new-instance v1, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-direct {v1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    .line 185
    new-instance v1, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-direct {v1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    .line 186
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    .line 188
    new-instance v1, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-direct {v1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedHeaderBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedHeaderBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    iget v2, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorMaterialPrimary:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    iget-object v2, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarAnimator:Landroid/view/ViewPropertyAnimator;

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarAnimator:Landroid/view/ViewPropertyAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    new-instance v1, Lcom/sonyericsson/music/ToolbarControl$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/ToolbarControl$2;-><init>(Lcom/sonyericsson/music/ToolbarControl;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 211
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mScrollDelegate:Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/ui/TouchInterceptLayout;->setTarget(Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;)V

    .line 213
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/music/ToolbarControl;->mTouchSlop:I

    .line 215
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/music/ToolbarControl;->mMinimumFlingVelocity:I

    .line 216
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mMaximumFlingVelocity:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/ToolbarControl;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/sonyericsson/music/ToolbarControl;->mTouchSlop:I

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/music/ToolbarControl;->onScrollStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/ToolbarControl;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/sonyericsson/music/ToolbarControl;->mMaximumFlingVelocity:I

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/ToolbarControl;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/sonyericsson/music/ToolbarControl;->mMinimumFlingVelocity:I

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/ToolbarControl;ZF)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ToolbarControl;->onScrollEnd(ZF)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/ToolbarControl;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ToolbarControl;->dispatchOnToolbarHeightChanged(I)V

    return-void
.end method

.method public static clamp(III)I
    .locals 0

    .line 415
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private dispatchOnToolbarHeightChanged(I)V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mOnToolbarHeightListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;

    .line 446
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;->onToolbarHeightChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onScrollEnd(ZF)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mScroller:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->onScrollEnd(ZF)V

    :cond_0
    return-void
.end method

.method private onScrollStart()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mScroller:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->onScrollStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnToolbarHeightListener(Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;)V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mOnToolbarHeightListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mOnToolbarHeightListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 434
    invoke-interface {p1, v0}, Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;->onToolbarHeightChanged(I)V

    :cond_0
    return-void

    .line 428
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener already added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allowScrollOfToolbar(Z)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mScroller:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->setScrollAllowed(Z)V

    :cond_0
    return-void
.end method

.method public animateTo(F)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbar:Lcom/sonyericsson/music/ui/ShadowingToolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mAnimateTargetFraction:I

    if-eq v0, p1, :cond_1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 410
    iput p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mAnimateTargetFraction:I

    :cond_1
    return-void
.end method

.method public animateToolbarShadowAlpha(F)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    const/16 v1, 0x258

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/music/ui/ShadowLayout;->animateShadowAlpha(IF)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getAppBarFooter()Landroid/view/View;
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppWrapper()Landroid/view/View;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mAppBarWrapper:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbar:Lcom/sonyericsson/music/ui/ShadowingToolbar;

    return-object v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getToolbarVisibleHeight()I
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getToolbarWrapper()Landroid/view/View;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 395
    iput-boolean p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mAnimationRunning:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 390
    iput-boolean p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mAnimationRunning:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 385
    iput-boolean p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mAnimationRunning:Z

    return-void
.end method

.method public onScroll(I)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mScroller:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;->onScroll(I)V

    :cond_0
    return-void
.end method

.method public removeOnToolbarHeightListener(Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;)V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mOnToolbarHeightListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener not added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppBarColorized(IIIZ)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->cancelAnimation()V

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    .line 285
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {p1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->cancelAnimation()V

    .line 286
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    .line 287
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedHeaderBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {p1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->cancelAnimation()V

    .line 288
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedHeaderBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    .line 290
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    if-eqz p4, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x258

    invoke-virtual {p1, p3, p2}, Lcom/sonyericsson/music/ui/ShadowLayout;->animateShadowAlpha(IF)V

    return-void
.end method

.method public setAppBarColorized(Z)V
    .locals 2

    .line 277
    iget v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarColor:I

    iget v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorMaterialPrimary:I

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/sonyericsson/music/ToolbarControl;->setAppBarColorized(IIIZ)V

    return-void
.end method

.method public setAppBarFooter(Landroid/view/View;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAppBarTransparent()V
    .locals 2

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/ToolbarControl;->setToolbarShadowAlpha(F)V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->cancelAnimation()V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->cancelAnimation()V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedHeaderBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->cancelAnimation()V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedHeaderBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedView:Landroid/view/View;

    return-void
.end method

.method public setColorizedView(Landroid/view/View;)V
    .locals 1

    .line 270
    iput-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedView:Landroid/view/View;

    .line 271
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorizedHeaderBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setScroller(Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mScroller:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    return-void
.end method

.method public setStatusBarColorized(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 333
    iget p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarColor:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v0, 0x190

    .line 339
    iget-object v2, p0, Lcom/sonyericsson/music/ToolbarControl;->mStatusBarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColorWithAnimation(IJ)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;I)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarText:Lcom/sonyericsson/music/ui/ToolbarText;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/ToolbarText;->cleanupToolbarText()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarText:Lcom/sonyericsson/music/ui/ToolbarText;

    .line 224
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/ui/ToolbarText;

    iget-object v1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbar:Lcom/sonyericsson/music/ui/ShadowingToolbar;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/ui/ToolbarText;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarText:Lcom/sonyericsson/music/ui/ToolbarText;

    return-void
.end method

.method public setTitleAlpha(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarText:Lcom/sonyericsson/music/ui/ToolbarText;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/ToolbarText;->setTextAlpha(I)V

    :cond_0
    return-void
.end method

.method public setToolbarColorized(Z)V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarBackground:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mColorMaterialPrimary:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v1, 0x190

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColorWithAnimation(IJ)V

    return-void
.end method

.method public setToolbarShadowAlpha(F)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/ShadowLayout;->cancelShadowAnimation()V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/ShadowLayout;->setShadowAlpha(F)V

    return-void
.end method

.method public startToolbarTextAnimation(Z)V
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarText:Lcom/sonyericsson/music/ui/ToolbarText;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0xff

    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0xff

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarText:Lcom/sonyericsson/music/ui/ToolbarText;

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/sonyericsson/music/ui/ToolbarText;->animateTextAlpha(IIJ)V

    :cond_2
    return-void
.end method

.method public unsetScroller()V
    .locals 1

    .line 243
    sget-object v0, Lcom/sonyericsson/music/ToolbarControl;->FIXED_SCROLLER:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    iput-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mScroller:Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl;->cancelAnimation()V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarWrapper:Lcom/sonyericsson/music/ui/ToolbarWrap;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/ShadowLayout;->cancelShadowAnimation()V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/music/ToolbarControl;->mToolbarText:Lcom/sonyericsson/music/ui/ToolbarText;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/ToolbarText;->cleanupToolbarText()V

    :cond_0
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/ToolbarControl;->animateTo(F)V

    return-void
.end method
