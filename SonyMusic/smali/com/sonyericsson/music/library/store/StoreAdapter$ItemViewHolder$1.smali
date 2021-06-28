.class Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "StoreAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder$1;->this$0:Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 333
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder$1;->this$0:Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;

    invoke-static {p1}, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->access$600(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;

    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder$1;->this$0:Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->access$700(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;)I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder$1;->this$0:Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;

    invoke-static {v1}, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->access$800(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;)Lcom/sonyericsson/music/library/store/StoreResponse;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;->onStoreItemClicked(ILcom/sonyericsson/music/library/store/StoreResponse;)V

    :cond_0
    return-void
.end method
