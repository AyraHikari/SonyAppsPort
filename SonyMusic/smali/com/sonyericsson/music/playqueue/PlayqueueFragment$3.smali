.class Lcom/sonyericsson/music/playqueue/PlayqueueFragment$3;
.super Ljava/lang/Object;
.source "PlayqueueFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->restoreListState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playqueue/PlayqueueFragment;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$3;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$3;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    iget-object v1, v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListViewState:Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->access$000(Lcom/sonyericsson/music/playqueue/PlayqueueFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$3;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->access$000(Lcom/sonyericsson/music/playqueue/PlayqueueFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$3;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    iget-object v1, v1, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$3;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mListViewState:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method
