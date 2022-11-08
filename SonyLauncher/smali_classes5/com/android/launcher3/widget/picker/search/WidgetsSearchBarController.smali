.class public Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;
.super Ljava/lang/Object;
.source "WidgetsSearchBarController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/text/TextWatcher;",
        "Lcom/android/launcher3/search/SearchCallback<",
        "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
        ">;",
        "Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;",
        "Landroid/view/View$OnKeyListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsSearchBarController"


# instance fields
.field protected mCancelButton:Landroid/widget/ImageButton;

.field protected mInput:Lcom/android/launcher3/ExtendedEditText;

.field protected mQuery:Ljava/lang/String;

.field protected mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchModeListener:Lcom/android/launcher3/widget/picker/search/SearchModeListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/search/SearchAlgorithm;Lcom/android/launcher3/ExtendedEditText;Landroid/widget/ImageButton;Lcom/android/launcher3/widget/picker/search/SearchModeListener;)V
    .locals 1
    .param p2, "editText"    # Lcom/android/launcher3/ExtendedEditText;
    .param p3, "cancelButton"    # Landroid/widget/ImageButton;
    .param p4, "searchModeListener"    # Lcom/android/launcher3/widget/picker/search/SearchModeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;",
            "Lcom/android/launcher3/ExtendedEditText;",
            "Landroid/widget/ImageButton;",
            "Lcom/android/launcher3/widget/picker/search/SearchModeListener;",
            ")V"
        }
    .end annotation

    .line 53
    .local p1, "algo":Lcom/android/launcher3/search/SearchAlgorithm;, "Lcom/android/launcher3/search/SearchAlgorithm<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    .line 55
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    .line 56
    invoke-virtual {p2, p0}, Lcom/android/launcher3/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    iput-object p3, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mCancelButton:Landroid/widget/ImageButton;

    .line 60
    new-instance v0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iput-object p4, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/android/launcher3/widget/picker/search/SearchModeListener;

    .line 62
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mQuery:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/android/launcher3/widget/picker/search/SearchModeListener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/SearchModeListener;->exitSearchMode()V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mCancelButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/android/launcher3/widget/picker/search/SearchModeListener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/SearchModeListener;->enterSearchMode()V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Lcom/android/launcher3/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 77
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 82
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->clearFocus()V

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    .line 131
    return-void
.end method

.method public clearSearchResult()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method synthetic lambda$new$0$com-android-launcher3-widget-picker-search-WidgetsSearchBarController(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->clearSearchResult()V

    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->clearFocus()V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    invoke-interface {v0}, Lcom/android/launcher3/search/SearchAlgorithm;->destroy()V

    .line 108
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 118
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->clearFocus()V

    .line 120
    return v1

    .line 122
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/android/launcher3/widget/picker/search/SearchModeListener;

    invoke-interface {v0, p2}, Lcom/android/launcher3/widget/picker/search/SearchModeListener;->onSearchResults(Ljava/util/List;)V

    .line 95
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 87
    return-void
.end method
