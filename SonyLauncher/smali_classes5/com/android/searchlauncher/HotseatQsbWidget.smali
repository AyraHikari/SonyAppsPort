.class public Lcom/android/searchlauncher/HotseatQsbWidget;
.super Lcom/android/launcher3/qsb/QsbContainerView;
.source "HotseatQsbWidget.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/allapps/SearchUiManager;
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/searchlauncher/HotseatQsbWidget$HotseatQsbFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/qsb/QsbContainerView;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/allapps/SearchUiManager;",
        "Lcom/android/launcher3/search/SearchCallback<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        ">;",
        "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field private mFallbackSearchView:Lcom/android/launcher3/ExtendedEditText;

.field private final mFixedTranslationY:I

.field private final mMarginTopAdjusting:I

.field private final mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

.field private final mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSearchWrapperView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/searchlauncher/HotseatQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/searchlauncher/HotseatQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/qsb/QsbContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 85
    nop

    .line 86
    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->search_widget_hotseat_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFixedTranslationY:I

    .line 87
    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->search_widget_top_shift:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mMarginTopAdjusting:I

    .line 89
    new-instance v0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    .line 91
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 92
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    .line 195
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 196
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 197
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 198
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onClearSearchResult()V

    .line 200
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchMode(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->restoreSortMode()V

    .line 202
    return-void
.end method

.method public getEditText()Lcom/android/launcher3/ExtendedEditText;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFallbackSearchView:Lcom/android/launcher3/ExtendedEditText;

    return-object v0
.end method

.method public getScrollRangeDelta(Landroid/graphics/Rect;)F
    .locals 7
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 205
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 211
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    const v1, 0x3ee66666    # 0.45f

    .line 212
    .local v1, "percentageOfAvailSpaceFromBottom":F
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v2, v3

    .line 213
    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 214
    .local v2, "center":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    .line 215
    .local v3, "bottomMargin":I
    iget v4, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFixedTranslationY:I

    neg-int v4, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mMarginTopAdjusting:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 216
    .local v4, "topMargin":I
    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFixedTranslationY:I

    add-int/2addr v5, v6

    .line 217
    .local v5, "myBot":I
    add-int v6, v3, v5

    int-to-float v6, v6

    return v6
.end method

.method public initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 4
    .param p1, "appsView"    # Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 144
    iput-object p1, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 145
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    new-instance v1, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFallbackSearchView:Lcom/android/launcher3/ExtendedEditText;

    iget-object v3, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 146
    invoke-static {v3}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    .line 145
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/search/SearchAlgorithm;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/search/SearchCallback;)V

    .line 147
    return-void
.end method

.method public onAppsUpdated()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    .line 152
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->onAttachedToWindow()V

    .line 115
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->onDetachedFromWindow()V

    .line 123
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 97
    invoke-super {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->onFinishInflate()V

    .line 99
    sget v0, Lcom/android/launcher3/R$id;->fallback_search_view:I

    invoke-virtual {p0, v0}, Lcom/android/searchlauncher/HotseatQsbWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ExtendedEditText;

    iput-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFallbackSearchView:Lcom/android/launcher3/ExtendedEditText;

    .line 100
    sget v0, Lcom/android/launcher3/R$id;->search_wrapper_view:I

    invoke-virtual {p0, v0}, Lcom/android/searchlauncher/HotseatQsbWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchWrapperView:Landroid/view/View;

    .line 106
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFallbackSearchView:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v2}, Lcom/android/launcher3/ExtendedEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    .local v0, "spanned":Landroid/text/SpannableString;
    new-instance v1, Lcom/android/launcher3/graphics/TintedDrawableSpan;

    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$drawable;->ic_allapps_search:I

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/graphics/TintedDrawableSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 109
    iget-object v1, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFallbackSearchView:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 223
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/qsb/QsbContainerView;->onLayout(ZIIII)V

    .line 224
    iget v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFixedTranslationY:I

    invoke-virtual {p0, v0}, Lcom/android/searchlauncher/HotseatQsbWidget;->offsetTopAndBottom(I)V

    .line 225
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
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

    .line 180
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchMode(Z)V

    .line 183
    :cond_0
    if-eqz p2, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setSortMode(Lcom/sonymobile/launcher/allapps/SortMode;)Z

    .line 185
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    .line 186
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    .line 188
    :cond_1
    return-void
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 163
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 166
    .local v0, "unicodeChar":I
    if-lez v0, :cond_0

    .line 167
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

    .line 168
    .local v1, "isKeyNotWhitespace":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 169
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 170
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 169
    invoke-virtual {v2, p0, v3, v4, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 171
    .local v2, "gotKey":Z
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->focusSearchField()V

    .line 176
    .end local v0    # "unicodeChar":I
    .end local v1    # "isKeyNotWhitespace":Z
    .end local v2    # "gotKey":Z
    :cond_1
    return-void
.end method

.method public resetSearch()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->reset()V

    .line 157
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 130
    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$bool;->hide_qsb_in_vertical_bar_layout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/searchlauncher/HotseatQsbWidget;->setVisibility(I)V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mFixedTranslationY:I

    neg-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mMarginTopAdjusting:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 136
    iget-object v2, p0, Lcom/android/searchlauncher/HotseatQsbWidget;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    .line 137
    .local v2, "padding":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3, v1, v4, v1}, Lcom/android/searchlauncher/HotseatQsbWidget;->setPaddingUnchecked(IIII)V

    .line 139
    invoke-virtual {p0}, Lcom/android/searchlauncher/HotseatQsbWidget;->requestLayout()V

    .line 140
    return-void
.end method
