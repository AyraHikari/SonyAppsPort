.class public Lcom/android/launcher3/widget/picker/WidgetsListTableView;
.super Landroid/widget/TableLayout;
.source "WidgetsListTableView.java"


# instance fields
.field private mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TableLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    array-length v0, v0

    add-int/2addr v0, p1

    .line 55
    invoke-super {p0, v0}, Landroid/widget/TableLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 56
    .local v0, "drawableState":[I
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->mergeDrawableStates([I[I)[I

    .line 57
    return-object v0
.end method

.method public setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    if-ne p1, v0, :cond_0

    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->refreshDrawableState()V

    .line 47
    return-void
.end method
