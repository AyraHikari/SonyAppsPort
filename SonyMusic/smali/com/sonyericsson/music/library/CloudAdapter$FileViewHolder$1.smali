.class Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder$1;
.super Ljava/lang/Object;
.source "CloudAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;

    invoke-static {p1}, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->access$300(Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;

    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder$1;->this$0:Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;

    invoke-static {v0}, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->access$400(Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;->onClick(I)V

    :cond_0
    return-void
.end method
