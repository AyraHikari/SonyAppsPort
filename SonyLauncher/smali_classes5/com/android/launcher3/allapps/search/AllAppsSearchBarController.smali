.class public Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;
.super Ljava/lang/Object;
.source "AllAppsSearchBarController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field protected mCallback:Lcom/android/launcher3/search/SearchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/search/SearchCallback<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mInput:Lcom/android/launcher3/ExtendedEditText;

.field protected mLauncher:Lcom/android/launcher3/views/ActivityContext;

.field protected mQuery:Ljava/lang/String;

.field protected mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTextConversions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractTextConversions(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 92
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 93
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 94
    .local v0, "spanned":Landroid/text/SpannableStringBuilder;
    nop

    .line 95
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/SuggestionSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 96
    .local v1, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 97
    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 98
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 101
    .end local v0    # "spanned":Landroid/text/SpannableStringBuilder;
    .end local v1    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "tempQuery":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {v1}, Lcom/android/launcher3/search/SearchCallback;->clearSearchResult()V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mTextConversions:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/launcher3/search/SearchAlgorithm;->doSearch(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    .line 122
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 84
    return-void
.end method

.method public focusSearchField()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard()V

    .line 179
    return-void
.end method

.method public final initialize(Lcom/android/launcher3/search/SearchAlgorithm;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 1
    .param p2, "input"    # Lcom/android/launcher3/ExtendedEditText;
    .param p3, "launcher"    # Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Lcom/android/launcher3/ExtendedEditText;",
            "Lcom/android/launcher3/views/ActivityContext;",
            "Lcom/android/launcher3/search/SearchCallback<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "searchAlgorithm":Lcom/android/launcher3/search/SearchAlgorithm;, "Lcom/android/launcher3/search/SearchAlgorithm<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    .local p4, "callback":Lcom/android/launcher3/search/SearchCallback;, "Lcom/android/launcher3/search/SearchCallback<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iput-object p4, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    .line 71
    iput-object p3, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    .line 73
    iput-object p2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    .line 74
    invoke-virtual {p2, p0}, Lcom/android/launcher3/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    .line 79
    return-void
.end method

.method public isSearchFieldFocused()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->isFocused()Z

    move-result v0

    return v0
.end method

.method public onBackKey()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->reset()V

    .line 153
    const/4 v1, 0x1

    return v1

    .line 155
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 136
    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 138
    if-ne p2, v0, :cond_2

    .line 139
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_QUICK_SEARCH_WITH_IME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    .line 140
    :cond_2
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_FOCUSED_ITEM_SELECTED_WITH_IME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 138
    :goto_1
    invoke-interface {v1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->launchHighlightedItem()Z

    move-result v0

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 160
    if-nez p2, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    .line 163
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 88
    invoke-static {p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->extractTextConversions(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mTextConversions:[Ljava/lang/String;

    .line 89
    return-void
.end method

.method public refreshSearchResult()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    .line 131
    return-void
.end method

.method public reset()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {v0}, Lcom/android/launcher3/search/SearchCallback;->clearSearchResult()V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->reset()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ExtendedEditText;->setVisibility(I)V

    .line 62
    return-void
.end method
