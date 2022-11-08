.class public Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "PersonalWorkSlidingTabStrip.java"

# interfaces
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
    }
.end annotation


# instance fields
.field private mLastActivePage:I

.field private mOnActivePageChangedListener:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    .line 39
    return-void
.end method

.method public static getTabWidth(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "totalWidth"    # I

    .line 92
    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 93
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    div-int v1, p1, v1

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    sub-int/2addr v1, v2

    .line 94
    .local v1, "iconPadding":I
    sub-int v2, p1, v1

    return v2
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getPaddingRight()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 82
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getTabWidth(Landroid/content/Context;I)I

    move-result v0

    .line 83
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 85
    .end local v0    # "size":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 86
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 2
    .param p1, "activePage"    # I

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->updateTabTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mOnActivePageChangedListener:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    if-eq v1, p1, :cond_0

    .line 59
    invoke-interface {v0, p1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;->onActivePageChanged(I)V

    .line 61
    :cond_0
    iput p1, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    .line 62
    return-void
.end method

.method public setMarkersCount(I)V
    .locals 0
    .param p1, "numMarkers"    # I

    .line 70
    return-void
.end method

.method public setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mOnActivePageChangedListener:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

    .line 66
    return-void
.end method

.method public setScroll(II)V
    .locals 0
    .param p1, "currentScroll"    # I
    .param p2, "totalScroll"    # I

    .line 53
    return-void
.end method

.method public updateTabTextColor(I)V
    .locals 3
    .param p1, "pos"    # I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 47
    .local v1, "tab":Landroid/widget/Button;
    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 45
    .end local v1    # "tab":Landroid/widget/Button;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
