.class public final Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WidgetsRowViewHolder.java"


# instance fields
.field public final previewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/model/WidgetItem;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 36
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    .line 38
    sget v0, Lcom/android/launcher3/R$id;->widgets_table:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    .line 39
    return-void
.end method
