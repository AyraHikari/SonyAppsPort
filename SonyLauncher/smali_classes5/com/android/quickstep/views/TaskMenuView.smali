.class public Lcom/android/quickstep/views/TaskMenuView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "TaskMenuView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static final REVEAL_CLOSE_DURATION:I = 0x64

.field private static final REVEAL_OPEN_DURATION:I = 0x96

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private mOpenCloseAnimator:Landroid/animation/AnimatorSet;

.field private mOptionLayout:Landroid/widget/LinearLayout;

.field private mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

.field private final mTaskInsetMargin:F

.field private mTaskName:Landroid/widget/TextView;

.field private mTaskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public static synthetic $r8$lambda$35HpYK-rj2ohFNTa3c5K7r40ylc(Lcom/android/quickstep/views/TaskMenuView;Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->addMenuOption(Lcom/android/launcher3/popup/SystemShortcut;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tIIFC9lRGRzFcA36LtvXG6PzH38(Lcom/android/quickstep/views/TaskMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->animateOpen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseComplete(Lcom/android/quickstep/views/TaskMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->closeComplete()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    invoke-static {p1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->setClipToOutline(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->task_card_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskInsetMargin:F

    .line 88
    return-void
.end method

.method private addMenuOption(Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 4
    .param p1, "menuOption"    # Lcom/android/launcher3/popup/SystemShortcut;

    .line 241
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->task_view_menu_option:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 243
    .local v0, "menuOptionView":Landroid/widget/LinearLayout;
    sget v1, Lcom/android/launcher3/R$id;->icon:I

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 243
    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    .line 245
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 246
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 247
    invoke-virtual {v3}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 246
    invoke-interface {v2, v1, v0, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setLayoutParamsForTaskMenuOptionItem(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;Lcom/android/launcher3/DeviceProfile;)V

    .line 248
    new-instance v2, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda5;-><init>(Lcom/android/quickstep/views/TaskMenuView;Lcom/android/launcher3/popup/SystemShortcut;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v2, p0, Lcom/android/quickstep/views/TaskMenuView;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    return-void
.end method

.method private addMenuOptions(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .locals 3
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 233
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/quickstep/TaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskName:Landroid/widget/TextView;

    new-instance v1, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/views/TaskMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/TaskOverlayFactory;->getEnabledShortcuts(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/views/TaskMenuView;)V

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 238
    return-void
.end method

.method private animateClose()V
    .locals 1

    .line 301
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->animateOpenOrClosed(Z)V

    .line 302
    return-void
.end method

.method private animateOpen()V
    .locals 1

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->animateOpenOrClosed(Z)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mIsOpen:Z

    .line 298
    return-void
.end method

.method private animateOpenOrClosed(Z)V
    .locals 10
    .param p1, "closing"    # Z

    .line 305
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 308
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 310
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 312
    .local v0, "revealAnimator":Landroid/animation/Animator;
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v4, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 315
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v4

    sget-object v5, Lcom/android/quickstep/views/TaskThumbnailView;->DIM_ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v7, v6, [F

    .line 316
    const/4 v8, 0x0

    if-eqz p1, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    const v9, 0x3ecccccd    # 0.4f

    :goto_0
    aput v9, v7, v3

    .line 314
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x2

    sget-object v5, Lcom/android/quickstep/views/TaskMenuView;->ALPHA:Landroid/util/Property;

    new-array v6, v6, [F

    .line 317
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_1
    aput v8, v6, v3

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v4

    .line 313
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 318
    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/quickstep/views/TaskMenuView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/views/TaskMenuView$2;-><init>(Lcom/android/quickstep/views/TaskMenuView;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x64

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x96

    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 332
    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 333
    return-void
.end method

.method private closeComplete()V
    .locals 1

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mIsOpen:Z

    .line 337
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 338
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/RecentsView;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 339
    return-void
.end method

.method private createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
    .locals 6

    .line 342
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/quickstep/util/TaskCornerRadius;->get(Landroid/content/Context;)F

    move-result v0

    .line 343
    .local v0, "radius":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 344
    .local v1, "fromRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    .local v2, "toRect":Landroid/graphics/Rect;
    new-instance v3, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    invoke-direct {v3, v0, v0, v1, v2}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v3
.end method

.method static synthetic lambda$addMenuOption$1(Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V
    .locals 0
    .param p0, "menuOption"    # Lcom/android/launcher3/popup/SystemShortcut;
    .param p1, "view"    # Landroid/view/View;

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/SystemShortcut;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$addMenuOption$2(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V
    .locals 3
    .param p0, "recentsView"    # Lcom/android/quickstep/views/RecentsView;
    .param p1, "menuOption"    # Lcom/android/launcher3/popup/SystemShortcut;
    .param p2, "view"    # Landroid/view/View;

    .line 252
    new-instance v0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method private orientAroundTaskView(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .locals 12
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 263
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 264
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    .line 265
    .local v1, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Lcom/android/quickstep/views/TaskMenuView;->measure(II)V

    .line 266
    iget v3, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskInsetMargin:F

    invoke-interface {v1, p0, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setTaskMenuAroundTaskView(Landroid/widget/LinearLayout;F)V

    .line 269
    iget-object v3, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 270
    .local v3, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-object v4, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    sget-object v6, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 271
    iget-object v4, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/views/BaseDragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    .line 272
    .local v4, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 273
    .local v5, "params":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/launcher3/R$dimen;->task_menu_vertical_padding:I

    .line 274
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 275
    .local v7, "padding":I
    nop

    .line 276
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v8

    invoke-interface {v1, v8, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getTaskMenuWidth(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;)I

    move-result v8

    mul-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    iput v8, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 279
    const/4 v8, 0x3

    iput v8, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->gravity:I

    .line 280
    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/TaskMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v8, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v8}, Lcom/android/quickstep/views/TaskView;->getScaleX()F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/quickstep/views/TaskMenuView;->setScaleX(F)V

    .line 282
    iget-object v8, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v8}, Lcom/android/quickstep/views/TaskView;->getScaleY()F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/quickstep/views/TaskMenuView;->setScaleY(F)V

    .line 285
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v9, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 286
    .local v8, "divider":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x106000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/launcher3/R$dimen;->task_menu_spacing:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    .line 288
    .local v9, "dividerSpacing":I
    iget-object v10, p0, Lcom/android/quickstep/views/TaskMenuView;->mOptionLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 290
    iget-object v10, p0, Lcom/android/quickstep/views/TaskMenuView;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v3, v10, v9, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setTaskOptionsMenuLayoutOrientation(Lcom/android/launcher3/DeviceProfile;Landroid/widget/LinearLayout;ILandroid/graphics/drawable/ShapeDrawable;)V

    .line 292
    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v11

    int-to-float v6, v6

    invoke-direct {p0, v10, v6, v2}, Lcom/android/quickstep/views/TaskMenuView;->setPosition(FFI)V

    .line 293
    return-void
.end method

.method private populateAndLayoutMenu()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->addMenuOptions(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    .line 228
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->orientAroundTaskView(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method private populateAndShowForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z
    .locals 2
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 200
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    return v1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 205
    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 206
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->populateAndLayoutMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    return v1

    .line 209
    :cond_1
    new-instance v0, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/TaskMenuView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->post(Ljava/lang/Runnable;)Z

    .line 210
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/RecentsView;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method private setPosition(FFI)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "overscrollShift"    # I

    .line 136
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    .line 138
    .local v0, "pagedOrientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskInsetMargin:F

    .line 139
    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getAdditionalInsetForTaskMenu(F)Landroid/graphics/PointF;

    move-result-object v1

    .line 140
    .local v1, "additionalInset":Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 141
    .local v2, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 143
    .local v3, "taskTopMargin":I
    int-to-float v4, v3

    add-float/2addr v4, p2

    iget v5, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    .line 144
    .local v4, "adjustedY":F
    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v5

    .line 148
    .local v5, "adjustedX":F
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/TaskMenuView;->setPivotX(F)V

    .line 149
    iget-boolean v7, v2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v7, :cond_0

    .line 151
    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/TaskMenuView;->setPivotY(F)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/TaskMenuView;->setPivotY(F)V

    .line 155
    :goto_0
    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/TaskMenuView;->setRotation(F)V

    .line 156
    iget-object v6, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 157
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v6

    .line 156
    invoke-interface {v0, v5, v6, p3, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getTaskMenuX(FLandroid/view/View;ILcom/android/launcher3/DeviceProfile;)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/TaskMenuView;->setX(F)V

    .line 158
    iget-object v6, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 159
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v6

    .line 158
    invoke-interface {v0, v4, v6, p3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getTaskMenuY(FLandroid/view/View;I)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/TaskMenuView;->setY(F)V

    .line 162
    iget-object v6, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 163
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v6

    .line 164
    .local v6, "taskIdAttributeContainers":[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getStagePosition()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 165
    iget-object v7, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getStagePosition()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 166
    return-void

    .line 168
    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 169
    .local v7, "r":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v8}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/quickstep/views/TaskThumbnailView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 170
    iget-boolean v8, v2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v8, :cond_2

    .line 171
    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    invoke-virtual {p0, v8}, Lcom/android/quickstep/views/TaskMenuView;->setX(F)V

    goto :goto_1

    .line 173
    :cond_2
    iget v8, v7, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p0, v8}, Lcom/android/quickstep/views/TaskMenuView;->setY(F)V

    .line 177
    .end local v7    # "r":Landroid/graphics/Rect;
    :cond_3
    :goto_1
    return-void
.end method

.method public static showForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z
    .locals 5
    .param p0, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 192
    nop

    .line 193
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    .line 194
    .local v0, "activity":Lcom/android/launcher3/BaseDraggingActivity;
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$layout;->task_menu:I

    .line 195
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/TaskMenuView;

    .line 196
    .local v1, "taskMenuView":Lcom/android/quickstep/views/TaskMenuView;
    invoke-direct {v1, p0}, Lcom/android/quickstep/views/TaskMenuView;->populateAndShowForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    .line 126
    new-instance v0, Lcom/android/quickstep/views/TaskMenuView$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/TaskMenuView$1;-><init>(Lcom/android/quickstep/views/TaskMenuView;)V

    return-object v0
.end method

.method protected handleClose(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->animateClose()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->closeComplete()V

    .line 117
    :goto_0
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 121
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$addMenuOption$3$com-android-quickstep-views-TaskMenuView(Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V
    .locals 3
    .param p1, "menuOption"    # Lcom/android/launcher3/popup/SystemShortcut;
    .param p2, "view"    # Landroid/view/View;

    .line 249
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    .line 251
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    const/4 v1, 0x0

    new-instance v2, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/quickstep/views/TaskMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    .line 255
    .end local v0    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/launcher3/popup/SystemShortcut;->onClick(Landroid/view/View;)V

    .line 258
    :goto_0
    return-void
.end method

.method synthetic lambda$addMenuOptions$0$com-android-quickstep-views-TaskMenuView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->close(Z)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 101
    .local v0, "dl":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskMenuView;->close(Z)V

    .line 104
    return v1

    .line 107
    .end local v0    # "dl":Lcom/android/launcher3/views/BaseDragLayer;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onFinishInflate()V

    .line 93
    sget v0, Lcom/android/launcher3/R$id;->task_name:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskName:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/android/launcher3/R$id;->menu_option_layout:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOptionLayout:Landroid/widget/LinearLayout;

    .line 95
    return-void
.end method

.method public onRotationChanged()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mIsOpen:Z

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 185
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->populateAndLayoutMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->close(Z)V

    .line 189
    :cond_1
    return-void
.end method

.method public onScrollChanged()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 217
    .local v0, "rv":Lcom/android/quickstep/views/RecentsView;
    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 218
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getOverScrollShift()I

    move-result v3

    .line 217
    invoke-direct {p0, v1, v2, v3}, Lcom/android/quickstep/views/TaskMenuView;->setPosition(FFI)V

    .line 219
    return-void
.end method
