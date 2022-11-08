.class Lcom/android/launcher3/widget/picker/WidgetsListAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "WidgetsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    .line 144
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    .line 153
    .local v0, "position":I
    sget v1, Lcom/android/launcher3/R$id;->tag_widget_entry:I

    .line 154
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry$Header;

    .line 155
    .local v1, "isHeader":Z
    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-static {v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->-$$Nest$fgetmSpacingBetweenEntries(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 156
    return-void
.end method
