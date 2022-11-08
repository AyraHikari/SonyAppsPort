.class public Lcom/android/quickstep/interaction/AnimatedTaskbarView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AnimatedTaskbarView.java"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mIcon1:Landroid/view/View;

.field private mIcon2:Landroid/view/View;

.field private mIcon3:Landroid/view/View;

.field private mIcon4:Landroid/view/View;

.field private mIcon5:Landroid/view/View;

.field private mIcon6:Landroid/view/View;

.field private mIconContainer:Landroid/view/View;

.field private mRunningAnimator:Landroid/animation/Animator;


# direct methods
.method static bridge synthetic -$$Nest$fputmRunningAnimator(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mRunningAnimator:Landroid/animation/Animator;

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetIconContainerPivot(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->resetIconContainerPivot()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method private createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 9
    .param p1, "taskbarIcon"    # Landroid/view/View;
    .param p2, "hotseatIcon"    # Landroid/view/View;
    .param p3, "hotseatTop"    # I

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 339
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v3, v4

    .line 336
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v2, [F

    .line 342
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v3, v5

    aput v6, v3, v4

    .line 341
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v2, [F

    .line 346
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v4

    .line 343
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    .line 351
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v3, v5

    aput v6, v3, v4

    .line 348
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 357
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 358
    new-instance v2, Lcom/android/quickstep/interaction/AnimatedTaskbarView$7;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$7;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 9
    .param p1, "taskbarIcon"    # Landroid/view/View;
    .param p2, "hotseatIcon"    # Landroid/view/View;
    .param p3, "hotseatTop"    # I

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 297
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 293
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v2, [F

    aput v5, v3, v4

    .line 299
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v3, v7

    .line 298
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v2, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 304
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    aput v6, v3, v7

    .line 300
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    aput v5, v3, v4

    .line 309
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v7

    .line 305
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 314
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 315
    new-instance v2, Lcom/android/quickstep/interaction/AnimatedTaskbarView$6;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$6;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    return-object v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initializeIconContainerPivot()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 252
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 253
    return-void
.end method

.method private resetIconContainerPivot()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->resetPivot()V

    .line 257
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 258
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 259
    return-void
.end method

.method private start(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 262
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 266
    :cond_0
    new-instance v0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 287
    return-void
.end method


# virtual methods
.method public animateAppearanceFromBottom()V
    .locals 7

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget-object v5, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    .line 217
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 216
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-direct {p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->initializeIconContainerPivot()V

    .line 224
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 226
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 227
    new-instance v2, Lcom/android/quickstep/interaction/AnimatedTaskbarView$4;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$4;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    invoke-direct {p0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->start(Landroid/animation/Animator;)V

    .line 248
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateAppearanceFromHotseat(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "hotseat"    # Landroid/view/ViewGroup;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 139
    .local v1, "hotseatTop":I
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    .line 140
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 139
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon1:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_1:I

    .line 143
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 142
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon2:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_2:I

    .line 145
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 144
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon3:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_3:I

    .line 147
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 146
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon4:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_4:I

    .line 149
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 148
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon5:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_5:I

    .line 151
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 150
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon6:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_6:I

    .line 153
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 152
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 157
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 158
    new-instance v3, Lcom/android/quickstep/interaction/AnimatedTaskbarView$2;

    invoke-direct {v3, p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$2;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    invoke-direct {p0, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->start(Landroid/animation/Animator;)V

    .line 167
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateDisappearanceToBottom()V
    .locals 7

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    iget-object v5, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    .line 176
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 175
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->initializeIconContainerPivot()V

    .line 183
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 185
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 186
    new-instance v2, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    invoke-direct {p0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->start(Landroid/animation/Animator;)V

    .line 208
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public animateDisappearanceToHotseat(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "hotseat"    # Landroid/view/ViewGroup;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 96
    .local v1, "hotseatTop":I
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    iget-object v6, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    .line 97
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 96
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon1:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_1:I

    .line 100
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 99
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon2:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_2:I

    .line 102
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 101
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon3:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_3:I

    .line 104
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 103
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon4:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_4:I

    .line 106
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 105
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon5:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_5:I

    .line 108
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 107
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon6:Landroid/view/View;

    sget v3, Lcom/android/launcher3/R$id;->hotseat_icon_6:I

    .line 110
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 109
    invoke-direct {p0, v2, v3, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 114
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 115
    new-instance v3, Lcom/android/quickstep/interaction/AnimatedTaskbarView$1;

    invoke-direct {v3, p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$1;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    invoke-direct {p0, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->start(Landroid/animation/Animator;)V

    .line 130
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 79
    sget v0, Lcom/android/launcher3/R$id;->taskbar_background:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    .line 80
    sget v0, Lcom/android/launcher3/R$id;->icon_container:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    .line 81
    sget v0, Lcom/android/launcher3/R$id;->taskbar_icon_1:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon1:Landroid/view/View;

    .line 82
    sget v0, Lcom/android/launcher3/R$id;->taskbar_icon_2:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon2:Landroid/view/View;

    .line 83
    sget v0, Lcom/android/launcher3/R$id;->taskbar_icon_3:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon3:Landroid/view/View;

    .line 84
    sget v0, Lcom/android/launcher3/R$id;->taskbar_icon_4:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon4:Landroid/view/View;

    .line 85
    sget v0, Lcom/android/launcher3/R$id;->taskbar_icon_5:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon5:Landroid/view/View;

    .line 86
    sget v0, Lcom/android/launcher3/R$id;->taskbar_icon_6:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon6:Landroid/view/View;

    .line 87
    return-void
.end method
