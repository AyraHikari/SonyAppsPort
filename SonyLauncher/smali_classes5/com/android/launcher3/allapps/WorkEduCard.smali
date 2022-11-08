.class public Lcom/android/launcher3/allapps/WorkEduCard;
.super Landroid/widget/FrameLayout;
.source "WorkEduCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field mDismissAnim:Landroid/view/animation/Animation;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/WorkEduCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/WorkEduCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkEduCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 54
    const v0, 0x10a0001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    .line 55
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    return-void
.end method

.method private removeCard()V
    .locals 3

    .line 96
    iget v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkEduCard;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkEduCard;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 101
    .local v0, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/sonymobile/launcher/allapps/AppsList;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 104
    .end local v0    # "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 86
    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkEduCard;->removeCard()V

    .line 87
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 93
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkEduCard;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkEduCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showed_work_profile_edu"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 69
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    sget v0, Lcom/android/launcher3/R$id;->action_btn:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkEduCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 109
    .local v0, "size":I
    sget v1, Lcom/android/launcher3/R$id;->wrapper:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/WorkEduCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkEduCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getTabWidth(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 111
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 114
    iput p1, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    .line 115
    return-void
.end method
