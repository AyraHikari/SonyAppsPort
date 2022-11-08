.class public Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;
.super Lcom/android/launcher3/ExtendedEditText;
.source "AppsSearchContainerLayout.java"

# interfaces
.implements Lcom/android/launcher3/allapps/SearchUiManager;
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/ExtendedEditText;",
        "Lcom/android/launcher3/allapps/SearchUiManager;",
        "Lcom/android/launcher3/search/SearchCallback<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        ">;",
        "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# instance fields
.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field

.field private final mContentOverlap:I

.field private final mLauncher:Lcom/android/launcher3/views/ActivityContext;

.field private final mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

.field private final mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    .line 76
    new-instance v0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    .line 78
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 79
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$drawable;->ic_allapps_search:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->prefixTextWithIcon(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 82
    nop

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_search_bar_content_overlap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mContentOverlap:I

    .line 84
    return-void
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onClearSearchResult()V

    .line 184
    return-void
.end method

.method public getEditText()Lcom/android/launcher3/ExtendedEditText;
    .locals 0

    .line 195
    return-object p0
.end method

.method public initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation

    .line 132
    .local p1, "appsView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    new-instance v1, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    .line 133
    invoke-virtual {v0, v1, p0, v2, p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/search/SearchAlgorithm;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/search/SearchCallback;)V

    .line 136
    return-void
.end method

.method public onAppsUpdated()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    .line 141
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/android/launcher3/ExtendedEditText;->onAttachedToWindow()V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 90
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/android/launcher3/ExtendedEditText;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 96
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 117
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/ExtendedEditText;->onLayout(ZIIII)V

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 121
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 122
    .local v1, "availableWidth":I
    sub-int v2, p4, p2

    .line 123
    .local v2, "myWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 124
    .local v3, "expectedLeft":I
    sub-int v4, v3, p2

    .line 125
    .local v4, "shift":I
    int-to-float v5, v4

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->setTranslationX(F)V

    .line 127
    iget v5, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mContentOverlap:I

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->offsetTopAndBottom(I)V

    .line 128
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 102
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    .local v1, "myRequestedWidth":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 104
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 106
    .local v2, "rowWidth":I
    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v3

    .line 108
    .local v3, "cellWidth":I
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v4, v4

    const v5, 0x3f6b851f    # 0.92f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 109
    .local v4, "iconVisibleSize":I
    sub-int v5, v3, v4

    .line 111
    .local v5, "iconPadding":I
    sub-int v6, v2, v5

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 112
    .local v6, "myWidth":I
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Lcom/android/launcher3/ExtendedEditText;->onMeasure(II)V

    .line 113
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    if-eqz p2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 155
    .local v0, "unicodeChar":I
    if-lez v0, :cond_0

    .line 156
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 157
    .local v1, "isKeyNotWhitespace":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 158
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 159
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 158
    invoke-virtual {v2, p0, v3, v4, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 160
    .local v2, "gotKey":Z
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 161
    iget-object v3, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->focusSearchField()V

    .line 165
    .end local v0    # "unicodeChar":I
    .end local v1    # "isKeyNotWhitespace":Z
    .end local v2    # "gotKey":Z
    :cond_1
    return-void
.end method

.method public resetSearch()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->reset()V

    .line 146
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->requestLayout()V

    .line 191
    return-void
.end method
