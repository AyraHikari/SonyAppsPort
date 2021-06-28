.class Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder$1;
.super Ljava/lang/Object;
.source "StoreAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder$1;->this$0:Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 269
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder$1;->this$0:Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;

    invoke-static {p1}, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->access$200(Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/StoreAdapter;

    if-eqz p1, :cond_1

    .line 271
    invoke-static {p1}, Lcom/sonyericsson/music/library/store/StoreAdapter;->access$100(Lcom/sonyericsson/music/library/store/StoreAdapter;)I

    move-result p2

    if-eq p3, p2, :cond_0

    const/4 p2, 0x2

    .line 273
    invoke-virtual {p1}, Lcom/sonyericsson/music/library/store/StoreAdapter;->getItemCount()I

    move-result p4

    .line 272
    invoke-virtual {p1, p2, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    const/4 p2, 0x0

    .line 274
    invoke-static {p1, p2}, Lcom/sonyericsson/music/library/store/StoreAdapter;->access$302(Lcom/sonyericsson/music/library/store/StoreAdapter;Lcom/sonyericsson/music/library/store/StoreResponse;)Lcom/sonyericsson/music/library/store/StoreResponse;

    .line 275
    invoke-static {p1}, Lcom/sonyericsson/music/library/store/StoreAdapter;->access$500(Lcom/sonyericsson/music/library/store/StoreAdapter;)Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;

    move-result-object p2

    iget-object p4, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder$1;->this$0:Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;

    .line 276
    invoke-static {p4}, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->access$400(Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;->onStorePageContentChanged(ILjava/util/List;)V

    .line 278
    :cond_0
    invoke-static {p1, p3}, Lcom/sonyericsson/music/library/store/StoreAdapter;->access$102(Lcom/sonyericsson/music/library/store/StoreAdapter;I)I

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
