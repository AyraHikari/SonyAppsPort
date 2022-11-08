.class public final Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;
.super Ljava/lang/Object;
.source "WidgetsListTableViewHolderBinder.java"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/recyclerview/ViewHolderBinder<",
        "Lcom/android/launcher3/widget/model/WidgetsListContentEntry;",
        "Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsListRowViewHolderBinder"


# instance fields
.field private final mIconClickListener:Landroid/view/View$OnClickListener;

.field private final mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mListDrawableFactory:Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "iconClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "iconLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "listDrawableFactory"    # Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 62
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 63
    iput-object p3, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 64
    iput-object p4, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mListDrawableFactory:Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

    .line 65
    return-void
.end method

.method static synthetic lambda$bindViewHolder$0(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "holder"    # Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    .param p1, "widgetItem"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->getBindingAdapterPosition()I

    move-result v1

    .line 117
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method

.method private recycleTableBeforeBinding(Landroid/widget/TableLayout;Ljava/util/List;)V
    .locals 9
    .param p1, "table"    # Landroid/widget/TableLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;)V"
        }
    .end annotation

    .line 134
    .local p2, "widgetItemsTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/16 v2, 0x8

    if-ge v0, v1, :cond_0

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 139
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 141
    .local v1, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .local v3, "tableRow":Landroid/widget/TableRow;
    goto :goto_2

    .line 144
    .end local v3    # "tableRow":Landroid/widget/TableRow;
    :cond_1
    new-instance v3, Landroid/widget/TableRow;

    invoke-virtual {p1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 145
    .restart local v3    # "tableRow":Landroid/widget/TableRow;
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setGravity(I)V

    .line 146
    invoke-virtual {p1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 148
    :goto_2
    invoke-virtual {v3}, Landroid/widget/TableRow;->getChildCount()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 149
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "j":I
    :goto_3
    invoke-virtual {v3}, Landroid/widget/TableRow;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 150
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v4    # "j":I
    :cond_2
    goto :goto_5

    .line 153
    :cond_3
    invoke-virtual {v3}, Landroid/widget/TableRow;->getChildCount()I

    move-result v4

    .restart local v4    # "j":I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 154
    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/android/launcher3/R$layout;->widget_cell:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/widget/WidgetCell;

    .line 157
    .local v5, "widget":Lcom/android/launcher3/widget/WidgetCell;
    sget v6, Lcom/android/launcher3/R$id;->widget_preview_container:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 158
    .local v6, "preview":Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v8, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 160
    invoke-virtual {v5, v7}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview(Z)V

    .line 161
    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 153
    .end local v5    # "widget":Lcom/android/launcher3/widget/WidgetCell;
    .end local v6    # "preview":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 138
    .end local v1    # "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v3    # "tableRow":Landroid/widget/TableRow;
    .end local v4    # "j":I
    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V
    .locals 11
    .param p1, "holder"    # Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    .param p2, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;",
            "Lcom/android/launcher3/widget/model/WidgetsListContentEntry;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, "payload":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Landroid/util/Pair;

    .line 86
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;>;"
    iget-object v3, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/model/WidgetItem;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v1    # "payload":Ljava/lang/Object;
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;>;"
    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    .line 94
    .local v0, "table":Lcom/android/launcher3/widget/picker/WidgetsListTableView;
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->LAST:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->MIDDLE:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V

    .line 95
    iget-object v1, p2, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    .line 97
    invoke-virtual {p2}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->getMaxSpanSizeInCells()I

    move-result v2

    .line 96
    invoke-static {v1, v2}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsIntoTableWithReordering(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, "widgetItemsTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->recycleTableBeforeBinding(Landroid/widget/TableLayout;Ljava/util/List;)V

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 103
    .local v3, "widgetItemsPerRow":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 104
    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow;

    .line 105
    .local v5, "row":Landroid/widget/TableRow;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 106
    invoke-virtual {v5, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/widget/WidgetCell;

    .line 107
    .local v7, "widget":Lcom/android/launcher3/widget/WidgetCell;
    invoke-virtual {v7}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    .line 108
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/WidgetItem;

    .line 109
    .local v8, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    invoke-virtual {v7, v6}, Lcom/android/launcher3/widget/WidgetCell;->setVisibility(I)V

    .line 112
    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v9, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder$$ExternalSyntheticLambda0;

    invoke-direct {v9, p1, v8}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;)V

    iget-object v10, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    .line 119
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    .line 103
    .end local v5    # "row":Landroid/widget/TableRow;
    .end local v7    # "widget":Lcom/android/launcher3/widget/WidgetCell;
    .end local v8    # "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 101
    .end local v3    # "widgetItemsPerRow":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 73
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/launcher3/R$layout;->widgets_table_container:I

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    .local v0, "viewHolder":Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    iget-object v1, v0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mListDrawableFactory:Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

    .line 77
    invoke-virtual {v2}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createContentBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-object v0
.end method

.method public bridge synthetic unbindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->unbindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;)V

    return-void
.end method

.method public unbindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;)V
    .locals 6
    .param p1, "holder"    # Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    .line 169
    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->getChildCount()I

    move-result v0

    .line 170
    .local v0, "numOfRows":I
    iget-object v1, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 172
    iget-object v2, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 173
    .local v2, "tableRow":Landroid/widget/TableRow;
    invoke-virtual {v2}, Landroid/widget/TableRow;->getChildCount()I

    move-result v3

    .line 174
    .local v3, "numOfCols":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 175
    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/widget/WidgetCell;

    .line 176
    .local v5, "widget":Lcom/android/launcher3/widget/WidgetCell;
    invoke-virtual {v5}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    .line 174
    .end local v5    # "widget":Lcom/android/launcher3/widget/WidgetCell;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    .end local v2    # "tableRow":Landroid/widget/TableRow;
    .end local v3    # "numOfCols":I
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
