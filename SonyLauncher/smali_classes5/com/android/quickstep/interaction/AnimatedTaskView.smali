.class public Lcom/android/quickstep/interaction/AnimatedTaskView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AnimatedTaskView.java"


# instance fields
.field private mBottomTaskView:Landroidx/cardview/widget/CardView;

.field private mFullTaskView:Landroid/view/View;

.field private mTaskViewAnimatedRadius:F

.field private final mTaskViewAnimatedRect:Landroid/graphics/Rect;

.field private mTaskViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mTopTaskView:Landroidx/cardview/widget/CardView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFullTaskView(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mFullTaskView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskViewAnimatedRadius(Lcom/android/quickstep/interaction/AnimatedTaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewAnimatedRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskViewAnimatedRect(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewAnimatedRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskViewOutlineProvider(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/view/ViewOutlineProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTaskViewAnimatedRadius(Lcom/android/quickstep/interaction/AnimatedTaskView;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewAnimatedRadius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewAnimatedRect:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewAnimatedRect:Landroid/graphics/Rect;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewAnimatedRect:Landroid/graphics/Rect;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewAnimatedRect:Landroid/graphics/Rect;

    .line 76
    return-void
.end method


# virtual methods
.method createAnimationToMultiRowLayout()Landroid/animation/AnimatorSet;
    .locals 14

    .line 90
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    .line 95
    .local v0, "startOutline":Landroid/graphics/Outline;
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    .line 96
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 97
    .local v1, "outlineStartRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    .line 98
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTopTaskView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getHeight()I

    move-result v8

    .line 99
    .local v8, "endRectBottom":I
    invoke-virtual {v0}, Landroid/graphics/Outline;->getRadius()F

    move-result v9

    .line 100
    .local v9, "outlineStartRadius":F
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->gesture_tutorial_small_task_view_corner_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v10, v2

    .line 103
    .local v10, "outlineEndRadius":F
    const/4 v11, 0x2

    new-array v2, v11, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 104
    .local v12, "outlineAnimator":Landroid/animation/ValueAnimator;
    new-instance v13, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;

    move-object v2, v13

    move-object v3, p0

    move-object v4, v1

    move v5, v8

    move v6, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;IFF)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    new-instance v2, Lcom/android/quickstep/interaction/AnimatedTaskView$1;

    invoke-direct {v2, p0, v1, v9}, Lcom/android/quickstep/interaction/AnimatedTaskView$1;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;F)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mBottomTaskView:Landroidx/cardview/widget/CardView;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v11, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mBottomTaskView:Landroidx/cardview/widget/CardView;

    .line 144
    invoke-virtual {v7}, Landroidx/cardview/widget/CardView;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 143
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 148
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 149
    new-instance v4, Lcom/android/quickstep/interaction/AnimatedTaskView$2;

    invoke-direct {v4, p0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView$2;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    return-object v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic lambda$createAnimationToMultiRowLayout$0$com-android-quickstep-interaction-AnimatedTaskView(Landroid/graphics/Rect;IFFLandroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "outlineStartRect"    # Landroid/graphics/Rect;
    .param p2, "endRectBottom"    # I
    .param p3, "outlineStartRadius"    # F
    .param p4, "outlineEndRadius"    # F
    .param p5, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 105
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 106
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewAnimatedRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 108
    sub-float v1, p4, p3

    mul-float/2addr v1, v0

    add-float/2addr v1, p3

    iput v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewAnimatedRadius:F

    .line 110
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mFullTaskView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidateOutline()V

    .line 111
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 82
    sget v0, Lcom/android/launcher3/R$id;->full_task_view:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mFullTaskView:Landroid/view/View;

    .line 83
    sget v0, Lcom/android/launcher3/R$id;->top_task_view:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTopTaskView:Landroidx/cardview/widget/CardView;

    .line 84
    sget v0, Lcom/android/launcher3/R$id;->bottom_task_view:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mBottomTaskView:Landroidx/cardview/widget/CardView;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setToSingleRowLayout(Z)V

    .line 87
    return-void
.end method

.method public setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    .line 194
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mFullTaskView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 195
    return-void
.end method

.method setFakeTaskViewFillColor(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .line 187
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mFullTaskView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 188
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTopTaskView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 189
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mBottomTaskView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 190
    return-void
.end method

.method public setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 1
    .param p1, "provider"    # Landroid/view/ViewOutlineProvider;

    .line 199
    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTaskViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 200
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mFullTaskView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 201
    return-void
.end method

.method setToMultiRowLayout()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mFullTaskView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTopTaskView:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mBottomTaskView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 184
    return-void
.end method

.method setToSingleRowLayout(Z)V
    .locals 3
    .param p1, "forAnimation"    # Z

    .line 175
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mFullTaskView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mTopTaskView:Landroidx/cardview/widget/CardView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView;->mBottomTaskView:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 178
    return-void
.end method
