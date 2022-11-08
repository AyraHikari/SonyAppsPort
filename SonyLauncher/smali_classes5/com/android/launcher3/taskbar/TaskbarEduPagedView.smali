.class public Lcom/android/launcher3/taskbar/TaskbarEduPagedView;
.super Lcom/android/launcher3/PagedView;
.source "TaskbarEduPagedView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/PagedView<",
        "Lcom/android/launcher3/pageindicators/PageIndicatorDots;",
        ">;"
    }
.end annotation


# instance fields
.field private mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

.field private mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->setImportantForAccessibility(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected canScroll(FF)Z
    .locals 2
    .param p1, "absVScroll"    # F
    .param p2, "absHScroll"    # F

    .line 75
    nop

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 75
    const v1, 0x6ffff

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getChildGap(II)I
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 3
    .param p1, "prevPage"    # I

    .line 69
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->getPageCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->onPageChanged(II)V

    .line 71
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 62
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->mMaxScroll:I

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->mMaxScroll:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setScroll(II)V

    .line 65
    :cond_0
    return-void
.end method

.method setControllerCallbacks(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;)V
    .locals 2
    .param p1, "controllerCallbacks"    # Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->getPageCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->onPageChanged(II)V

    .line 52
    return-void
.end method

.method setTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduView;)V
    .locals 1
    .param p1, "taskbarEduView"    # Lcom/android/launcher3/taskbar/TaskbarEduView;

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    .line 45
    sget v0, Lcom/android/launcher3/R$id;->content_page_indicator:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->mPageIndicator:Landroid/view/View;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->initParentViews(Landroid/view/View;)V

    .line 47
    return-void
.end method
