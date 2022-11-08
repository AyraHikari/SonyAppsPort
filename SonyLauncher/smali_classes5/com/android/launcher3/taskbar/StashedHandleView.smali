.class public Lcom/android/launcher3/taskbar/StashedHandleView;
.super Landroid/view/View;
.source "StashedHandleView.java"


# static fields
.field private static final COLOR_CHANGE_DURATION:J = 0x78L


# instance fields
.field private mColorChangeAnim:Landroid/animation/ObjectAnimator;

.field private final mSampledRegion:Landroid/graphics/Rect;

.field private final mStashedHandleDarkColor:I

.field private final mStashedHandleLightColor:I

.field private final mTmpArr:[I


# direct methods
.method static bridge synthetic -$$Nest$fputmColorChangeAnim(Lcom/android/launcher3/taskbar/StashedHandleView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mColorChangeAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/StashedHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/StashedHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/StashedHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mSampledRegion:Landroid/graphics/Rect;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mTmpArr:[I

    .line 60
    sget v0, Lcom/android/launcher3/R$color;->taskbar_stashed_handle_light_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mStashedHandleLightColor:I

    .line 62
    sget v0, Lcom/android/launcher3/R$color;->taskbar_stashed_handle_dark_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mStashedHandleDarkColor:I

    .line 64
    return-void
.end method


# virtual methods
.method public getSampledRegion()Landroid/graphics/Rect;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mSampledRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public updateHandleColor(ZZ)V
    .locals 4
    .param p1, "isRegionDark"    # Z
    .param p2, "animate"    # Z

    .line 87
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mStashedHandleLightColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mStashedHandleDarkColor:I

    .line 88
    .local v0, "newColor":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mColorChangeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 91
    :cond_1
    if-eqz p2, :cond_2

    .line 92
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mColorChangeAnim:Landroid/animation/ObjectAnimator;

    .line 94
    new-instance v2, Lcom/android/launcher3/taskbar/StashedHandleView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/StashedHandleView$1;-><init>(Lcom/android/launcher3/taskbar/StashedHandleView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mColorChangeAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mColorChangeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/StashedHandleView;->setBackgroundColor(I)V

    .line 105
    :goto_1
    return-void
.end method

.method public updateSampledRegion(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "stashedHandleBounds"    # Landroid/graphics/Rect;

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mTmpArr:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/StashedHandleView;->getLocationOnScreen([I)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mSampledRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mSampledRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleView;->mTmpArr:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 74
    return-void
.end method
