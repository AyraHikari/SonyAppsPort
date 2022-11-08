.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .line 79
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 81
    return-void
.end method

.method private getRowsNotForAccessibility(I)I
    .locals 5
    .param p1, "adapterPosition"    # I

    .line 130
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "extraRows":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 133
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_1
    return v1
.end method


# virtual methods
.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 101
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    .line 102
    invoke-interface {v1}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 101
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 85
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 89
    nop

    .line 90
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 91
    .local v0, "record":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v1}, Lcom/sonymobile/launcher/allapps/AppsList;->getNumFilteredApps()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 92
    nop

    .line 93
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getFromIndex()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getFromIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 92
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 94
    nop

    .line 95
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 94
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 96
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 108
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 110
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getCollectionItemInfo()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    .line 112
    .local v1, "cic":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    instance-of v2, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 116
    .local v2, "glp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    nop

    .line 117
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowIndex()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v4

    sub-int v5, v3, v4

    .line 118
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowSpan()I

    move-result v6

    .line 119
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnIndex()I

    move-result v7

    .line 120
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnSpan()I

    move-result v8

    .line 121
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->isHeading()Z

    move-result v9

    .line 122
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->isSelected()Z

    move-result v10

    .line 116
    invoke-static/range {v5 .. v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 123
    return-void

    .line 113
    .end local v2    # "glp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    :cond_1
    :goto_0
    return-void
.end method
